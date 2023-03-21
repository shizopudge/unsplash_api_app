import 'package:animated_app/data/repositories/users_repository.dart';
import 'package:dio/dio.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../core/utils.dart';
import '../../data/models/user/user.dart';

part 'user_bloc.freezed.dart';
part 'user_event.dart';
part 'user_state.dart';

class UserBloc extends Bloc<UserEvent, UserState> {
  final UsersRepository usersRepository;
  UserBloc({required this.usersRepository}) : super(const UserState.initial()) {
    on<UserGetUserEvent>(_getUser);
  }

  Future _getUser(UserGetUserEvent event, Emitter<UserState> emit) async {
    try {
      emit(
        const UserState.loading(),
      );
      final Profile user =
          await usersRepository.getUser(username: event.username);
      emit(
        UserState.loaded(
          user: user,
        ),
      );
    } on DioError catch (e) {
      final String errorMessage =
          AppUtils().errorIdentifier(e.response?.statusCode ?? 0);
      emit(
        UserState.error(
          message: errorMessage,
        ),
      );
    } catch (e) {
      emit(
        UserState.error(
          message: e.toString(),
        ),
      );
    }
  }
}
