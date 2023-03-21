part of 'liked_images_bloc.dart';

@freezed
class LikedImagesEvent with _$LikedImagesEvent {
  const factory LikedImagesEvent.getLikedImages({
    required int page,
    required String username,
  }) = LikedImagesGetLikedImagesEvent;
  const factory LikedImagesEvent.likeImage(
      {required String imageId,
      required List<UnsplashImage> images}) = LikedImagesLikeImageEvent;
  const factory LikedImagesEvent.unlikeImage(
      {required String imageId,
      required List<UnsplashImage> images}) = LikedImagesUnlikeImageEvent;
}
