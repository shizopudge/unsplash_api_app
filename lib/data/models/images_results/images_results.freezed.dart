// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'images_results.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ImagesResults _$ImagesResultsFromJson(Map<String, dynamic> json) {
  return _ImagesResults.fromJson(json);
}

/// @nodoc
mixin _$ImagesResults {
  List<UnsplashImage> get results => throw _privateConstructorUsedError;
  int get total => throw _privateConstructorUsedError;
  int get total_pages => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ImagesResultsCopyWith<ImagesResults> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ImagesResultsCopyWith<$Res> {
  factory $ImagesResultsCopyWith(
          ImagesResults value, $Res Function(ImagesResults) then) =
      _$ImagesResultsCopyWithImpl<$Res, ImagesResults>;
  @useResult
  $Res call({List<UnsplashImage> results, int total, int total_pages});
}

/// @nodoc
class _$ImagesResultsCopyWithImpl<$Res, $Val extends ImagesResults>
    implements $ImagesResultsCopyWith<$Res> {
  _$ImagesResultsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? results = null,
    Object? total = null,
    Object? total_pages = null,
  }) {
    return _then(_value.copyWith(
      results: null == results
          ? _value.results
          : results // ignore: cast_nullable_to_non_nullable
              as List<UnsplashImage>,
      total: null == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int,
      total_pages: null == total_pages
          ? _value.total_pages
          : total_pages // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ImagesResultsCopyWith<$Res>
    implements $ImagesResultsCopyWith<$Res> {
  factory _$$_ImagesResultsCopyWith(
          _$_ImagesResults value, $Res Function(_$_ImagesResults) then) =
      __$$_ImagesResultsCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<UnsplashImage> results, int total, int total_pages});
}

/// @nodoc
class __$$_ImagesResultsCopyWithImpl<$Res>
    extends _$ImagesResultsCopyWithImpl<$Res, _$_ImagesResults>
    implements _$$_ImagesResultsCopyWith<$Res> {
  __$$_ImagesResultsCopyWithImpl(
      _$_ImagesResults _value, $Res Function(_$_ImagesResults) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? results = null,
    Object? total = null,
    Object? total_pages = null,
  }) {
    return _then(_$_ImagesResults(
      results: null == results
          ? _value._results
          : results // ignore: cast_nullable_to_non_nullable
              as List<UnsplashImage>,
      total: null == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int,
      total_pages: null == total_pages
          ? _value.total_pages
          : total_pages // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$_ImagesResults implements _ImagesResults {
  const _$_ImagesResults(
      {required final List<UnsplashImage> results,
      required this.total,
      required this.total_pages})
      : _results = results;

  factory _$_ImagesResults.fromJson(Map<String, dynamic> json) =>
      _$$_ImagesResultsFromJson(json);

  final List<UnsplashImage> _results;
  @override
  List<UnsplashImage> get results {
    if (_results is EqualUnmodifiableListView) return _results;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_results);
  }

  @override
  final int total;
  @override
  final int total_pages;

  @override
  String toString() {
    return 'ImagesResults(results: $results, total: $total, total_pages: $total_pages)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ImagesResults &&
            const DeepCollectionEquality().equals(other._results, _results) &&
            (identical(other.total, total) || other.total == total) &&
            (identical(other.total_pages, total_pages) ||
                other.total_pages == total_pages));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(_results), total, total_pages);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ImagesResultsCopyWith<_$_ImagesResults> get copyWith =>
      __$$_ImagesResultsCopyWithImpl<_$_ImagesResults>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ImagesResultsToJson(
      this,
    );
  }
}

abstract class _ImagesResults implements ImagesResults {
  const factory _ImagesResults(
      {required final List<UnsplashImage> results,
      required final int total,
      required final int total_pages}) = _$_ImagesResults;

  factory _ImagesResults.fromJson(Map<String, dynamic> json) =
      _$_ImagesResults.fromJson;

  @override
  List<UnsplashImage> get results;
  @override
  int get total;
  @override
  int get total_pages;
  @override
  @JsonKey(ignore: true)
  _$$_ImagesResultsCopyWith<_$_ImagesResults> get copyWith =>
      throw _privateConstructorUsedError;
}
