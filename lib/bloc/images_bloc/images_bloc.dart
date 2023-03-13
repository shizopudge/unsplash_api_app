import 'package:animated_app/data/models/images_results/images_results.dart';
import 'package:animated_app/data/repositories/images_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
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
    } catch (e) {
      emit(
        ImagesState.error(
          message: e.toString(),
        ),
      );
      throw Exception(
        e.toString(),
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
    } catch (e) {
      emit(
        ImagesState.error(
          message: e.toString(),
        ),
      );
      throw Exception(
        e.toString(),
      );
    }
  }
}
