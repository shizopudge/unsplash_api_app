// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'unsplash_image.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

UnsplashImage _$UnsplashImageFromJson(Map<String, dynamic> json) {
  return _UnsplashImage.fromJson(json);
}

/// @nodoc
mixin _$UnsplashImage {
  String get id => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  int get likes => throw _privateConstructorUsedError;
  int? get downloads => throw _privateConstructorUsedError;
  bool get liked_by_user => throw _privateConstructorUsedError;
  Location? get location => throw _privateConstructorUsedError;
  List<Tag>? get tags => throw _privateConstructorUsedError;
  Links get links => throw _privateConstructorUsedError;
  Urls get urls => throw _privateConstructorUsedError;
  Author get user => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UnsplashImageCopyWith<UnsplashImage> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UnsplashImageCopyWith<$Res> {
  factory $UnsplashImageCopyWith(
          UnsplashImage value, $Res Function(UnsplashImage) then) =
      _$UnsplashImageCopyWithImpl<$Res, UnsplashImage>;
  @useResult
  $Res call(
      {String id,
      String? description,
      int likes,
      int? downloads,
      bool liked_by_user,
      Location? location,
      List<Tag>? tags,
      Links links,
      Urls urls,
      Author user});

  $LocationCopyWith<$Res>? get location;
  $LinksCopyWith<$Res> get links;
  $UrlsCopyWith<$Res> get urls;
}

/// @nodoc
class _$UnsplashImageCopyWithImpl<$Res, $Val extends UnsplashImage>
    implements $UnsplashImageCopyWith<$Res> {
  _$UnsplashImageCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? description = freezed,
    Object? likes = null,
    Object? downloads = freezed,
    Object? liked_by_user = null,
    Object? location = freezed,
    Object? tags = freezed,
    Object? links = null,
    Object? urls = null,
    Object? user = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      likes: null == likes
          ? _value.likes
          : likes // ignore: cast_nullable_to_non_nullable
              as int,
      downloads: freezed == downloads
          ? _value.downloads
          : downloads // ignore: cast_nullable_to_non_nullable
              as int?,
      liked_by_user: null == liked_by_user
          ? _value.liked_by_user
          : liked_by_user // ignore: cast_nullable_to_non_nullable
              as bool,
      location: freezed == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as Location?,
      tags: freezed == tags
          ? _value.tags
          : tags // ignore: cast_nullable_to_non_nullable
              as List<Tag>?,
      links: null == links
          ? _value.links
          : links // ignore: cast_nullable_to_non_nullable
              as Links,
      urls: null == urls
          ? _value.urls
          : urls // ignore: cast_nullable_to_non_nullable
              as Urls,
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as Author,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $LocationCopyWith<$Res>? get location {
    if (_value.location == null) {
      return null;
    }

    return $LocationCopyWith<$Res>(_value.location!, (value) {
      return _then(_value.copyWith(location: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $LinksCopyWith<$Res> get links {
    return $LinksCopyWith<$Res>(_value.links, (value) {
      return _then(_value.copyWith(links: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $UrlsCopyWith<$Res> get urls {
    return $UrlsCopyWith<$Res>(_value.urls, (value) {
      return _then(_value.copyWith(urls: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_UnsplashImageCopyWith<$Res>
    implements $UnsplashImageCopyWith<$Res> {
  factory _$$_UnsplashImageCopyWith(
          _$_UnsplashImage value, $Res Function(_$_UnsplashImage) then) =
      __$$_UnsplashImageCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String? description,
      int likes,
      int? downloads,
      bool liked_by_user,
      Location? location,
      List<Tag>? tags,
      Links links,
      Urls urls,
      Author user});

  @override
  $LocationCopyWith<$Res>? get location;
  @override
  $LinksCopyWith<$Res> get links;
  @override
  $UrlsCopyWith<$Res> get urls;
}

/// @nodoc
class __$$_UnsplashImageCopyWithImpl<$Res>
    extends _$UnsplashImageCopyWithImpl<$Res, _$_UnsplashImage>
    implements _$$_UnsplashImageCopyWith<$Res> {
  __$$_UnsplashImageCopyWithImpl(
      _$_UnsplashImage _value, $Res Function(_$_UnsplashImage) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? description = freezed,
    Object? likes = null,
    Object? downloads = freezed,
    Object? liked_by_user = null,
    Object? location = freezed,
    Object? tags = freezed,
    Object? links = null,
    Object? urls = null,
    Object? user = freezed,
  }) {
    return _then(_$_UnsplashImage(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      likes: null == likes
          ? _value.likes
          : likes // ignore: cast_nullable_to_non_nullable
              as int,
      downloads: freezed == downloads
          ? _value.downloads
          : downloads // ignore: cast_nullable_to_non_nullable
              as int?,
      liked_by_user: null == liked_by_user
          ? _value.liked_by_user
          : liked_by_user // ignore: cast_nullable_to_non_nullable
              as bool,
      location: freezed == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as Location?,
      tags: freezed == tags
          ? _value._tags
          : tags // ignore: cast_nullable_to_non_nullable
              as List<Tag>?,
      links: null == links
          ? _value.links
          : links // ignore: cast_nullable_to_non_nullable
              as Links,
      urls: null == urls
          ? _value.urls
          : urls // ignore: cast_nullable_to_non_nullable
              as Urls,
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as Author,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$_UnsplashImage implements _UnsplashImage {
  const _$_UnsplashImage(
      {required this.id,
      this.description,
      required this.likes,
      this.downloads,
      required this.liked_by_user,
      this.location,
      final List<Tag>? tags,
      required this.links,
      required this.urls,
      required this.user})
      : _tags = tags;

  factory _$_UnsplashImage.fromJson(Map<String, dynamic> json) =>
      _$$_UnsplashImageFromJson(json);

  @override
  final String id;
  @override
  final String? description;
  @override
  final int likes;
  @override
  final int? downloads;
  @override
  final bool liked_by_user;
  @override
  final Location? location;
  final List<Tag>? _tags;
  @override
  List<Tag>? get tags {
    final value = _tags;
    if (value == null) return null;
    if (_tags is EqualUnmodifiableListView) return _tags;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final Links links;
  @override
  final Urls urls;
  @override
  final Author user;

  @override
  String toString() {
    return 'UnsplashImage(id: $id, description: $description, likes: $likes, downloads: $downloads, liked_by_user: $liked_by_user, location: $location, tags: $tags, links: $links, urls: $urls, user: $user)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UnsplashImage &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.likes, likes) || other.likes == likes) &&
            (identical(other.downloads, downloads) ||
                other.downloads == downloads) &&
            (identical(other.liked_by_user, liked_by_user) ||
                other.liked_by_user == liked_by_user) &&
            (identical(other.location, location) ||
                other.location == location) &&
            const DeepCollectionEquality().equals(other._tags, _tags) &&
            (identical(other.links, links) || other.links == links) &&
            (identical(other.urls, urls) || other.urls == urls) &&
            const DeepCollectionEquality().equals(other.user, user));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      description,
      likes,
      downloads,
      liked_by_user,
      location,
      const DeepCollectionEquality().hash(_tags),
      links,
      urls,
      const DeepCollectionEquality().hash(user));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UnsplashImageCopyWith<_$_UnsplashImage> get copyWith =>
      __$$_UnsplashImageCopyWithImpl<_$_UnsplashImage>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_UnsplashImageToJson(
      this,
    );
  }
}

abstract class _UnsplashImage implements UnsplashImage {
  const factory _UnsplashImage(
      {required final String id,
      final String? description,
      required final int likes,
      final int? downloads,
      required final bool liked_by_user,
      final Location? location,
      final List<Tag>? tags,
      required final Links links,
      required final Urls urls,
      required final Author user}) = _$_UnsplashImage;

  factory _UnsplashImage.fromJson(Map<String, dynamic> json) =
      _$_UnsplashImage.fromJson;

  @override
  String get id;
  @override
  String? get description;
  @override
  int get likes;
  @override
  int? get downloads;
  @override
  bool get liked_by_user;
  @override
  Location? get location;
  @override
  List<Tag>? get tags;
  @override
  Links get links;
  @override
  Urls get urls;
  @override
  Author get user;
  @override
  @JsonKey(ignore: true)
  _$$_UnsplashImageCopyWith<_$_UnsplashImage> get copyWith =>
      throw _privateConstructorUsedError;
}
