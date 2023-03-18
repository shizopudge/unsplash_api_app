part of 'liked_images_bloc.dart';

@freezed
class LikedImagesEvent with _$LikedImagesEvent {
  const factory LikedImagesEvent.getLikedImages({
    required int page,
    required String username,
  }) = LikedImagesGetLikedImagesEvent;
}
