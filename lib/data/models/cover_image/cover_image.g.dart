// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cover_image.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CoverImage _$$_CoverImageFromJson(Map<String, dynamic> json) =>
    _$_CoverImage(
      id: json['id'] as String,
      links: Links.fromJson(json['links'] as Map<String, dynamic>),
      urls: Urls.fromJson(json['urls'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_CoverImageToJson(_$_CoverImage instance) =>
    <String, dynamic>{
      'id': instance.id,
      'links': instance.links.toJson(),
      'urls': instance.urls.toJson(),
    };
