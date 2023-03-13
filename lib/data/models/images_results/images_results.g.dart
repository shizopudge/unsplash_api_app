// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'images_results.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ImagesResults _$$_ImagesResultsFromJson(Map<String, dynamic> json) =>
    _$_ImagesResults(
      results: (json['results'] as List<dynamic>)
          .map((e) => UnsplashImage.fromJson(e as Map<String, dynamic>))
          .toList(),
      total: json['total'] as int,
      total_pages: json['total_pages'] as int,
    );

Map<String, dynamic> _$$_ImagesResultsToJson(_$_ImagesResults instance) =>
    <String, dynamic>{
      'results': instance.results.map((e) => e.toJson()).toList(),
      'total': instance.total,
      'total_pages': instance.total_pages,
    };
