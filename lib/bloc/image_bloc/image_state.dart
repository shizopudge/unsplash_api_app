part of 'image_bloc.dart';

@freezed
class ImageState with _$ImageState {
  const factory ImageState.initial() = _ImageInitialState;
  const factory ImageState.loading() = _ImageLoadingState;
  const factory ImageState.loaded({required UnsplashImage image}) =
      _ImagesLoadedState;
  const factory ImageState.error({required String message}) = _ImageErrorState;
}
