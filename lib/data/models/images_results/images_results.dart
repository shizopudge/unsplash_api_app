import 'package:animated_app/data/models/unsplash_image/unsplash_image.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'images_results.freezed.dart';

part 'images_results.g.dart';

@freezed
class ImagesResults with _$ImagesResults {
  @JsonSerializable(explicitToJson: true)
  const factory ImagesResults({
    required List<UnsplashImage> results,
    required int total,
    required int total_pages,
  }) = _ImagesResults;

  factory ImagesResults.fromJson(Map<String, dynamic> json) =>
      _$ImagesResultsFromJson(json);
}
