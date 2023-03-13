part of 'user_bloc.dart';

@freezed
class UserState with _$UserState {
  const factory UserState.initial() = _UserInitialState;
  const factory UserState.loading() = _UserLoadingState;
  const factory UserState.loaded({
    required Profile user,
  }) = _UserLoadedState;
  const factory UserState.error({required String message}) = _UserErrorState;
}
