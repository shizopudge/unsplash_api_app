import 'package:freezed_annotation/freezed_annotation.dart';

import '../links/links.dart';
import '../profile_image/profile_image.dart';
import '../social/social.dart';

part 'user.freezed.dart';

part 'user.g.dart';

@freezed
class User with _$User {
  @JsonSerializable(explicitToJson: true)
  const factory User.profile({
    required String id,
    required String username,
    required String name,
    String? bio,
    required Social social,
    required ProfileImage profile_image,
    required int downloads,
    required int total_likes,
    required int total_photos,
    required bool followed_by_user,
    required int followers_count,
    String? location,
    required Links links,
  }) = Profile;

  const factory User.author({
    required String id,
    required String username,
    required String name,
    required ProfileImage profile_image,
    required Links links,
  }) = Author;

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);
}
