import 'package:freezed_annotation/freezed_annotation.dart';

import '../cover_image/cover_image.dart';

part 'collection.freezed.dart';

part 'collection.g.dart';

@freezed
class Collection with _$Collection {
  @JsonSerializable(explicitToJson: true)
  const factory Collection({
    required int id,
    required String title,
    String? description,
    required int total_photos,
    required CoverImage cover_photo,
  }) = _Collection;

  factory Collection.fromJson(Map<String, dynamic> json) =>
      _$CollectionFromJson(json);
}
