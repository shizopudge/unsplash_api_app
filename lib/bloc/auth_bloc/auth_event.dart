part of 'auth_bloc.dart';

@freezed
class AuthEvent with _$AuthEvent {
  const factory AuthEvent.authorize() = AuthAuthorizeEvent;
  const factory AuthEvent.logout() = AuthLogoutEvent;
  const factory AuthEvent.isAuthorized() = AuthIsAuthorizedEvent;
}
