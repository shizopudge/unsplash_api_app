part of 'image_bloc.dart';

@freezed
class ImageEvent with _$ImageEvent {
  const factory ImageEvent.getOneImage({required String id}) =
      ImageGetOneImageEvent;
}
