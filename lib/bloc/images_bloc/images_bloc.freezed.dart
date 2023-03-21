// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'images_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ImagesState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(
            List<UnsplashImage> images, int? total, int? total_pages)
        loaded,
    required TResult Function(String message) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<UnsplashImage> images, int? total, int? total_pages)?
        loaded,
    TResult? Function(String message)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<UnsplashImage> images, int? total, int? total_pages)?
        loaded,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ImagesInitialState value) initial,
    required TResult Function(_ImagesLoadingState value) loading,
    required TResult Function(_ImagesLoadedState value) loaded,
    required TResult Function(_ImagesErrorState value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ImagesInitialState value)? initial,
    TResult? Function(_ImagesLoadingState value)? loading,
    TResult? Function(_ImagesLoadedState value)? loaded,
    TResult? Function(_ImagesErrorState value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ImagesInitialState value)? initial,
    TResult Function(_ImagesLoadingState value)? loading,
    TResult Function(_ImagesLoadedState value)? loaded,
    TResult Function(_ImagesErrorState value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ImagesStateCopyWith<$Res> {
  factory $ImagesStateCopyWith(
          ImagesState value, $Res Function(ImagesState) then) =
      _$ImagesStateCopyWithImpl<$Res, ImagesState>;
}

/// @nodoc
class _$ImagesStateCopyWithImpl<$Res, $Val extends ImagesState>
    implements $ImagesStateCopyWith<$Res> {
  _$ImagesStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_ImagesInitialStateCopyWith<$Res> {
  factory _$$_ImagesInitialStateCopyWith(_$_ImagesInitialState value,
          $Res Function(_$_ImagesInitialState) then) =
      __$$_ImagesInitialStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_ImagesInitialStateCopyWithImpl<$Res>
    extends _$ImagesStateCopyWithImpl<$Res, _$_ImagesInitialState>
    implements _$$_ImagesInitialStateCopyWith<$Res> {
  __$$_ImagesInitialStateCopyWithImpl(
      _$_ImagesInitialState _value, $Res Function(_$_ImagesInitialState) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_ImagesInitialState implements _ImagesInitialState {
  const _$_ImagesInitialState();

  @override
  String toString() {
    return 'ImagesState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_ImagesInitialState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(
            List<UnsplashImage> images, int? total, int? total_pages)
        loaded,
    required TResult Function(String message) error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<UnsplashImage> images, int? total, int? total_pages)?
        loaded,
    TResult? Function(String message)? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<UnsplashImage> images, int? total, int? total_pages)?
        loaded,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ImagesInitialState value) initial,
    required TResult Function(_ImagesLoadingState value) loading,
    required TResult Function(_ImagesLoadedState value) loaded,
    required TResult Function(_ImagesErrorState value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ImagesInitialState value)? initial,
    TResult? Function(_ImagesLoadingState value)? loading,
    TResult? Function(_ImagesLoadedState value)? loaded,
    TResult? Function(_ImagesErrorState value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ImagesInitialState value)? initial,
    TResult Function(_ImagesLoadingState value)? loading,
    TResult Function(_ImagesLoadedState value)? loaded,
    TResult Function(_ImagesErrorState value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _ImagesInitialState implements ImagesState {
  const factory _ImagesInitialState() = _$_ImagesInitialState;
}

/// @nodoc
abstract class _$$_ImagesLoadingStateCopyWith<$Res> {
  factory _$$_ImagesLoadingStateCopyWith(_$_ImagesLoadingState value,
          $Res Function(_$_ImagesLoadingState) then) =
      __$$_ImagesLoadingStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_ImagesLoadingStateCopyWithImpl<$Res>
    extends _$ImagesStateCopyWithImpl<$Res, _$_ImagesLoadingState>
    implements _$$_ImagesLoadingStateCopyWith<$Res> {
  __$$_ImagesLoadingStateCopyWithImpl(
      _$_ImagesLoadingState _value, $Res Function(_$_ImagesLoadingState) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_ImagesLoadingState implements _ImagesLoadingState {
  const _$_ImagesLoadingState();

  @override
  String toString() {
    return 'ImagesState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_ImagesLoadingState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(
            List<UnsplashImage> images, int? total, int? total_pages)
        loaded,
    required TResult Function(String message) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<UnsplashImage> images, int? total, int? total_pages)?
        loaded,
    TResult? Function(String message)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<UnsplashImage> images, int? total, int? total_pages)?
        loaded,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ImagesInitialState value) initial,
    required TResult Function(_ImagesLoadingState value) loading,
    required TResult Function(_ImagesLoadedState value) loaded,
    required TResult Function(_ImagesErrorState value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ImagesInitialState value)? initial,
    TResult? Function(_ImagesLoadingState value)? loading,
    TResult? Function(_ImagesLoadedState value)? loaded,
    TResult? Function(_ImagesErrorState value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ImagesInitialState value)? initial,
    TResult Function(_ImagesLoadingState value)? loading,
    TResult Function(_ImagesLoadedState value)? loaded,
    TResult Function(_ImagesErrorState value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _ImagesLoadingState implements ImagesState {
  const factory _ImagesLoadingState() = _$_ImagesLoadingState;
}

/// @nodoc
abstract class _$$_ImagesLoadedStateCopyWith<$Res> {
  factory _$$_ImagesLoadedStateCopyWith(_$_ImagesLoadedState value,
          $Res Function(_$_ImagesLoadedState) then) =
      __$$_ImagesLoadedStateCopyWithImpl<$Res>;
  @useResult
  $Res call({List<UnsplashImage> images, int? total, int? total_pages});
}

/// @nodoc
class __$$_ImagesLoadedStateCopyWithImpl<$Res>
    extends _$ImagesStateCopyWithImpl<$Res, _$_ImagesLoadedState>
    implements _$$_ImagesLoadedStateCopyWith<$Res> {
  __$$_ImagesLoadedStateCopyWithImpl(
      _$_ImagesLoadedState _value, $Res Function(_$_ImagesLoadedState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? images = null,
    Object? total = freezed,
    Object? total_pages = freezed,
  }) {
    return _then(_$_ImagesLoadedState(
      images: null == images
          ? _value._images
          : images // ignore: cast_nullable_to_non_nullable
              as List<UnsplashImage>,
      total: freezed == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int?,
      total_pages: freezed == total_pages
          ? _value.total_pages
          : total_pages // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc

class _$_ImagesLoadedState implements _ImagesLoadedState {
  const _$_ImagesLoadedState(
      {required final List<UnsplashImage> images, this.total, this.total_pages})
      : _images = images;

  final List<UnsplashImage> _images;
  @override
  List<UnsplashImage> get images {
    if (_images is EqualUnmodifiableListView) return _images;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_images);
  }

  @override
  final int? total;
  @override
  final int? total_pages;

  @override
  String toString() {
    return 'ImagesState.loaded(images: $images, total: $total, total_pages: $total_pages)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ImagesLoadedState &&
            const DeepCollectionEquality().equals(other._images, _images) &&
            (identical(other.total, total) || other.total == total) &&
            (identical(other.total_pages, total_pages) ||
                other.total_pages == total_pages));
  }

  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(_images), total, total_pages);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ImagesLoadedStateCopyWith<_$_ImagesLoadedState> get copyWith =>
      __$$_ImagesLoadedStateCopyWithImpl<_$_ImagesLoadedState>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(
            List<UnsplashImage> images, int? total, int? total_pages)
        loaded,
    required TResult Function(String message) error,
  }) {
    return loaded(images, total, total_pages);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<UnsplashImage> images, int? total, int? total_pages)?
        loaded,
    TResult? Function(String message)? error,
  }) {
    return loaded?.call(images, total, total_pages);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<UnsplashImage> images, int? total, int? total_pages)?
        loaded,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(images, total, total_pages);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ImagesInitialState value) initial,
    required TResult Function(_ImagesLoadingState value) loading,
    required TResult Function(_ImagesLoadedState value) loaded,
    required TResult Function(_ImagesErrorState value) error,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ImagesInitialState value)? initial,
    TResult? Function(_ImagesLoadingState value)? loading,
    TResult? Function(_ImagesLoadedState value)? loaded,
    TResult? Function(_ImagesErrorState value)? error,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ImagesInitialState value)? initial,
    TResult Function(_ImagesLoadingState value)? loading,
    TResult Function(_ImagesLoadedState value)? loaded,
    TResult Function(_ImagesErrorState value)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class _ImagesLoadedState implements ImagesState {
  const factory _ImagesLoadedState(
      {required final List<UnsplashImage> images,
      final int? total,
      final int? total_pages}) = _$_ImagesLoadedState;

  List<UnsplashImage> get images;
  int? get total;
  int? get total_pages;
  @JsonKey(ignore: true)
  _$$_ImagesLoadedStateCopyWith<_$_ImagesLoadedState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_ImagesErrorStateCopyWith<$Res> {
  factory _$$_ImagesErrorStateCopyWith(
          _$_ImagesErrorState value, $Res Function(_$_ImagesErrorState) then) =
      __$$_ImagesErrorStateCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$_ImagesErrorStateCopyWithImpl<$Res>
    extends _$ImagesStateCopyWithImpl<$Res, _$_ImagesErrorState>
    implements _$$_ImagesErrorStateCopyWith<$Res> {
  __$$_ImagesErrorStateCopyWithImpl(
      _$_ImagesErrorState _value, $Res Function(_$_ImagesErrorState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$_ImagesErrorState(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_ImagesErrorState implements _ImagesErrorState {
  const _$_ImagesErrorState({required this.message});

  @override
  final String message;

  @override
  String toString() {
    return 'ImagesState.error(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ImagesErrorState &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ImagesErrorStateCopyWith<_$_ImagesErrorState> get copyWith =>
      __$$_ImagesErrorStateCopyWithImpl<_$_ImagesErrorState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(
            List<UnsplashImage> images, int? total, int? total_pages)
        loaded,
    required TResult Function(String message) error,
  }) {
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<UnsplashImage> images, int? total, int? total_pages)?
        loaded,
    TResult? Function(String message)? error,
  }) {
    return error?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<UnsplashImage> images, int? total, int? total_pages)?
        loaded,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ImagesInitialState value) initial,
    required TResult Function(_ImagesLoadingState value) loading,
    required TResult Function(_ImagesLoadedState value) loaded,
    required TResult Function(_ImagesErrorState value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ImagesInitialState value)? initial,
    TResult? Function(_ImagesLoadingState value)? loading,
    TResult? Function(_ImagesLoadedState value)? loaded,
    TResult? Function(_ImagesErrorState value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ImagesInitialState value)? initial,
    TResult Function(_ImagesLoadingState value)? loading,
    TResult Function(_ImagesLoadedState value)? loaded,
    TResult Function(_ImagesErrorState value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _ImagesErrorState implements ImagesState {
  const factory _ImagesErrorState({required final String message}) =
      _$_ImagesErrorState;

  String get message;
  @JsonKey(ignore: true)
  _$$_ImagesErrorStateCopyWith<_$_ImagesErrorState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ImagesEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int page) getImages,
    required TResult Function(String query, int page) searchImages,
    required TResult Function(String imageId, List<UnsplashImage> images)
        likeImage,
    required TResult Function(String imageId, List<UnsplashImage> images)
        unlikeImage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int page)? getImages,
    TResult? Function(String query, int page)? searchImages,
    TResult? Function(String imageId, List<UnsplashImage> images)? likeImage,
    TResult? Function(String imageId, List<UnsplashImage> images)? unlikeImage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int page)? getImages,
    TResult Function(String query, int page)? searchImages,
    TResult Function(String imageId, List<UnsplashImage> images)? likeImage,
    TResult Function(String imageId, List<UnsplashImage> images)? unlikeImage,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ImagesGetImagesEvent value) getImages,
    required TResult Function(ImagesSearchImagesEvent value) searchImages,
    required TResult Function(ImagesLikeImageEvent value) likeImage,
    required TResult Function(ImagesUnlikeImageEvent value) unlikeImage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ImagesGetImagesEvent value)? getImages,
    TResult? Function(ImagesSearchImagesEvent value)? searchImages,
    TResult? Function(ImagesLikeImageEvent value)? likeImage,
    TResult? Function(ImagesUnlikeImageEvent value)? unlikeImage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ImagesGetImagesEvent value)? getImages,
    TResult Function(ImagesSearchImagesEvent value)? searchImages,
    TResult Function(ImagesLikeImageEvent value)? likeImage,
    TResult Function(ImagesUnlikeImageEvent value)? unlikeImage,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ImagesEventCopyWith<$Res> {
  factory $ImagesEventCopyWith(
          ImagesEvent value, $Res Function(ImagesEvent) then) =
      _$ImagesEventCopyWithImpl<$Res, ImagesEvent>;
}

/// @nodoc
class _$ImagesEventCopyWithImpl<$Res, $Val extends ImagesEvent>
    implements $ImagesEventCopyWith<$Res> {
  _$ImagesEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$ImagesGetImagesEventCopyWith<$Res> {
  factory _$$ImagesGetImagesEventCopyWith(_$ImagesGetImagesEvent value,
          $Res Function(_$ImagesGetImagesEvent) then) =
      __$$ImagesGetImagesEventCopyWithImpl<$Res>;
  @useResult
  $Res call({int page});
}

/// @nodoc
class __$$ImagesGetImagesEventCopyWithImpl<$Res>
    extends _$ImagesEventCopyWithImpl<$Res, _$ImagesGetImagesEvent>
    implements _$$ImagesGetImagesEventCopyWith<$Res> {
  __$$ImagesGetImagesEventCopyWithImpl(_$ImagesGetImagesEvent _value,
      $Res Function(_$ImagesGetImagesEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? page = null,
  }) {
    return _then(_$ImagesGetImagesEvent(
      page: null == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$ImagesGetImagesEvent implements ImagesGetImagesEvent {
  const _$ImagesGetImagesEvent({required this.page});

  @override
  final int page;

  @override
  String toString() {
    return 'ImagesEvent.getImages(page: $page)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ImagesGetImagesEvent &&
            (identical(other.page, page) || other.page == page));
  }

  @override
  int get hashCode => Object.hash(runtimeType, page);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ImagesGetImagesEventCopyWith<_$ImagesGetImagesEvent> get copyWith =>
      __$$ImagesGetImagesEventCopyWithImpl<_$ImagesGetImagesEvent>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int page) getImages,
    required TResult Function(String query, int page) searchImages,
    required TResult Function(String imageId, List<UnsplashImage> images)
        likeImage,
    required TResult Function(String imageId, List<UnsplashImage> images)
        unlikeImage,
  }) {
    return getImages(page);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int page)? getImages,
    TResult? Function(String query, int page)? searchImages,
    TResult? Function(String imageId, List<UnsplashImage> images)? likeImage,
    TResult? Function(String imageId, List<UnsplashImage> images)? unlikeImage,
  }) {
    return getImages?.call(page);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int page)? getImages,
    TResult Function(String query, int page)? searchImages,
    TResult Function(String imageId, List<UnsplashImage> images)? likeImage,
    TResult Function(String imageId, List<UnsplashImage> images)? unlikeImage,
    required TResult orElse(),
  }) {
    if (getImages != null) {
      return getImages(page);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ImagesGetImagesEvent value) getImages,
    required TResult Function(ImagesSearchImagesEvent value) searchImages,
    required TResult Function(ImagesLikeImageEvent value) likeImage,
    required TResult Function(ImagesUnlikeImageEvent value) unlikeImage,
  }) {
    return getImages(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ImagesGetImagesEvent value)? getImages,
    TResult? Function(ImagesSearchImagesEvent value)? searchImages,
    TResult? Function(ImagesLikeImageEvent value)? likeImage,
    TResult? Function(ImagesUnlikeImageEvent value)? unlikeImage,
  }) {
    return getImages?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ImagesGetImagesEvent value)? getImages,
    TResult Function(ImagesSearchImagesEvent value)? searchImages,
    TResult Function(ImagesLikeImageEvent value)? likeImage,
    TResult Function(ImagesUnlikeImageEvent value)? unlikeImage,
    required TResult orElse(),
  }) {
    if (getImages != null) {
      return getImages(this);
    }
    return orElse();
  }
}

abstract class ImagesGetImagesEvent implements ImagesEvent {
  const factory ImagesGetImagesEvent({required final int page}) =
      _$ImagesGetImagesEvent;

  int get page;
  @JsonKey(ignore: true)
  _$$ImagesGetImagesEventCopyWith<_$ImagesGetImagesEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ImagesSearchImagesEventCopyWith<$Res> {
  factory _$$ImagesSearchImagesEventCopyWith(_$ImagesSearchImagesEvent value,
          $Res Function(_$ImagesSearchImagesEvent) then) =
      __$$ImagesSearchImagesEventCopyWithImpl<$Res>;
  @useResult
  $Res call({String query, int page});
}

/// @nodoc
class __$$ImagesSearchImagesEventCopyWithImpl<$Res>
    extends _$ImagesEventCopyWithImpl<$Res, _$ImagesSearchImagesEvent>
    implements _$$ImagesSearchImagesEventCopyWith<$Res> {
  __$$ImagesSearchImagesEventCopyWithImpl(_$ImagesSearchImagesEvent _value,
      $Res Function(_$ImagesSearchImagesEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? query = null,
    Object? page = null,
  }) {
    return _then(_$ImagesSearchImagesEvent(
      query: null == query
          ? _value.query
          : query // ignore: cast_nullable_to_non_nullable
              as String,
      page: null == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$ImagesSearchImagesEvent implements ImagesSearchImagesEvent {
  const _$ImagesSearchImagesEvent({required this.query, required this.page});

  @override
  final String query;
  @override
  final int page;

  @override
  String toString() {
    return 'ImagesEvent.searchImages(query: $query, page: $page)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ImagesSearchImagesEvent &&
            (identical(other.query, query) || other.query == query) &&
            (identical(other.page, page) || other.page == page));
  }

  @override
  int get hashCode => Object.hash(runtimeType, query, page);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ImagesSearchImagesEventCopyWith<_$ImagesSearchImagesEvent> get copyWith =>
      __$$ImagesSearchImagesEventCopyWithImpl<_$ImagesSearchImagesEvent>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int page) getImages,
    required TResult Function(String query, int page) searchImages,
    required TResult Function(String imageId, List<UnsplashImage> images)
        likeImage,
    required TResult Function(String imageId, List<UnsplashImage> images)
        unlikeImage,
  }) {
    return searchImages(query, page);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int page)? getImages,
    TResult? Function(String query, int page)? searchImages,
    TResult? Function(String imageId, List<UnsplashImage> images)? likeImage,
    TResult? Function(String imageId, List<UnsplashImage> images)? unlikeImage,
  }) {
    return searchImages?.call(query, page);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int page)? getImages,
    TResult Function(String query, int page)? searchImages,
    TResult Function(String imageId, List<UnsplashImage> images)? likeImage,
    TResult Function(String imageId, List<UnsplashImage> images)? unlikeImage,
    required TResult orElse(),
  }) {
    if (searchImages != null) {
      return searchImages(query, page);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ImagesGetImagesEvent value) getImages,
    required TResult Function(ImagesSearchImagesEvent value) searchImages,
    required TResult Function(ImagesLikeImageEvent value) likeImage,
    required TResult Function(ImagesUnlikeImageEvent value) unlikeImage,
  }) {
    return searchImages(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ImagesGetImagesEvent value)? getImages,
    TResult? Function(ImagesSearchImagesEvent value)? searchImages,
    TResult? Function(ImagesLikeImageEvent value)? likeImage,
    TResult? Function(ImagesUnlikeImageEvent value)? unlikeImage,
  }) {
    return searchImages?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ImagesGetImagesEvent value)? getImages,
    TResult Function(ImagesSearchImagesEvent value)? searchImages,
    TResult Function(ImagesLikeImageEvent value)? likeImage,
    TResult Function(ImagesUnlikeImageEvent value)? unlikeImage,
    required TResult orElse(),
  }) {
    if (searchImages != null) {
      return searchImages(this);
    }
    return orElse();
  }
}

abstract class ImagesSearchImagesEvent implements ImagesEvent {
  const factory ImagesSearchImagesEvent(
      {required final String query,
      required final int page}) = _$ImagesSearchImagesEvent;

  String get query;
  int get page;
  @JsonKey(ignore: true)
  _$$ImagesSearchImagesEventCopyWith<_$ImagesSearchImagesEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ImagesLikeImageEventCopyWith<$Res> {
  factory _$$ImagesLikeImageEventCopyWith(_$ImagesLikeImageEvent value,
          $Res Function(_$ImagesLikeImageEvent) then) =
      __$$ImagesLikeImageEventCopyWithImpl<$Res>;
  @useResult
  $Res call({String imageId, List<UnsplashImage> images});
}

/// @nodoc
class __$$ImagesLikeImageEventCopyWithImpl<$Res>
    extends _$ImagesEventCopyWithImpl<$Res, _$ImagesLikeImageEvent>
    implements _$$ImagesLikeImageEventCopyWith<$Res> {
  __$$ImagesLikeImageEventCopyWithImpl(_$ImagesLikeImageEvent _value,
      $Res Function(_$ImagesLikeImageEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? imageId = null,
    Object? images = null,
  }) {
    return _then(_$ImagesLikeImageEvent(
      imageId: null == imageId
          ? _value.imageId
          : imageId // ignore: cast_nullable_to_non_nullable
              as String,
      images: null == images
          ? _value._images
          : images // ignore: cast_nullable_to_non_nullable
              as List<UnsplashImage>,
    ));
  }
}

/// @nodoc

class _$ImagesLikeImageEvent implements ImagesLikeImageEvent {
  const _$ImagesLikeImageEvent(
      {required this.imageId, required final List<UnsplashImage> images})
      : _images = images;

  @override
  final String imageId;
  final List<UnsplashImage> _images;
  @override
  List<UnsplashImage> get images {
    if (_images is EqualUnmodifiableListView) return _images;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_images);
  }

  @override
  String toString() {
    return 'ImagesEvent.likeImage(imageId: $imageId, images: $images)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ImagesLikeImageEvent &&
            (identical(other.imageId, imageId) || other.imageId == imageId) &&
            const DeepCollectionEquality().equals(other._images, _images));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, imageId, const DeepCollectionEquality().hash(_images));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ImagesLikeImageEventCopyWith<_$ImagesLikeImageEvent> get copyWith =>
      __$$ImagesLikeImageEventCopyWithImpl<_$ImagesLikeImageEvent>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int page) getImages,
    required TResult Function(String query, int page) searchImages,
    required TResult Function(String imageId, List<UnsplashImage> images)
        likeImage,
    required TResult Function(String imageId, List<UnsplashImage> images)
        unlikeImage,
  }) {
    return likeImage(imageId, images);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int page)? getImages,
    TResult? Function(String query, int page)? searchImages,
    TResult? Function(String imageId, List<UnsplashImage> images)? likeImage,
    TResult? Function(String imageId, List<UnsplashImage> images)? unlikeImage,
  }) {
    return likeImage?.call(imageId, images);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int page)? getImages,
    TResult Function(String query, int page)? searchImages,
    TResult Function(String imageId, List<UnsplashImage> images)? likeImage,
    TResult Function(String imageId, List<UnsplashImage> images)? unlikeImage,
    required TResult orElse(),
  }) {
    if (likeImage != null) {
      return likeImage(imageId, images);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ImagesGetImagesEvent value) getImages,
    required TResult Function(ImagesSearchImagesEvent value) searchImages,
    required TResult Function(ImagesLikeImageEvent value) likeImage,
    required TResult Function(ImagesUnlikeImageEvent value) unlikeImage,
  }) {
    return likeImage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ImagesGetImagesEvent value)? getImages,
    TResult? Function(ImagesSearchImagesEvent value)? searchImages,
    TResult? Function(ImagesLikeImageEvent value)? likeImage,
    TResult? Function(ImagesUnlikeImageEvent value)? unlikeImage,
  }) {
    return likeImage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ImagesGetImagesEvent value)? getImages,
    TResult Function(ImagesSearchImagesEvent value)? searchImages,
    TResult Function(ImagesLikeImageEvent value)? likeImage,
    TResult Function(ImagesUnlikeImageEvent value)? unlikeImage,
    required TResult orElse(),
  }) {
    if (likeImage != null) {
      return likeImage(this);
    }
    return orElse();
  }
}

abstract class ImagesLikeImageEvent implements ImagesEvent {
  const factory ImagesLikeImageEvent(
      {required final String imageId,
      required final List<UnsplashImage> images}) = _$ImagesLikeImageEvent;

  String get imageId;
  List<UnsplashImage> get images;
  @JsonKey(ignore: true)
  _$$ImagesLikeImageEventCopyWith<_$ImagesLikeImageEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ImagesUnlikeImageEventCopyWith<$Res> {
  factory _$$ImagesUnlikeImageEventCopyWith(_$ImagesUnlikeImageEvent value,
          $Res Function(_$ImagesUnlikeImageEvent) then) =
      __$$ImagesUnlikeImageEventCopyWithImpl<$Res>;
  @useResult
  $Res call({String imageId, List<UnsplashImage> images});
}

/// @nodoc
class __$$ImagesUnlikeImageEventCopyWithImpl<$Res>
    extends _$ImagesEventCopyWithImpl<$Res, _$ImagesUnlikeImageEvent>
    implements _$$ImagesUnlikeImageEventCopyWith<$Res> {
  __$$ImagesUnlikeImageEventCopyWithImpl(_$ImagesUnlikeImageEvent _value,
      $Res Function(_$ImagesUnlikeImageEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? imageId = null,
    Object? images = null,
  }) {
    return _then(_$ImagesUnlikeImageEvent(
      imageId: null == imageId
          ? _value.imageId
          : imageId // ignore: cast_nullable_to_non_nullable
              as String,
      images: null == images
          ? _value._images
          : images // ignore: cast_nullable_to_non_nullable
              as List<UnsplashImage>,
    ));
  }
}

/// @nodoc

class _$ImagesUnlikeImageEvent implements ImagesUnlikeImageEvent {
  const _$ImagesUnlikeImageEvent(
      {required this.imageId, required final List<UnsplashImage> images})
      : _images = images;

  @override
  final String imageId;
  final List<UnsplashImage> _images;
  @override
  List<UnsplashImage> get images {
    if (_images is EqualUnmodifiableListView) return _images;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_images);
  }

  @override
  String toString() {
    return 'ImagesEvent.unlikeImage(imageId: $imageId, images: $images)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ImagesUnlikeImageEvent &&
            (identical(other.imageId, imageId) || other.imageId == imageId) &&
            const DeepCollectionEquality().equals(other._images, _images));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, imageId, const DeepCollectionEquality().hash(_images));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ImagesUnlikeImageEventCopyWith<_$ImagesUnlikeImageEvent> get copyWith =>
      __$$ImagesUnlikeImageEventCopyWithImpl<_$ImagesUnlikeImageEvent>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int page) getImages,
    required TResult Function(String query, int page) searchImages,
    required TResult Function(String imageId, List<UnsplashImage> images)
        likeImage,
    required TResult Function(String imageId, List<UnsplashImage> images)
        unlikeImage,
  }) {
    return unlikeImage(imageId, images);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int page)? getImages,
    TResult? Function(String query, int page)? searchImages,
    TResult? Function(String imageId, List<UnsplashImage> images)? likeImage,
    TResult? Function(String imageId, List<UnsplashImage> images)? unlikeImage,
  }) {
    return unlikeImage?.call(imageId, images);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int page)? getImages,
    TResult Function(String query, int page)? searchImages,
    TResult Function(String imageId, List<UnsplashImage> images)? likeImage,
    TResult Function(String imageId, List<UnsplashImage> images)? unlikeImage,
    required TResult orElse(),
  }) {
    if (unlikeImage != null) {
      return unlikeImage(imageId, images);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ImagesGetImagesEvent value) getImages,
    required TResult Function(ImagesSearchImagesEvent value) searchImages,
    required TResult Function(ImagesLikeImageEvent value) likeImage,
    required TResult Function(ImagesUnlikeImageEvent value) unlikeImage,
  }) {
    return unlikeImage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ImagesGetImagesEvent value)? getImages,
    TResult? Function(ImagesSearchImagesEvent value)? searchImages,
    TResult? Function(ImagesLikeImageEvent value)? likeImage,
    TResult? Function(ImagesUnlikeImageEvent value)? unlikeImage,
  }) {
    return unlikeImage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ImagesGetImagesEvent value)? getImages,
    TResult Function(ImagesSearchImagesEvent value)? searchImages,
    TResult Function(ImagesLikeImageEvent value)? likeImage,
    TResult Function(ImagesUnlikeImageEvent value)? unlikeImage,
    required TResult orElse(),
  }) {
    if (unlikeImage != null) {
      return unlikeImage(this);
    }
    return orElse();
  }
}

abstract class ImagesUnlikeImageEvent implements ImagesEvent {
  const factory ImagesUnlikeImageEvent(
      {required final String imageId,
      required final List<UnsplashImage> images}) = _$ImagesUnlikeImageEvent;

  String get imageId;
  List<UnsplashImage> get images;
  @JsonKey(ignore: true)
  _$$ImagesUnlikeImageEventCopyWith<_$ImagesUnlikeImageEvent> get copyWith =>
      throw _privateConstructorUsedError;
}
