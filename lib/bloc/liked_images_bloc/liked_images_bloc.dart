import 'package:animated_app/data/repositories/images_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../data/models/unsplash_image/unsplash_image.dart';

part 'liked_images_state.dart';

part 'liked_images_event.dart';

part 'liked_images_bloc.freezed.dart';

class LikedImagesBloc extends Bloc<LikedImagesEvent, LikedImagesState> {
  final ImagesRepository imagesRepository;
  LikedImagesBloc({required this.imagesRepository})
      : super(const LikedImagesState.initial()) {
    on<LikedImagesGetLikedImagesEvent>(_getLikedImages);
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
        ),
      );
    } catch (e) {
      emit(
        LikedImagesState.error(
          message: e.toString(),
        ),
      );
      throw Exception(
        e.toString(),
      );
    }
  }
}
