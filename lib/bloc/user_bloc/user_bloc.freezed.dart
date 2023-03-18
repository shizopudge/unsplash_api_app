// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$UserEvent {
  String get username => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String username) getImages,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String username)? getImages,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String username)? getImages,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UserGetUserEvent value) getImages,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(UserGetUserEvent value)? getImages,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UserGetUserEvent value)? getImages,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $UserEventCopyWith<UserEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserEventCopyWith<$Res> {
  factory $UserEventCopyWith(UserEvent value, $Res Function(UserEvent) then) =
      _$UserEventCopyWithImpl<$Res, UserEvent>;
  @useResult
  $Res call({String username});
}

/// @nodoc
class _$UserEventCopyWithImpl<$Res, $Val extends UserEvent>
    implements $UserEventCopyWith<$Res> {
  _$UserEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? username = null,
  }) {
    return _then(_value.copyWith(
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UserGetUserEventCopyWith<$Res>
    implements $UserEventCopyWith<$Res> {
  factory _$$UserGetUserEventCopyWith(
          _$UserGetUserEvent value, $Res Function(_$UserGetUserEvent) then) =
      __$$UserGetUserEventCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String username});
}

/// @nodoc
class __$$UserGetUserEventCopyWithImpl<$Res>
    extends _$UserEventCopyWithImpl<$Res, _$UserGetUserEvent>
    implements _$$UserGetUserEventCopyWith<$Res> {
  __$$UserGetUserEventCopyWithImpl(
      _$UserGetUserEvent _value, $Res Function(_$UserGetUserEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? username = null,
  }) {
    return _then(_$UserGetUserEvent(
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$UserGetUserEvent implements UserGetUserEvent {
  const _$UserGetUserEvent({required this.username});

  @override
  final String username;

  @override
  String toString() {
    return 'UserEvent.getImages(username: $username)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserGetUserEvent &&
            (identical(other.username, username) ||
                other.username == username));
  }

  @override
  int get hashCode => Object.hash(runtimeType, username);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UserGetUserEventCopyWith<_$UserGetUserEvent> get copyWith =>
      __$$UserGetUserEventCopyWithImpl<_$UserGetUserEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String username) getImages,
  }) {
    return getImages(username);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String username)? getImages,
  }) {
    return getImages?.call(username);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String username)? getImages,
    required TResult orElse(),
  }) {
    if (getImages != null) {
      return getImages(username);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UserGetUserEvent value) getImages,
  }) {
    return getImages(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(UserGetUserEvent value)? getImages,
  }) {
    return getImages?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UserGetUserEvent value)? getImages,
    required TResult orElse(),
  }) {
    if (getImages != null) {
      return getImages(this);
    }
    return orElse();
  }
}

abstract class UserGetUserEvent implements UserEvent {
  const factory UserGetUserEvent({required final String username}) =
      _$UserGetUserEvent;

  @override
  String get username;
  @override
  @JsonKey(ignore: true)
  _$$UserGetUserEventCopyWith<_$UserGetUserEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$UserState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(Profile user) loaded,
    required TResult Function(String message) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(Profile user)? loaded,
    TResult? Function(String message)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Profile user)? loaded,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UserInitialState value) initial,
    required TResult Function(_UserLoadingState value) loading,
    required TResult Function(_UserLoadedState value) loaded,
    required TResult Function(_UserErrorState value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_UserInitialState value)? initial,
    TResult? Function(_UserLoadingState value)? loading,
    TResult? Function(_UserLoadedState value)? loaded,
    TResult? Function(_UserErrorState value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UserInitialState value)? initial,
    TResult Function(_UserLoadingState value)? loading,
    TResult Function(_UserLoadedState value)? loaded,
    TResult Function(_UserErrorState value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserStateCopyWith<$Res> {
  factory $UserStateCopyWith(UserState value, $Res Function(UserState) then) =
      _$UserStateCopyWithImpl<$Res, UserState>;
}

/// @nodoc
class _$UserStateCopyWithImpl<$Res, $Val extends UserState>
    implements $UserStateCopyWith<$Res> {
  _$UserStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_UserInitialStateCopyWith<$Res> {
  factory _$$_UserInitialStateCopyWith(
          _$_UserInitialState value, $Res Function(_$_UserInitialState) then) =
      __$$_UserInitialStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_UserInitialStateCopyWithImpl<$Res>
    extends _$UserStateCopyWithImpl<$Res, _$_UserInitialState>
    implements _$$_UserInitialStateCopyWith<$Res> {
  __$$_UserInitialStateCopyWithImpl(
      _$_UserInitialState _value, $Res Function(_$_UserInitialState) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_UserInitialState implements _UserInitialState {
  const _$_UserInitialState();

  @override
  String toString() {
    return 'UserState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_UserInitialState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(Profile user) loaded,
    required TResult Function(String message) error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(Profile user)? loaded,
    TResult? Function(String message)? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Profile user)? loaded,
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
    required TResult Function(_UserInitialState value) initial,
    required TResult Function(_UserLoadingState value) loading,
    required TResult Function(_UserLoadedState value) loaded,
    required TResult Function(_UserErrorState value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_UserInitialState value)? initial,
    TResult? Function(_UserLoadingState value)? loading,
    TResult? Function(_UserLoadedState value)? loaded,
    TResult? Function(_UserErrorState value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UserInitialState value)? initial,
    TResult Function(_UserLoadingState value)? loading,
    TResult Function(_UserLoadedState value)? loaded,
    TResult Function(_UserErrorState value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _UserInitialState implements UserState {
  const factory _UserInitialState() = _$_UserInitialState;
}

/// @nodoc
abstract class _$$_UserLoadingStateCopyWith<$Res> {
  factory _$$_UserLoadingStateCopyWith(
          _$_UserLoadingState value, $Res Function(_$_UserLoadingState) then) =
      __$$_UserLoadingStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_UserLoadingStateCopyWithImpl<$Res>
    extends _$UserStateCopyWithImpl<$Res, _$_UserLoadingState>
    implements _$$_UserLoadingStateCopyWith<$Res> {
  __$$_UserLoadingStateCopyWithImpl(
      _$_UserLoadingState _value, $Res Function(_$_UserLoadingState) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_UserLoadingState implements _UserLoadingState {
  const _$_UserLoadingState();

  @override
  String toString() {
    return 'UserState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_UserLoadingState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(Profile user) loaded,
    required TResult Function(String message) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(Profile user)? loaded,
    TResult? Function(String message)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Profile user)? loaded,
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
    required TResult Function(_UserInitialState value) initial,
    required TResult Function(_UserLoadingState value) loading,
    required TResult Function(_UserLoadedState value) loaded,
    required TResult Function(_UserErrorState value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_UserInitialState value)? initial,
    TResult? Function(_UserLoadingState value)? loading,
    TResult? Function(_UserLoadedState value)? loaded,
    TResult? Function(_UserErrorState value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UserInitialState value)? initial,
    TResult Function(_UserLoadingState value)? loading,
    TResult Function(_UserLoadedState value)? loaded,
    TResult Function(_UserErrorState value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _UserLoadingState implements UserState {
  const factory _UserLoadingState() = _$_UserLoadingState;
}

/// @nodoc
abstract class _$$_UserLoadedStateCopyWith<$Res> {
  factory _$$_UserLoadedStateCopyWith(
          _$_UserLoadedState value, $Res Function(_$_UserLoadedState) then) =
      __$$_UserLoadedStateCopyWithImpl<$Res>;
  @useResult
  $Res call({Profile user});
}

/// @nodoc
class __$$_UserLoadedStateCopyWithImpl<$Res>
    extends _$UserStateCopyWithImpl<$Res, _$_UserLoadedState>
    implements _$$_UserLoadedStateCopyWith<$Res> {
  __$$_UserLoadedStateCopyWithImpl(
      _$_UserLoadedState _value, $Res Function(_$_UserLoadedState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = freezed,
  }) {
    return _then(_$_UserLoadedState(
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as Profile,
    ));
  }
}

/// @nodoc

class _$_UserLoadedState implements _UserLoadedState {
  const _$_UserLoadedState({required this.user});

  @override
  final Profile user;

  @override
  String toString() {
    return 'UserState.loaded(user: $user)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UserLoadedState &&
            const DeepCollectionEquality().equals(other.user, user));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(user));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UserLoadedStateCopyWith<_$_UserLoadedState> get copyWith =>
      __$$_UserLoadedStateCopyWithImpl<_$_UserLoadedState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(Profile user) loaded,
    required TResult Function(String message) error,
  }) {
    return loaded(user);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(Profile user)? loaded,
    TResult? Function(String message)? error,
  }) {
    return loaded?.call(user);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Profile user)? loaded,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(user);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UserInitialState value) initial,
    required TResult Function(_UserLoadingState value) loading,
    required TResult Function(_UserLoadedState value) loaded,
    required TResult Function(_UserErrorState value) error,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_UserInitialState value)? initial,
    TResult? Function(_UserLoadingState value)? loading,
    TResult? Function(_UserLoadedState value)? loaded,
    TResult? Function(_UserErrorState value)? error,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UserInitialState value)? initial,
    TResult Function(_UserLoadingState value)? loading,
    TResult Function(_UserLoadedState value)? loaded,
    TResult Function(_UserErrorState value)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class _UserLoadedState implements UserState {
  const factory _UserLoadedState({required final Profile user}) =
      _$_UserLoadedState;

  Profile get user;
  @JsonKey(ignore: true)
  _$$_UserLoadedStateCopyWith<_$_UserLoadedState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_UserErrorStateCopyWith<$Res> {
  factory _$$_UserErrorStateCopyWith(
          _$_UserErrorState value, $Res Function(_$_UserErrorState) then) =
      __$$_UserErrorStateCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$_UserErrorStateCopyWithImpl<$Res>
    extends _$UserStateCopyWithImpl<$Res, _$_UserErrorState>
    implements _$$_UserErrorStateCopyWith<$Res> {
  __$$_UserErrorStateCopyWithImpl(
      _$_UserErrorState _value, $Res Function(_$_UserErrorState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$_UserErrorState(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_UserErrorState implements _UserErrorState {
  const _$_UserErrorState({required this.message});

  @override
  final String message;

  @override
  String toString() {
    return 'UserState.error(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UserErrorState &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UserErrorStateCopyWith<_$_UserErrorState> get copyWith =>
      __$$_UserErrorStateCopyWithImpl<_$_UserErrorState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(Profile user) loaded,
    required TResult Function(String message) error,
  }) {
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(Profile user)? loaded,
    TResult? Function(String message)? error,
  }) {
    return error?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Profile user)? loaded,
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
    required TResult Function(_UserInitialState value) initial,
    required TResult Function(_UserLoadingState value) loading,
    required TResult Function(_UserLoadedState value) loaded,
    required TResult Function(_UserErrorState value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_UserInitialState value)? initial,
    TResult? Function(_UserLoadingState value)? loading,
    TResult? Function(_UserLoadedState value)? loaded,
    TResult? Function(_UserErrorState value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UserInitialState value)? initial,
    TResult Function(_UserLoadingState value)? loading,
    TResult Function(_UserLoadedState value)? loaded,
    TResult Function(_UserErrorState value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _UserErrorState implements UserState {
  const factory _UserErrorState({required final String message}) =
      _$_UserErrorState;

  String get message;
  @JsonKey(ignore: true)
  _$$_UserErrorStateCopyWith<_$_UserErrorState> get copyWith =>
      throw _privateConstructorUsedError;
}
