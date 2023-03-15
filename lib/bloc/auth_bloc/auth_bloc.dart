import 'package:animated_app/data/repositories/users_repository.dart';
import 'package:dio/dio.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../data/models/user/user.dart';
import '../../data/repositories/auth_repository.dart';

part 'auth_bloc.freezed.dart';
part 'auth_event.dart';
part 'auth_state.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final AuthRepository authRepository;
  final UsersRepository usersRepository;
  AuthBloc({
    required this.authRepository,
    required this.usersRepository,
  }) : super(const AuthState.initial()) {
    on<AuthAuthorizeEvent>(_auth);
    on<AuthIsAuthorizedEvent>(_isAuthorized);
    on<AuthLogoutEvent>(_logout);
  }
  Future _auth(AuthAuthorizeEvent event, Emitter<AuthState> emit) async {
    try {
      emit(const AuthState.loading());
      bool isAuthorized = await authRepository.isAuthorized();
      if (isAuthorized) {
        final Profile user = await usersRepository.getCurrentUser();
        emit(
          AuthState.authorized(
            user: user,
          ),
        );
      } else {
        await authRepository.auth();
        isAuthorized = await authRepository.isAuthorized();
        if (isAuthorized) {
          final Profile user = await usersRepository.getCurrentUser();
          emit(
            AuthState.authorized(
              user: user,
            ),
          );
        } else {
          emit(
            const AuthState.notAuthorized(),
          );
        }
      }
    } on DioError catch (e) {
      if (e.response?.statusCode != null) {
        emit(
          AuthState.notAuthorized(
              message:
                  e.message ?? 'Something went wrong during authorization...'),
        );
      }
    } catch (e) {
      emit(
        AuthState.error(
          message: e.toString(),
        ),
      );
    }
  }

  Future _logout(AuthLogoutEvent event, Emitter<AuthState> emit) async {
    try {
      emit(const AuthState.loading());
      await authRepository.logout();
      emit(
        const AuthState.notAuthorized(),
      );
    } catch (e) {
      emit(
        AuthState.error(
          message: e.toString(),
        ),
      );
    }
  }

  Future _isAuthorized(
      AuthIsAuthorizedEvent event, Emitter<AuthState> emit) async {
    try {
      emit(const AuthState.loading());
      final bool isAuthorized = await authRepository.isAuthorized();
      if (isAuthorized) {
        final Profile user = await usersRepository.getCurrentUser();
        emit(
          AuthState.authorized(
            user: user,
          ),
        );
      } else {
        emit(
          const AuthState.notAuthorized(),
        );
      }
    } catch (e) {
      emit(
        AuthState.error(
          message: e.toString(),
        ),
      );
    }
  }
}
