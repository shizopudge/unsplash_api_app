import 'package:freezed_annotation/freezed_annotation.dart';

import '../links/links.dart';
import '../urls/urls.dart';

part 'cover_image.freezed.dart';

part 'cover_image.g.dart';

@freezed
class CoverImage with _$CoverImage {
  @JsonSerializable(explicitToJson: true)
  const factory CoverImage({
    required String id,
    required Links links,
    required Urls urls,
  }) = _CoverImage;

  factory CoverImage.fromJson(Map<String, dynamic> json) =>
      _$CoverImageFromJson(json);
}
