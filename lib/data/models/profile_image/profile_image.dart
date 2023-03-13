import 'package:freezed_annotation/freezed_annotation.dart';

part 'profile_image.freezed.dart';

part 'profile_image.g.dart';

@freezed
class ProfileImage with _$ProfileImage {
  @JsonSerializable(explicitToJson: true)
  const factory ProfileImage({
    required String small,
    required String medium,
    required String large,
  }) = _ProfileImage;

  factory ProfileImage.fromJson(Map<String, dynamic> json) =>
      _$ProfileImageFromJson(json);
}
