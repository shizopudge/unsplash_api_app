part of 'images_bloc.dart';

@freezed
class ImagesEvent with _$ImagesEvent {
  const factory ImagesEvent.getImages({
    required int page,
  }) = ImagesGetImagesEvent;
  const factory ImagesEvent.searchImages(
      {required String query, required int page}) = ImagesSearchImagesEvent;
}
