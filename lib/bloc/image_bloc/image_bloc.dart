import 'package:animated_app/data/repositories/images_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../data/models/unsplash_image/unsplash_image.dart';

part 'image_state.dart';

part 'image_event.dart';

part 'image_bloc.freezed.dart';

class ImageBloc extends Bloc<ImageEvent, ImageState> {
  final ImagesRepository imagesRepository;
  ImageBloc({required this.imagesRepository})
      : super(const ImageState.initial()) {
    on<ImageGetOneImageEvent>(_getOneImage);
  }

  Future _getOneImage(
      ImageGetOneImageEvent event, Emitter<ImageState> emit) async {
    try {
      emit(const ImageState.loading());
      final UnsplashImage res = await imagesRepository.getOneImage(
        id: event.id,
      );
      emit(
        ImageState.loaded(
          image: res,
        ),
      );
    } catch (e) {
      emit(
        ImageState.error(
          message: e.toString(),
        ),
      );
      throw Exception(
        e.toString(),
      );
    }
  }
}
