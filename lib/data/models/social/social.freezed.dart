// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'social.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Social _$SocialFromJson(Map<String, dynamic> json) {
  return _Social.fromJson(json);
}

/// @nodoc
mixin _$Social {
  String? get instagram_username => throw _privateConstructorUsedError;
  String? get twitter_username => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SocialCopyWith<Social> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SocialCopyWith<$Res> {
  factory $SocialCopyWith(Social value, $Res Function(Social) then) =
      _$SocialCopyWithImpl<$Res, Social>;
  @useResult
  $Res call({String? instagram_username, String? twitter_username});
}

/// @nodoc
class _$SocialCopyWithImpl<$Res, $Val extends Social>
    implements $SocialCopyWith<$Res> {
  _$SocialCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? instagram_username = freezed,
    Object? twitter_username = freezed,
  }) {
    return _then(_value.copyWith(
      instagram_username: freezed == instagram_username
          ? _value.instagram_username
          : instagram_username // ignore: cast_nullable_to_non_nullable
              as String?,
      twitter_username: freezed == twitter_username
          ? _value.twitter_username
          : twitter_username // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_SocialCopyWith<$Res> implements $SocialCopyWith<$Res> {
  factory _$$_SocialCopyWith(_$_Social value, $Res Function(_$_Social) then) =
      __$$_SocialCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? instagram_username, String? twitter_username});
}

/// @nodoc
class __$$_SocialCopyWithImpl<$Res>
    extends _$SocialCopyWithImpl<$Res, _$_Social>
    implements _$$_SocialCopyWith<$Res> {
  __$$_SocialCopyWithImpl(_$_Social _value, $Res Function(_$_Social) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? instagram_username = freezed,
    Object? twitter_username = freezed,
  }) {
    return _then(_$_Social(
      instagram_username: freezed == instagram_username
          ? _value.instagram_username
          : instagram_username // ignore: cast_nullable_to_non_nullable
              as String?,
      twitter_username: freezed == twitter_username
          ? _value.twitter_username
          : twitter_username // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$_Social implements _Social {
  const _$_Social({this.instagram_username, this.twitter_username});

  factory _$_Social.fromJson(Map<String, dynamic> json) =>
      _$$_SocialFromJson(json);

  @override
  final String? instagram_username;
  @override
  final String? twitter_username;

  @override
  String toString() {
    return 'Social(instagram_username: $instagram_username, twitter_username: $twitter_username)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Social &&
            (identical(other.instagram_username, instagram_username) ||
                other.instagram_username == instagram_username) &&
            (identical(other.twitter_username, twitter_username) ||
                other.twitter_username == twitter_username));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, instagram_username, twitter_username);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SocialCopyWith<_$_Social> get copyWith =>
      __$$_SocialCopyWithImpl<_$_Social>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SocialToJson(
      this,
    );
  }
}

abstract class _Social implements Social {
  const factory _Social(
      {final String? instagram_username,
      final String? twitter_username}) = _$_Social;

  factory _Social.fromJson(Map<String, dynamic> json) = _$_Social.fromJson;

  @override
  String? get instagram_username;
  @override
  String? get twitter_username;
  @override
  @JsonKey(ignore: true)
  _$$_SocialCopyWith<_$_Social> get copyWith =>
      throw _privateConstructorUsedError;
}
