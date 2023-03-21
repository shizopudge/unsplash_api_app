import 'package:animated_app/data/models/images_results/images_results.dart';
import 'package:animated_app/data/repositories/images_repository.dart';
import 'package:dio/dio.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../core/utils.dart';
import '../../data/models/unsplash_image/unsplash_image.dart';

part 'images_state.dart';

part 'images_event.dart';

part 'images_bloc.freezed.dart';

class ImagesBloc extends Bloc<ImagesEvent, ImagesState> {
  final ImagesRepository imagesRepository;
  ImagesBloc({required this.imagesRepository})
      : super(const ImagesState.initial()) {
    on<ImagesGetImagesEvent>(_getImages);
    on<ImagesSearchImagesEvent>(_searchImages);
    on<ImagesLikeImageEvent>(_likeImage);
    on<ImagesUnlikeImageEvent>(_unlikeImage);
  }

  Future _getImages(
      ImagesGetImagesEvent event, Emitter<ImagesState> emit) async {
    try {
      emit(const ImagesState.loading());
      final List<UnsplashImage> res = await imagesRepository.getImages(
        page: event.page,
      );
      emit(
        ImagesState.loaded(
          images: res,
        ),
      );
    } on DioError catch (e) {
      final String errorMessage =
          AppUtils().errorIdentifier(e.response?.statusCode ?? 0);
      emit(
        ImagesState.error(
          message: errorMessage,
        ),
      );
    } catch (e) {
      emit(
        ImagesState.error(
          message: e.toString(),
        ),
      );
    }
  }

  Future _searchImages(
      ImagesSearchImagesEvent event, Emitter<ImagesState> emit) async {
    try {
      emit(const ImagesState.loading());
      final ImagesResults res = await imagesRepository.searchImages(
        query: event.query,
        page: event.page,
      );
      emit(
        ImagesState.loaded(
          images: res.results,
          total: res.total,
          total_pages: res.total_pages,
        ),
      );
    } on DioError catch (e) {
      final String errorMessage =
          AppUtils().errorIdentifier(e.response?.statusCode ?? 0);
      emit(
        ImagesState.error(
          message: errorMessage,
        ),
      );
    } catch (e) {
      emit(
        ImagesState.error(
          message: e.toString(),
        ),
      );
    }
  }

  Future _likeImage(
      ImagesLikeImageEvent event, Emitter<ImagesState> emit) async {
    try {
      List<UnsplashImage> images = event.images.toList();
      final UnsplashImage likedImage =
          images.firstWhere((img) => img.id == event.imageId);
      final int index = images.indexWhere((img) => img == likedImage);
      images[index] = likedImage.copyWith(
        liked_by_user: true,
      );
      emit(
        ImagesState.loaded(images: images),
      );
      await imagesRepository.likeImage(
        id: event.imageId,
      );
    } on DioError catch (e) {
      final String errorMessage =
          AppUtils().errorIdentifier(e.response?.statusCode ?? 0);
      emit(
        ImagesState.error(
          message: errorMessage,
        ),
      );
    } catch (e) {
      emit(
        ImagesState.error(
          message: e.toString(),
        ),
      );
    }
  }

  Future _unlikeImage(
      ImagesUnlikeImageEvent event, Emitter<ImagesState> emit) async {
    try {
      List<UnsplashImage> images = event.images.toList();
      final UnsplashImage unlikedImage =
          images.firstWhere((img) => img.id == event.imageId);
      final int index = images.indexWhere((img) => img == unlikedImage);
      images[index] = unlikedImage.copyWith(
        liked_by_user: false,
      );
      emit(
        ImagesState.loaded(images: images),
      );
      await imagesRepository.unlikeImage(
        id: event.imageId,
      );
    } on DioError catch (e) {
      final String errorMessage =
          AppUtils().errorIdentifier(e.response?.statusCode ?? 0);
      emit(
        ImagesState.error(
          message: errorMessage,
        ),
      );
    } catch (e) {
      emit(
        ImagesState.error(
          message: e.toString(),
        ),
      );
    }
  }
}
