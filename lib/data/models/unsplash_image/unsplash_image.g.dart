// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'unsplash_image.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_UnsplashImage _$$_UnsplashImageFromJson(Map<String, dynamic> json) =>
    _$_UnsplashImage(
      id: json['id'] as String,
      description: json['description'] as String?,
      likes: json['likes'] as int,
      downloads: json['downloads'] as int?,
      liked_by_user: json['liked_by_user'] as bool,
      location: json['location'] == null
          ? null
          : Location.fromJson(json['location'] as Map<String, dynamic>),
      tags: (json['tags'] as List<dynamic>?)
          ?.map((e) => Tag.fromJson(e as Map<String, dynamic>))
          .toList(),
      links: Links.fromJson(json['links'] as Map<String, dynamic>),
      urls: Urls.fromJson(json['urls'] as Map<String, dynamic>),
      user: Author.fromJson(json['user'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_UnsplashImageToJson(_$_UnsplashImage instance) =>
    <String, dynamic>{
      'id': instance.id,
      'description': instance.description,
      'likes': instance.likes,
      'downloads': instance.downloads,
      'liked_by_user': instance.liked_by_user,
      'location': instance.location?.toJson(),
      'tags': instance.tags?.map((e) => e.toJson()).toList(),
      'links': instance.links.toJson(),
      'urls': instance.urls.toJson(),
      'user': instance.user.toJson(),
    };
