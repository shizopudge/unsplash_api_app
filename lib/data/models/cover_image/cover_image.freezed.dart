// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'cover_image.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CoverImage _$CoverImageFromJson(Map<String, dynamic> json) {
  return _CoverImage.fromJson(json);
}

/// @nodoc
mixin _$CoverImage {
  String get id => throw _privateConstructorUsedError;
  Links get links => throw _privateConstructorUsedError;
  Urls get urls => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CoverImageCopyWith<CoverImage> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CoverImageCopyWith<$Res> {
  factory $CoverImageCopyWith(
          CoverImage value, $Res Function(CoverImage) then) =
      _$CoverImageCopyWithImpl<$Res, CoverImage>;
  @useResult
  $Res call({String id, Links links, Urls urls});

  $LinksCopyWith<$Res> get links;
  $UrlsCopyWith<$Res> get urls;
}

/// @nodoc
class _$CoverImageCopyWithImpl<$Res, $Val extends CoverImage>
    implements $CoverImageCopyWith<$Res> {
  _$CoverImageCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? links = null,
    Object? urls = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      links: null == links
          ? _value.links
          : links // ignore: cast_nullable_to_non_nullable
              as Links,
      urls: null == urls
          ? _value.urls
          : urls // ignore: cast_nullable_to_non_nullable
              as Urls,
    ) as $Val);
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
abstract class _$$_CoverImageCopyWith<$Res>
    implements $CoverImageCopyWith<$Res> {
  factory _$$_CoverImageCopyWith(
          _$_CoverImage value, $Res Function(_$_CoverImage) then) =
      __$$_CoverImageCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, Links links, Urls urls});

  @override
  $LinksCopyWith<$Res> get links;
  @override
  $UrlsCopyWith<$Res> get urls;
}

/// @nodoc
class __$$_CoverImageCopyWithImpl<$Res>
    extends _$CoverImageCopyWithImpl<$Res, _$_CoverImage>
    implements _$$_CoverImageCopyWith<$Res> {
  __$$_CoverImageCopyWithImpl(
      _$_CoverImage _value, $Res Function(_$_CoverImage) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? links = null,
    Object? urls = null,
  }) {
    return _then(_$_CoverImage(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      links: null == links
          ? _value.links
          : links // ignore: cast_nullable_to_non_nullable
              as Links,
      urls: null == urls
          ? _value.urls
          : urls // ignore: cast_nullable_to_non_nullable
              as Urls,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$_CoverImage implements _CoverImage {
  const _$_CoverImage(
      {required this.id, required this.links, required this.urls});

  factory _$_CoverImage.fromJson(Map<String, dynamic> json) =>
      _$$_CoverImageFromJson(json);

  @override
  final String id;
  @override
  final Links links;
  @override
  final Urls urls;

  @override
  String toString() {
    return 'CoverImage(id: $id, links: $links, urls: $urls)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CoverImage &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.links, links) || other.links == links) &&
            (identical(other.urls, urls) || other.urls == urls));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, links, urls);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CoverImageCopyWith<_$_CoverImage> get copyWith =>
      __$$_CoverImageCopyWithImpl<_$_CoverImage>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CoverImageToJson(
      this,
    );
  }
}

abstract class _CoverImage implements CoverImage {
  const factory _CoverImage(
      {required final String id,
      required final Links links,
      required final Urls urls}) = _$_CoverImage;

  factory _CoverImage.fromJson(Map<String, dynamic> json) =
      _$_CoverImage.fromJson;

  @override
  String get id;
  @override
  Links get links;
  @override
  Urls get urls;
  @override
  @JsonKey(ignore: true)
  _$$_CoverImageCopyWith<_$_CoverImage> get copyWith =>
      throw _privateConstructorUsedError;
}
