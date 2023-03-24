part of 'liked_images_bloc.dart';

@freezed
class LikedImagesState with _$LikedImagesState {
  const factory LikedImagesState.initial() = _LikedImagesInitialState;
  const factory LikedImagesState.loading() = _LikedImagesLoadingState;
  const factory LikedImagesState.loaded({
    required List<UnsplashImage> images,
  }) = _LikedImagesLoadedState;
  const factory LikedImagesState.error({required String message}) =
      _LikedImagesErrorState;
}
