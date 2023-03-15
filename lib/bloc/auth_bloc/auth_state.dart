part of 'auth_bloc.dart';

@freezed
class AuthState with _$AuthState {
  const factory AuthState.initial() = AuthInitialState;
  const factory AuthState.loading() = AuthLoadingState;
  const factory AuthState.authorized({required Profile user}) =
      AuthAuthorizedState;
  const factory AuthState.notAuthorized({String? message}) =
      AuthNotAuthorizedState;
  const factory AuthState.error({required String message}) = AuthErrorState;
}
