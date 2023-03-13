part of 'images_bloc.dart';

@freezed
class ImagesState with _$ImagesState {
  const factory ImagesState.initial() = _ImagesInitialState;
  const factory ImagesState.loading() = _ImagesLoadingState;
  const factory ImagesState.loaded({
    required List<UnsplashImage> images,
    int? total,
    int? total_pages,
  }) = _ImagesLoadedState;
  const factory ImagesState.error({required String message}) =
      _ImagesErrorState;
}
