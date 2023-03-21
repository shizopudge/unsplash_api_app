part of 'images_bloc.dart';

@freezed
class ImagesEvent with _$ImagesEvent {
  const factory ImagesEvent.getImages({
    required int page,
  }) = ImagesGetImagesEvent;
  const factory ImagesEvent.searchImages(
      {required String query, required int page}) = ImagesSearchImagesEvent;
  const factory ImagesEvent.likeImage(
      {required String imageId,
      required List<UnsplashImage> images}) = ImagesLikeImageEvent;
  const factory ImagesEvent.unlikeImage(
      {required String imageId,
      required List<UnsplashImage> images}) = ImagesUnlikeImageEvent;
}
