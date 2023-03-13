import 'package:freezed_annotation/freezed_annotation.dart';

import '../links/links.dart';
import '../location/location.dart';
import '../tag/tag.dart';
import '../urls/urls.dart';
import '../user/user.dart';

part 'unsplash_image.freezed.dart';

part 'unsplash_image.g.dart';

@freezed
class UnsplashImage with _$UnsplashImage {
  @JsonSerializable(explicitToJson: true)
  const factory UnsplashImage({
    required String id,
    String? description,
    required int likes,
    int? downloads,
    required bool liked_by_user,
    Location? location,
    List<Tag>? tags,
    required Links links,
    required Urls urls,
    required Author user,
  }) = _UnsplashImage;

  factory UnsplashImage.fromJson(Map<String, dynamic> json) =>
      _$UnsplashImageFromJson(json);
}
