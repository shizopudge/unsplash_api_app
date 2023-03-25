import 'package:animated_app/data/repositories/images_repository.dart';
import 'package:dio/dio.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../core/utils.dart';
import '../../data/models/unsplash_image/unsplash_image.dart';

part 'liked_images_state.dart';

part 'liked_images_event.dart';

part 'liked_images_bloc.freezed.dart';

class LikedImagesBloc extends Bloc<LikedImagesEvent, LikedImagesState> {
  final ImagesRepository imagesRepository;
  LikedImagesBloc({required this.imagesRepository})
      : super(const LikedImagesState.initial()) {
    on<LikedImagesGetLikedImagesEvent>(_getLikedImages);
    on<LikedImagesLikeImageEvent>(_likeImage);
    on<LikedImagesUnlikeImageEvent>(_unlikeImage);
  }

  Future _getLikedImages(LikedImagesGetLikedImagesEvent event,
      Emitter<LikedImagesState> emit) async {
    try {
      emit(const LikedImagesState.loading());
      final List<UnsplashImage> res = await imagesRepository.getLikedImages(
        page: event.page,
        username: event.username,
      );
      emit(
        LikedImagesState.loaded(
          images: res,
          isLikedOrUnliked: false,
        ),
      );
    } on DioError catch (e) {
      final String errorMessage =
          AppUtils().errorIdentifier(e.response?.statusCode ?? 0);
      emit(
        LikedImagesState.error(
          message: errorMessage,
        ),
      );
    } catch (e) {
      emit(
        LikedImagesState.error(
          message: e.toString(),
        ),
      );
    }
  }

  Future _likeImage(
      LikedImagesLikeImageEvent event, Emitter<LikedImagesState> emit) async {
    try {
      List<UnsplashImage> images = event.images.toList();
      final UnsplashImage likedImage =
          images.firstWhere((img) => img.id == event.imageId);
      final int index = images.indexWhere((img) => img == likedImage);
      images[index] = likedImage.copyWith(
        liked_by_user: true,
      );
      emit(
        LikedImagesState.loaded(
          images: images,
          isLikedOrUnliked: true,
        ),
      );
      await imagesRepository.likeImage(
        id: event.imageId,
      );
    } on DioError catch (e) {
      final String errorMessage =
          AppUtils().errorIdentifier(e.response?.statusCode ?? 0);
      emit(
        LikedImagesState.error(
          message: errorMessage,
        ),
      );
    } catch (e) {
      emit(
        LikedImagesState.error(
          message: e.toString(),
        ),
      );
    }
  }

  Future _unlikeImage(
      LikedImagesUnlikeImageEvent event, Emitter<LikedImagesState> emit) async {
    try {
      List<UnsplashImage> images = event.images.toList();
      final UnsplashImage unlikedImage =
          images.firstWhere((img) => img.id == event.imageId);
      final int index = images.indexWhere((img) => img == unlikedImage);
      images[index] = unlikedImage.copyWith(
        liked_by_user: false,
      );
      emit(
        LikedImagesState.loaded(
          images: images,
          isLikedOrUnliked: true,
        ),
      );
      await imagesRepository.unlikeImage(
        id: event.imageId,
      );
    } on DioError catch (e) {
      final String errorMessage =
          AppUtils().errorIdentifier(e.response?.statusCode ?? 0);
      emit(
        LikedImagesState.error(
          message: errorMessage,
        ),
      );
    } catch (e) {
      emit(
        LikedImagesState.error(
          message: e.toString(),
        ),
      );
    }
  }
}
