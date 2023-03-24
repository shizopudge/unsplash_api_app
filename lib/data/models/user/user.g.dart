// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$Profile _$$ProfileFromJson(Map<String, dynamic> json) => _$Profile(
      id: json['id'] as String,
      username: json['username'] as String,
      name: json['name'] as String,
      bio: json['bio'] as String?,
      social: Social.fromJson(json['social'] as Map<String, dynamic>),
      profile_image:
          ProfileImage.fromJson(json['profile_image'] as Map<String, dynamic>),
      downloads: json['downloads'] as int,
      total_likes: json['total_likes'] as int,
      total_photos: json['total_photos'] as int,
      followed_by_user: json['followed_by_user'] as bool,
      followers_count: json['followers_count'] as int,
      location: json['location'] as String?,
      links: Links.fromJson(json['links'] as Map<String, dynamic>),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$ProfileToJson(_$Profile instance) => <String, dynamic>{
      'id': instance.id,
      'username': instance.username,
      'name': instance.name,
      'bio': instance.bio,
      'social': instance.social.toJson(),
      'profile_image': instance.profile_image.toJson(),
      'downloads': instance.downloads,
      'total_likes': instance.total_likes,
      'total_photos': instance.total_photos,
      'followed_by_user': instance.followed_by_user,
      'followers_count': instance.followers_count,
      'location': instance.location,
      'links': instance.links.toJson(),
      'runtimeType': instance.$type,
    };

_$Author _$$AuthorFromJson(Map<String, dynamic> json) => _$Author(
      id: json['id'] as String,
      username: json['username'] as String,
      name: json['name'] as String,
      profile_image:
          ProfileImage.fromJson(json['profile_image'] as Map<String, dynamic>),
      links: Links.fromJson(json['links'] as Map<String, dynamic>),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$AuthorToJson(_$Author instance) => <String, dynamic>{
      'id': instance.id,
      'username': instance.username,
      'name': instance.name,
      'profile_image': instance.profile_image,
      'links': instance.links,
      'runtimeType': instance.$type,
    };
