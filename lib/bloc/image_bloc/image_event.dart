part of 'image_bloc.dart';

@freezed
class ImageEvent with _$ImageEvent {
  const factory ImageEvent.getOneImage({required String id}) =
      ImageGetOneImageEvent;
  const factory ImageEvent.likeImage({required UnsplashImage image}) =
      ImageLikeImageEvent;
  const factory ImageEvent.unlikeImage({required UnsplashImage image}) =
      ImageUnlikeImageEvent;
}
