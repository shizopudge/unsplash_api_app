// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'image_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ImageState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(UnsplashImage image) loaded,
    required TResult Function(String message) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(UnsplashImage image)? loaded,
    TResult? Function(String message)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(UnsplashImage image)? loaded,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ImageInitialState value) initial,
    required TResult Function(_ImageLoadingState value) loading,
    required TResult Function(_ImagesLoadedState value) loaded,
    required TResult Function(_ImageErrorState value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ImageInitialState value)? initial,
    TResult? Function(_ImageLoadingState value)? loading,
    TResult? Function(_ImagesLoadedState value)? loaded,
    TResult? Function(_ImageErrorState value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ImageInitialState value)? initial,
    TResult Function(_ImageLoadingState value)? loading,
    TResult Function(_ImagesLoadedState value)? loaded,
    TResult Function(_ImageErrorState value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ImageStateCopyWith<$Res> {
  factory $ImageStateCopyWith(
          ImageState value, $Res Function(ImageState) then) =
      _$ImageStateCopyWithImpl<$Res, ImageState>;
}

/// @nodoc
class _$ImageStateCopyWithImpl<$Res, $Val extends ImageState>
    implements $ImageStateCopyWith<$Res> {
  _$ImageStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_ImageInitialStateCopyWith<$Res> {
  factory _$$_ImageInitialStateCopyWith(_$_ImageInitialState value,
          $Res Function(_$_ImageInitialState) then) =
      __$$_ImageInitialStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_ImageInitialStateCopyWithImpl<$Res>
    extends _$ImageStateCopyWithImpl<$Res, _$_ImageInitialState>
    implements _$$_ImageInitialStateCopyWith<$Res> {
  __$$_ImageInitialStateCopyWithImpl(
      _$_ImageInitialState _value, $Res Function(_$_ImageInitialState) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_ImageInitialState implements _ImageInitialState {
  const _$_ImageInitialState();

  @override
  String toString() {
    return 'ImageState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_ImageInitialState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(UnsplashImage image) loaded,
    required TResult Function(String message) error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(UnsplashImage image)? loaded,
    TResult? Function(String message)? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(UnsplashImage image)? loaded,
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
    required TResult Function(_ImageInitialState value) initial,
    required TResult Function(_ImageLoadingState value) loading,
    required TResult Function(_ImagesLoadedState value) loaded,
    required TResult Function(_ImageErrorState value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ImageInitialState value)? initial,
    TResult? Function(_ImageLoadingState value)? loading,
    TResult? Function(_ImagesLoadedState value)? loaded,
    TResult? Function(_ImageErrorState value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ImageInitialState value)? initial,
    TResult Function(_ImageLoadingState value)? loading,
    TResult Function(_ImagesLoadedState value)? loaded,
    TResult Function(_ImageErrorState value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _ImageInitialState implements ImageState {
  const factory _ImageInitialState() = _$_ImageInitialState;
}

/// @nodoc
abstract class _$$_ImageLoadingStateCopyWith<$Res> {
  factory _$$_ImageLoadingStateCopyWith(_$_ImageLoadingState value,
          $Res Function(_$_ImageLoadingState) then) =
      __$$_ImageLoadingStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_ImageLoadingStateCopyWithImpl<$Res>
    extends _$ImageStateCopyWithImpl<$Res, _$_ImageLoadingState>
    implements _$$_ImageLoadingStateCopyWith<$Res> {
  __$$_ImageLoadingStateCopyWithImpl(
      _$_ImageLoadingState _value, $Res Function(_$_ImageLoadingState) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_ImageLoadingState implements _ImageLoadingState {
  const _$_ImageLoadingState();

  @override
  String toString() {
    return 'ImageState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_ImageLoadingState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(UnsplashImage image) loaded,
    required TResult Function(String message) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(UnsplashImage image)? loaded,
    TResult? Function(String message)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(UnsplashImage image)? loaded,
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
    required TResult Function(_ImageInitialState value) initial,
    required TResult Function(_ImageLoadingState value) loading,
    required TResult Function(_ImagesLoadedState value) loaded,
    required TResult Function(_ImageErrorState value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ImageInitialState value)? initial,
    TResult? Function(_ImageLoadingState value)? loading,
    TResult? Function(_ImagesLoadedState value)? loaded,
    TResult? Function(_ImageErrorState value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ImageInitialState value)? initial,
    TResult Function(_ImageLoadingState value)? loading,
    TResult Function(_ImagesLoadedState value)? loaded,
    TResult Function(_ImageErrorState value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _ImageLoadingState implements ImageState {
  const factory _ImageLoadingState() = _$_ImageLoadingState;
}

/// @nodoc
abstract class _$$_ImagesLoadedStateCopyWith<$Res> {
  factory _$$_ImagesLoadedStateCopyWith(_$_ImagesLoadedState value,
          $Res Function(_$_ImagesLoadedState) then) =
      __$$_ImagesLoadedStateCopyWithImpl<$Res>;
  @useResult
  $Res call({UnsplashImage image});

  $UnsplashImageCopyWith<$Res> get image;
}

/// @nodoc
class __$$_ImagesLoadedStateCopyWithImpl<$Res>
    extends _$ImageStateCopyWithImpl<$Res, _$_ImagesLoadedState>
    implements _$$_ImagesLoadedStateCopyWith<$Res> {
  __$$_ImagesLoadedStateCopyWithImpl(
      _$_ImagesLoadedState _value, $Res Function(_$_ImagesLoadedState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? image = null,
  }) {
    return _then(_$_ImagesLoadedState(
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as UnsplashImage,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $UnsplashImageCopyWith<$Res> get image {
    return $UnsplashImageCopyWith<$Res>(_value.image, (value) {
      return _then(_value.copyWith(image: value));
    });
  }
}

/// @nodoc

class _$_ImagesLoadedState implements _ImagesLoadedState {
  const _$_ImagesLoadedState({required this.image});

  @override
  final UnsplashImage image;

  @override
  String toString() {
    return 'ImageState.loaded(image: $image)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ImagesLoadedState &&
            (identical(other.image, image) || other.image == image));
  }

  @override
  int get hashCode => Object.hash(runtimeType, image);

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
    required TResult Function(UnsplashImage image) loaded,
    required TResult Function(String message) error,
  }) {
    return loaded(image);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(UnsplashImage image)? loaded,
    TResult? Function(String message)? error,
  }) {
    return loaded?.call(image);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(UnsplashImage image)? loaded,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(image);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ImageInitialState value) initial,
    required TResult Function(_ImageLoadingState value) loading,
    required TResult Function(_ImagesLoadedState value) loaded,
    required TResult Function(_ImageErrorState value) error,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ImageInitialState value)? initial,
    TResult? Function(_ImageLoadingState value)? loading,
    TResult? Function(_ImagesLoadedState value)? loaded,
    TResult? Function(_ImageErrorState value)? error,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ImageInitialState value)? initial,
    TResult Function(_ImageLoadingState value)? loading,
    TResult Function(_ImagesLoadedState value)? loaded,
    TResult Function(_ImageErrorState value)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class _ImagesLoadedState implements ImageState {
  const factory _ImagesLoadedState({required final UnsplashImage image}) =
      _$_ImagesLoadedState;

  UnsplashImage get image;
  @JsonKey(ignore: true)
  _$$_ImagesLoadedStateCopyWith<_$_ImagesLoadedState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_ImageErrorStateCopyWith<$Res> {
  factory _$$_ImageErrorStateCopyWith(
          _$_ImageErrorState value, $Res Function(_$_ImageErrorState) then) =
      __$$_ImageErrorStateCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$_ImageErrorStateCopyWithImpl<$Res>
    extends _$ImageStateCopyWithImpl<$Res, _$_ImageErrorState>
    implements _$$_ImageErrorStateCopyWith<$Res> {
  __$$_ImageErrorStateCopyWithImpl(
      _$_ImageErrorState _value, $Res Function(_$_ImageErrorState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$_ImageErrorState(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_ImageErrorState implements _ImageErrorState {
  const _$_ImageErrorState({required this.message});

  @override
  final String message;

  @override
  String toString() {
    return 'ImageState.error(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ImageErrorState &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ImageErrorStateCopyWith<_$_ImageErrorState> get copyWith =>
      __$$_ImageErrorStateCopyWithImpl<_$_ImageErrorState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(UnsplashImage image) loaded,
    required TResult Function(String message) error,
  }) {
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(UnsplashImage image)? loaded,
    TResult? Function(String message)? error,
  }) {
    return error?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(UnsplashImage image)? loaded,
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
    required TResult Function(_ImageInitialState value) initial,
    required TResult Function(_ImageLoadingState value) loading,
    required TResult Function(_ImagesLoadedState value) loaded,
    required TResult Function(_ImageErrorState value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ImageInitialState value)? initial,
    TResult? Function(_ImageLoadingState value)? loading,
    TResult? Function(_ImagesLoadedState value)? loaded,
    TResult? Function(_ImageErrorState value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ImageInitialState value)? initial,
    TResult Function(_ImageLoadingState value)? loading,
    TResult Function(_ImagesLoadedState value)? loaded,
    TResult Function(_ImageErrorState value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _ImageErrorState implements ImageState {
  const factory _ImageErrorState({required final String message}) =
      _$_ImageErrorState;

  String get message;
  @JsonKey(ignore: true)
  _$$_ImageErrorStateCopyWith<_$_ImageErrorState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ImageEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String id) getOneImage,
    required TResult Function(UnsplashImage image) likeImage,
    required TResult Function(UnsplashImage image) unlikeImage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String id)? getOneImage,
    TResult? Function(UnsplashImage image)? likeImage,
    TResult? Function(UnsplashImage image)? unlikeImage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String id)? getOneImage,
    TResult Function(UnsplashImage image)? likeImage,
    TResult Function(UnsplashImage image)? unlikeImage,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ImageGetOneImageEvent value) getOneImage,
    required TResult Function(ImageLikeImageEvent value) likeImage,
    required TResult Function(ImageUnlikeImageEvent value) unlikeImage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ImageGetOneImageEvent value)? getOneImage,
    TResult? Function(ImageLikeImageEvent value)? likeImage,
    TResult? Function(ImageUnlikeImageEvent value)? unlikeImage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ImageGetOneImageEvent value)? getOneImage,
    TResult Function(ImageLikeImageEvent value)? likeImage,
    TResult Function(ImageUnlikeImageEvent value)? unlikeImage,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ImageEventCopyWith<$Res> {
  factory $ImageEventCopyWith(
          ImageEvent value, $Res Function(ImageEvent) then) =
      _$ImageEventCopyWithImpl<$Res, ImageEvent>;
}

/// @nodoc
class _$ImageEventCopyWithImpl<$Res, $Val extends ImageEvent>
    implements $ImageEventCopyWith<$Res> {
  _$ImageEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$ImageGetOneImageEventCopyWith<$Res> {
  factory _$$ImageGetOneImageEventCopyWith(_$ImageGetOneImageEvent value,
          $Res Function(_$ImageGetOneImageEvent) then) =
      __$$ImageGetOneImageEventCopyWithImpl<$Res>;
  @useResult
  $Res call({String id});
}

/// @nodoc
class __$$ImageGetOneImageEventCopyWithImpl<$Res>
    extends _$ImageEventCopyWithImpl<$Res, _$ImageGetOneImageEvent>
    implements _$$ImageGetOneImageEventCopyWith<$Res> {
  __$$ImageGetOneImageEventCopyWithImpl(_$ImageGetOneImageEvent _value,
      $Res Function(_$ImageGetOneImageEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
  }) {
    return _then(_$ImageGetOneImageEvent(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ImageGetOneImageEvent implements ImageGetOneImageEvent {
  const _$ImageGetOneImageEvent({required this.id});

  @override
  final String id;

  @override
  String toString() {
    return 'ImageEvent.getOneImage(id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ImageGetOneImageEvent &&
            (identical(other.id, id) || other.id == id));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ImageGetOneImageEventCopyWith<_$ImageGetOneImageEvent> get copyWith =>
      __$$ImageGetOneImageEventCopyWithImpl<_$ImageGetOneImageEvent>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String id) getOneImage,
    required TResult Function(UnsplashImage image) likeImage,
    required TResult Function(UnsplashImage image) unlikeImage,
  }) {
    return getOneImage(id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String id)? getOneImage,
    TResult? Function(UnsplashImage image)? likeImage,
    TResult? Function(UnsplashImage image)? unlikeImage,
  }) {
    return getOneImage?.call(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String id)? getOneImage,
    TResult Function(UnsplashImage image)? likeImage,
    TResult Function(UnsplashImage image)? unlikeImage,
    required TResult orElse(),
  }) {
    if (getOneImage != null) {
      return getOneImage(id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ImageGetOneImageEvent value) getOneImage,
    required TResult Function(ImageLikeImageEvent value) likeImage,
    required TResult Function(ImageUnlikeImageEvent value) unlikeImage,
  }) {
    return getOneImage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ImageGetOneImageEvent value)? getOneImage,
    TResult? Function(ImageLikeImageEvent value)? likeImage,
    TResult? Function(ImageUnlikeImageEvent value)? unlikeImage,
  }) {
    return getOneImage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ImageGetOneImageEvent value)? getOneImage,
    TResult Function(ImageLikeImageEvent value)? likeImage,
    TResult Function(ImageUnlikeImageEvent value)? unlikeImage,
    required TResult orElse(),
  }) {
    if (getOneImage != null) {
      return getOneImage(this);
    }
    return orElse();
  }
}

abstract class ImageGetOneImageEvent implements ImageEvent {
  const factory ImageGetOneImageEvent({required final String id}) =
      _$ImageGetOneImageEvent;

  String get id;
  @JsonKey(ignore: true)
  _$$ImageGetOneImageEventCopyWith<_$ImageGetOneImageEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ImageLikeImageEventCopyWith<$Res> {
  factory _$$ImageLikeImageEventCopyWith(_$ImageLikeImageEvent value,
          $Res Function(_$ImageLikeImageEvent) then) =
      __$$ImageLikeImageEventCopyWithImpl<$Res>;
  @useResult
  $Res call({UnsplashImage image});

  $UnsplashImageCopyWith<$Res> get image;
}

/// @nodoc
class __$$ImageLikeImageEventCopyWithImpl<$Res>
    extends _$ImageEventCopyWithImpl<$Res, _$ImageLikeImageEvent>
    implements _$$ImageLikeImageEventCopyWith<$Res> {
  __$$ImageLikeImageEventCopyWithImpl(
      _$ImageLikeImageEvent _value, $Res Function(_$ImageLikeImageEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? image = null,
  }) {
    return _then(_$ImageLikeImageEvent(
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as UnsplashImage,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $UnsplashImageCopyWith<$Res> get image {
    return $UnsplashImageCopyWith<$Res>(_value.image, (value) {
      return _then(_value.copyWith(image: value));
    });
  }
}

/// @nodoc

class _$ImageLikeImageEvent implements ImageLikeImageEvent {
  const _$ImageLikeImageEvent({required this.image});

  @override
  final UnsplashImage image;

  @override
  String toString() {
    return 'ImageEvent.likeImage(image: $image)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ImageLikeImageEvent &&
            (identical(other.image, image) || other.image == image));
  }

  @override
  int get hashCode => Object.hash(runtimeType, image);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ImageLikeImageEventCopyWith<_$ImageLikeImageEvent> get copyWith =>
      __$$ImageLikeImageEventCopyWithImpl<_$ImageLikeImageEvent>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String id) getOneImage,
    required TResult Function(UnsplashImage image) likeImage,
    required TResult Function(UnsplashImage image) unlikeImage,
  }) {
    return likeImage(image);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String id)? getOneImage,
    TResult? Function(UnsplashImage image)? likeImage,
    TResult? Function(UnsplashImage image)? unlikeImage,
  }) {
    return likeImage?.call(image);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String id)? getOneImage,
    TResult Function(UnsplashImage image)? likeImage,
    TResult Function(UnsplashImage image)? unlikeImage,
    required TResult orElse(),
  }) {
    if (likeImage != null) {
      return likeImage(image);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ImageGetOneImageEvent value) getOneImage,
    required TResult Function(ImageLikeImageEvent value) likeImage,
    required TResult Function(ImageUnlikeImageEvent value) unlikeImage,
  }) {
    return likeImage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ImageGetOneImageEvent value)? getOneImage,
    TResult? Function(ImageLikeImageEvent value)? likeImage,
    TResult? Function(ImageUnlikeImageEvent value)? unlikeImage,
  }) {
    return likeImage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ImageGetOneImageEvent value)? getOneImage,
    TResult Function(ImageLikeImageEvent value)? likeImage,
    TResult Function(ImageUnlikeImageEvent value)? unlikeImage,
    required TResult orElse(),
  }) {
    if (likeImage != null) {
      return likeImage(this);
    }
    return orElse();
  }
}

abstract class ImageLikeImageEvent implements ImageEvent {
  const factory ImageLikeImageEvent({required final UnsplashImage image}) =
      _$ImageLikeImageEvent;

  UnsplashImage get image;
  @JsonKey(ignore: true)
  _$$ImageLikeImageEventCopyWith<_$ImageLikeImageEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ImageUnlikeImageEventCopyWith<$Res> {
  factory _$$ImageUnlikeImageEventCopyWith(_$ImageUnlikeImageEvent value,
          $Res Function(_$ImageUnlikeImageEvent) then) =
      __$$ImageUnlikeImageEventCopyWithImpl<$Res>;
  @useResult
  $Res call({UnsplashImage image});

  $UnsplashImageCopyWith<$Res> get image;
}

/// @nodoc
class __$$ImageUnlikeImageEventCopyWithImpl<$Res>
    extends _$ImageEventCopyWithImpl<$Res, _$ImageUnlikeImageEvent>
    implements _$$ImageUnlikeImageEventCopyWith<$Res> {
  __$$ImageUnlikeImageEventCopyWithImpl(_$ImageUnlikeImageEvent _value,
      $Res Function(_$ImageUnlikeImageEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? image = null,
  }) {
    return _then(_$ImageUnlikeImageEvent(
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as UnsplashImage,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $UnsplashImageCopyWith<$Res> get image {
    return $UnsplashImageCopyWith<$Res>(_value.image, (value) {
      return _then(_value.copyWith(image: value));
    });
  }
}

/// @nodoc

class _$ImageUnlikeImageEvent implements ImageUnlikeImageEvent {
  const _$ImageUnlikeImageEvent({required this.image});

  @override
  final UnsplashImage image;

  @override
  String toString() {
    return 'ImageEvent.unlikeImage(image: $image)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ImageUnlikeImageEvent &&
            (identical(other.image, image) || other.image == image));
  }

  @override
  int get hashCode => Object.hash(runtimeType, image);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ImageUnlikeImageEventCopyWith<_$ImageUnlikeImageEvent> get copyWith =>
      __$$ImageUnlikeImageEventCopyWithImpl<_$ImageUnlikeImageEvent>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String id) getOneImage,
    required TResult Function(UnsplashImage image) likeImage,
    required TResult Function(UnsplashImage image) unlikeImage,
  }) {
    return unlikeImage(image);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String id)? getOneImage,
    TResult? Function(UnsplashImage image)? likeImage,
    TResult? Function(UnsplashImage image)? unlikeImage,
  }) {
    return unlikeImage?.call(image);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String id)? getOneImage,
    TResult Function(UnsplashImage image)? likeImage,
    TResult Function(UnsplashImage image)? unlikeImage,
    required TResult orElse(),
  }) {
    if (unlikeImage != null) {
      return unlikeImage(image);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ImageGetOneImageEvent value) getOneImage,
    required TResult Function(ImageLikeImageEvent value) likeImage,
    required TResult Function(ImageUnlikeImageEvent value) unlikeImage,
  }) {
    return unlikeImage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ImageGetOneImageEvent value)? getOneImage,
    TResult? Function(ImageLikeImageEvent value)? likeImage,
    TResult? Function(ImageUnlikeImageEvent value)? unlikeImage,
  }) {
    return unlikeImage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ImageGetOneImageEvent value)? getOneImage,
    TResult Function(ImageLikeImageEvent value)? likeImage,
    TResult Function(ImageUnlikeImageEvent value)? unlikeImage,
    required TResult orElse(),
  }) {
    if (unlikeImage != null) {
      return unlikeImage(this);
    }
    return orElse();
  }
}

abstract class ImageUnlikeImageEvent implements ImageEvent {
  const factory ImageUnlikeImageEvent({required final UnsplashImage image}) =
      _$ImageUnlikeImageEvent;

  UnsplashImage get image;
  @JsonKey(ignore: true)
  _$$ImageUnlikeImageEventCopyWith<_$ImageUnlikeImageEvent> get copyWith =>
      throw _privateConstructorUsedError;
}
