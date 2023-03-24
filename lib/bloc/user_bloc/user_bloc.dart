import 'package:dio/dio.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../core/utils.dart';
import '../../data/models/collection/collection.dart';
import '../../data/models/cover_image/cover_image.dart';
import '../../data/models/unsplash_image/unsplash_image.dart';
import '../../data/models/user/user.dart';
import '../../data/repositories/images_repository.dart';
import '../../data/repositories/users_repository.dart';

part 'user_bloc.freezed.dart';
part 'user_event.dart';
part 'user_state.dart';

class UserBloc extends Bloc<UserEvent, UserState> {
  final UsersRepository usersRepository;
  final ImagesRepository imagesRepository;
  UserBloc({
    required this.usersRepository,
    required this.imagesRepository,
  }) : super(const UserState.initial()) {
    on<UserGetUserEvent>(_getUser);
  }

  Future _getUser(UserGetUserEvent event, Emitter<UserState> emit) async {
    try {
      emit(
        const UserState.loading(),
      );
      final Profile user =
          await usersRepository.getUser(username: event.username);
      final List<UnsplashImage> likedImages =
          await imagesRepository.getLikedImages(
        page: event.likedImagesPage,
        username: event.username,
      );
      final List<Collection> collections =
          await imagesRepository.getCollections(
        page: event.collectionsPage,
        username: event.username,
      );
      final List<CoverImage> uploadedImages =
          await imagesRepository.getImagesUploadedByUser(
        page: event.uploadedImagesPage,
        username: event.username,
      );
      emit(
        UserState.loaded(
          user: user,
          likedImages: likedImages,
          collections: collections,
          uploadedImages: uploadedImages,
        ),
      );
    } on DioError catch (e) {
      final String errorMessage =
          AppUtils().errorIdentifier(e.response?.statusCode ?? 0);
      emit(
        UserState.error(
          message: errorMessage,
        ),
      );
    } catch (e) {
      emit(
        UserState.error(
          message: e.toString(),
        ),
      );
    }
  }
}
