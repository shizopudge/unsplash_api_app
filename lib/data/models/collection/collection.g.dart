// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'collection.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Collection _$$_CollectionFromJson(Map<String, dynamic> json) =>
    _$_Collection(
      id: json['id'] as int,
      title: json['title'] as String,
      description: json['description'] as String?,
      total_photos: json['total_photos'] as int,
      cover_photo:
          CoverImage.fromJson(json['cover_photo'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_CollectionToJson(_$_Collection instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'description': instance.description,
      'total_photos': instance.total_photos,
      'cover_photo': instance.cover_photo.toJson(),
    };
