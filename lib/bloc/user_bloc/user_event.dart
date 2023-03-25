part of 'user_bloc.dart';

@freezed
class UserEvent with _$UserEvent {
  const factory UserEvent.getImages({
    required String username,
    // required int likedImagesPage,
    // required int collectionsPage,
    // required int uploadedImagesPage,
  }) = UserGetUserEvent;
}
