import 'package:freezed_annotation/freezed_annotation.dart';

part 'social.freezed.dart';

part 'social.g.dart';

@freezed
class Social with _$Social {
  @JsonSerializable(explicitToJson: true)
  const factory Social({
    String? instagram_username,
    String? twitter_username,
  }) = _Social;

  factory Social.fromJson(Map<String, dynamic> json) => _$SocialFromJson(json);
}
