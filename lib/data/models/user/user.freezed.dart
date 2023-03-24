// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

User _$UserFromJson(Map<String, dynamic> json) {
  switch (json['runtimeType']) {
    case 'profile':
      return Profile.fromJson(json);
    case 'author':
      return Author.fromJson(json);

    default:
      throw CheckedFromJsonException(json, 'runtimeType', 'User',
          'Invalid union type "${json['runtimeType']}"!');
  }
}

/// @nodoc
mixin _$User {
  String get id => throw _privateConstructorUsedError;
  String get username => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  ProfileImage get profile_image => throw _privateConstructorUsedError;
  Links get links => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String id,
            String username,
            String name,
            String? bio,
            Social social,
            ProfileImage profile_image,
            int downloads,
            int total_likes,
            int total_photos,
            bool followed_by_user,
            int followers_count,
            String? location,
            Links links)
        profile,
    required TResult Function(String id, String username, String name,
            ProfileImage profile_image, Links links)
        author,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            String id,
            String username,
            String name,
            String? bio,
            Social social,
            ProfileImage profile_image,
            int downloads,
            int total_likes,
            int total_photos,
            bool followed_by_user,
            int followers_count,
            String? location,
            Links links)?
        profile,
    TResult? Function(String id, String username, String name,
            ProfileImage profile_image, Links links)?
        author,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String id,
            String username,
            String name,
            String? bio,
            Social social,
            ProfileImage profile_image,
            int downloads,
            int total_likes,
            int total_photos,
            bool followed_by_user,
            int followers_count,
            String? location,
            Links links)?
        profile,
    TResult Function(String id, String username, String name,
            ProfileImage profile_image, Links links)?
        author,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Profile value) profile,
    required TResult Function(Author value) author,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Profile value)? profile,
    TResult? Function(Author value)? author,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Profile value)? profile,
    TResult Function(Author value)? author,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserCopyWith<User> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserCopyWith<$Res> {
  factory $UserCopyWith(User value, $Res Function(User) then) =
      _$UserCopyWithImpl<$Res, User>;
  @useResult
  $Res call(
      {String id,
      String username,
      String name,
      ProfileImage profile_image,
      Links links});

  $ProfileImageCopyWith<$Res> get profile_image;
  $LinksCopyWith<$Res> get links;
}

/// @nodoc
class _$UserCopyWithImpl<$Res, $Val extends User>
    implements $UserCopyWith<$Res> {
  _$UserCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? username = null,
    Object? name = null,
    Object? profile_image = null,
    Object? links = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      profile_image: null == profile_image
          ? _value.profile_image
          : profile_image // ignore: cast_nullable_to_non_nullable
              as ProfileImage,
      links: null == links
          ? _value.links
          : links // ignore: cast_nullable_to_non_nullable
              as Links,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ProfileImageCopyWith<$Res> get profile_image {
    return $ProfileImageCopyWith<$Res>(_value.profile_image, (value) {
      return _then(_value.copyWith(profile_image: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $LinksCopyWith<$Res> get links {
    return $LinksCopyWith<$Res>(_value.links, (value) {
      return _then(_value.copyWith(links: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ProfileCopyWith<$Res> implements $UserCopyWith<$Res> {
  factory _$$ProfileCopyWith(_$Profile value, $Res Function(_$Profile) then) =
      __$$ProfileCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String username,
      String name,
      String? bio,
      Social social,
      ProfileImage profile_image,
      int downloads,
      int total_likes,
      int total_photos,
      bool followed_by_user,
      int followers_count,
      String? location,
      Links links});

  $SocialCopyWith<$Res> get social;
  @override
  $ProfileImageCopyWith<$Res> get profile_image;
  @override
  $LinksCopyWith<$Res> get links;
}

/// @nodoc
class __$$ProfileCopyWithImpl<$Res> extends _$UserCopyWithImpl<$Res, _$Profile>
    implements _$$ProfileCopyWith<$Res> {
  __$$ProfileCopyWithImpl(_$Profile _value, $Res Function(_$Profile) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? username = null,
    Object? name = null,
    Object? bio = freezed,
    Object? social = null,
    Object? profile_image = null,
    Object? downloads = null,
    Object? total_likes = null,
    Object? total_photos = null,
    Object? followed_by_user = null,
    Object? followers_count = null,
    Object? location = freezed,
    Object? links = null,
  }) {
    return _then(_$Profile(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      bio: freezed == bio
          ? _value.bio
          : bio // ignore: cast_nullable_to_non_nullable
              as String?,
      social: null == social
          ? _value.social
          : social // ignore: cast_nullable_to_non_nullable
              as Social,
      profile_image: null == profile_image
          ? _value.profile_image
          : profile_image // ignore: cast_nullable_to_non_nullable
              as ProfileImage,
      downloads: null == downloads
          ? _value.downloads
          : downloads // ignore: cast_nullable_to_non_nullable
              as int,
      total_likes: null == total_likes
          ? _value.total_likes
          : total_likes // ignore: cast_nullable_to_non_nullable
              as int,
      total_photos: null == total_photos
          ? _value.total_photos
          : total_photos // ignore: cast_nullable_to_non_nullable
              as int,
      followed_by_user: null == followed_by_user
          ? _value.followed_by_user
          : followed_by_user // ignore: cast_nullable_to_non_nullable
              as bool,
      followers_count: null == followers_count
          ? _value.followers_count
          : followers_count // ignore: cast_nullable_to_non_nullable
              as int,
      location: freezed == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as String?,
      links: null == links
          ? _value.links
          : links // ignore: cast_nullable_to_non_nullable
              as Links,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $SocialCopyWith<$Res> get social {
    return $SocialCopyWith<$Res>(_value.social, (value) {
      return _then(_value.copyWith(social: value));
    });
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$Profile implements Profile {
  const _$Profile(
      {required this.id,
      required this.username,
      required this.name,
      this.bio,
      required this.social,
      required this.profile_image,
      required this.downloads,
      required this.total_likes,
      required this.total_photos,
      required this.followed_by_user,
      required this.followers_count,
      this.location,
      required this.links,
      final String? $type})
      : $type = $type ?? 'profile';

  factory _$Profile.fromJson(Map<String, dynamic> json) =>
      _$$ProfileFromJson(json);

  @override
  final String id;
  @override
  final String username;
  @override
  final String name;
  @override
  final String? bio;
  @override
  final Social social;
  @override
  final ProfileImage profile_image;
  @override
  final int downloads;
  @override
  final int total_likes;
  @override
  final int total_photos;
  @override
  final bool followed_by_user;
  @override
  final int followers_count;
  @override
  final String? location;
  @override
  final Links links;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'User.profile(id: $id, username: $username, name: $name, bio: $bio, social: $social, profile_image: $profile_image, downloads: $downloads, total_likes: $total_likes, total_photos: $total_photos, followed_by_user: $followed_by_user, followers_count: $followers_count, location: $location, links: $links)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$Profile &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.username, username) ||
                other.username == username) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.bio, bio) || other.bio == bio) &&
            (identical(other.social, social) || other.social == social) &&
            (identical(other.profile_image, profile_image) ||
                other.profile_image == profile_image) &&
            (identical(other.downloads, downloads) ||
                other.downloads == downloads) &&
            (identical(other.total_likes, total_likes) ||
                other.total_likes == total_likes) &&
            (identical(other.total_photos, total_photos) ||
                other.total_photos == total_photos) &&
            (identical(other.followed_by_user, followed_by_user) ||
                other.followed_by_user == followed_by_user) &&
            (identical(other.followers_count, followers_count) ||
                other.followers_count == followers_count) &&
            (identical(other.location, location) ||
                other.location == location) &&
            (identical(other.links, links) || other.links == links));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      username,
      name,
      bio,
      social,
      profile_image,
      downloads,
      total_likes,
      total_photos,
      followed_by_user,
      followers_count,
      location,
      links);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ProfileCopyWith<_$Profile> get copyWith =>
      __$$ProfileCopyWithImpl<_$Profile>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String id,
            String username,
            String name,
            String? bio,
            Social social,
            ProfileImage profile_image,
            int downloads,
            int total_likes,
            int total_photos,
            bool followed_by_user,
            int followers_count,
            String? location,
            Links links)
        profile,
    required TResult Function(String id, String username, String name,
            ProfileImage profile_image, Links links)
        author,
  }) {
    return profile(
        id,
        username,
        name,
        bio,
        social,
        profile_image,
        downloads,
        total_likes,
        total_photos,
        followed_by_user,
        followers_count,
        location,
        links);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            String id,
            String username,
            String name,
            String? bio,
            Social social,
            ProfileImage profile_image,
            int downloads,
            int total_likes,
            int total_photos,
            bool followed_by_user,
            int followers_count,
            String? location,
            Links links)?
        profile,
    TResult? Function(String id, String username, String name,
            ProfileImage profile_image, Links links)?
        author,
  }) {
    return profile?.call(
        id,
        username,
        name,
        bio,
        social,
        profile_image,
        downloads,
        total_likes,
        total_photos,
        followed_by_user,
        followers_count,
        location,
        links);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String id,
            String username,
            String name,
            String? bio,
            Social social,
            ProfileImage profile_image,
            int downloads,
            int total_likes,
            int total_photos,
            bool followed_by_user,
            int followers_count,
            String? location,
            Links links)?
        profile,
    TResult Function(String id, String username, String name,
            ProfileImage profile_image, Links links)?
        author,
    required TResult orElse(),
  }) {
    if (profile != null) {
      return profile(
          id,
          username,
          name,
          bio,
          social,
          profile_image,
          downloads,
          total_likes,
          total_photos,
          followed_by_user,
          followers_count,
          location,
          links);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Profile value) profile,
    required TResult Function(Author value) author,
  }) {
    return profile(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Profile value)? profile,
    TResult? Function(Author value)? author,
  }) {
    return profile?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Profile value)? profile,
    TResult Function(Author value)? author,
    required TResult orElse(),
  }) {
    if (profile != null) {
      return profile(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$ProfileToJson(
      this,
    );
  }
}

abstract class Profile implements User {
  const factory Profile(
      {required final String id,
      required final String username,
      required final String name,
      final String? bio,
      required final Social social,
      required final ProfileImage profile_image,
      required final int downloads,
      required final int total_likes,
      required final int total_photos,
      required final bool followed_by_user,
      required final int followers_count,
      final String? location,
      required final Links links}) = _$Profile;

  factory Profile.fromJson(Map<String, dynamic> json) = _$Profile.fromJson;

  @override
  String get id;
  @override
  String get username;
  @override
  String get name;
  String? get bio;
  Social get social;
  @override
  ProfileImage get profile_image;
  int get downloads;
  int get total_likes;
  int get total_photos;
  bool get followed_by_user;
  int get followers_count;
  String? get location;
  @override
  Links get links;
  @override
  @JsonKey(ignore: true)
  _$$ProfileCopyWith<_$Profile> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AuthorCopyWith<$Res> implements $UserCopyWith<$Res> {
  factory _$$AuthorCopyWith(_$Author value, $Res Function(_$Author) then) =
      __$$AuthorCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String username,
      String name,
      ProfileImage profile_image,
      Links links});

  @override
  $ProfileImageCopyWith<$Res> get profile_image;
  @override
  $LinksCopyWith<$Res> get links;
}

/// @nodoc
class __$$AuthorCopyWithImpl<$Res> extends _$UserCopyWithImpl<$Res, _$Author>
    implements _$$AuthorCopyWith<$Res> {
  __$$AuthorCopyWithImpl(_$Author _value, $Res Function(_$Author) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? username = null,
    Object? name = null,
    Object? profile_image = null,
    Object? links = null,
  }) {
    return _then(_$Author(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      profile_image: null == profile_image
          ? _value.profile_image
          : profile_image // ignore: cast_nullable_to_non_nullable
              as ProfileImage,
      links: null == links
          ? _value.links
          : links // ignore: cast_nullable_to_non_nullable
              as Links,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$Author implements Author {
  const _$Author(
      {required this.id,
      required this.username,
      required this.name,
      required this.profile_image,
      required this.links,
      final String? $type})
      : $type = $type ?? 'author';

  factory _$Author.fromJson(Map<String, dynamic> json) =>
      _$$AuthorFromJson(json);

  @override
  final String id;
  @override
  final String username;
  @override
  final String name;
  @override
  final ProfileImage profile_image;
  @override
  final Links links;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'User.author(id: $id, username: $username, name: $name, profile_image: $profile_image, links: $links)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$Author &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.username, username) ||
                other.username == username) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.profile_image, profile_image) ||
                other.profile_image == profile_image) &&
            (identical(other.links, links) || other.links == links));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, username, name, profile_image, links);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AuthorCopyWith<_$Author> get copyWith =>
      __$$AuthorCopyWithImpl<_$Author>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String id,
            String username,
            String name,
            String? bio,
            Social social,
            ProfileImage profile_image,
            int downloads,
            int total_likes,
            int total_photos,
            bool followed_by_user,
            int followers_count,
            String? location,
            Links links)
        profile,
    required TResult Function(String id, String username, String name,
            ProfileImage profile_image, Links links)
        author,
  }) {
    return author(id, username, name, profile_image, links);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            String id,
            String username,
            String name,
            String? bio,
            Social social,
            ProfileImage profile_image,
            int downloads,
            int total_likes,
            int total_photos,
            bool followed_by_user,
            int followers_count,
            String? location,
            Links links)?
        profile,
    TResult? Function(String id, String username, String name,
            ProfileImage profile_image, Links links)?
        author,
  }) {
    return author?.call(id, username, name, profile_image, links);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String id,
            String username,
            String name,
            String? bio,
            Social social,
            ProfileImage profile_image,
            int downloads,
            int total_likes,
            int total_photos,
            bool followed_by_user,
            int followers_count,
            String? location,
            Links links)?
        profile,
    TResult Function(String id, String username, String name,
            ProfileImage profile_image, Links links)?
        author,
    required TResult orElse(),
  }) {
    if (author != null) {
      return author(id, username, name, profile_image, links);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Profile value) profile,
    required TResult Function(Author value) author,
  }) {
    return author(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Profile value)? profile,
    TResult? Function(Author value)? author,
  }) {
    return author?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Profile value)? profile,
    TResult Function(Author value)? author,
    required TResult orElse(),
  }) {
    if (author != null) {
      return author(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$AuthorToJson(
      this,
    );
  }
}

abstract class Author implements User {
  const factory Author(
      {required final String id,
      required final String username,
      required final String name,
      required final ProfileImage profile_image,
      required final Links links}) = _$Author;

  factory Author.fromJson(Map<String, dynamic> json) = _$Author.fromJson;

  @override
  String get id;
  @override
  String get username;
  @override
  String get name;
  @override
  ProfileImage get profile_image;
  @override
  Links get links;
  @override
  @JsonKey(ignore: true)
  _$$AuthorCopyWith<_$Author> get copyWith =>
      throw _privateConstructorUsedError;
}
