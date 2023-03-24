part of 'user_bloc.dart';

@freezed
class UserState with _$UserState {
  const factory UserState.initial() = _UserInitialState;
  const factory UserState.loading() = _UserLoadingState;
  const factory UserState.loaded({
    required Profile user,
    required List<UnsplashImage> likedImages,
    required List<Collection> collections,
    required List<CoverImage> uploadedImages,
  }) = _UserLoadedState;
  const factory UserState.error({required String message}) = _UserErrorState;
}
