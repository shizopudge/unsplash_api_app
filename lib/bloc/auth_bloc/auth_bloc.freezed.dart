// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auth_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AuthEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() authorize,
    required TResult Function() logout,
    required TResult Function() isAuthorized,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? authorize,
    TResult? Function()? logout,
    TResult? Function()? isAuthorized,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? authorize,
    TResult Function()? logout,
    TResult Function()? isAuthorized,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthAuthorizeEvent value) authorize,
    required TResult Function(AuthLogoutEvent value) logout,
    required TResult Function(AuthIsAuthorizedEvent value) isAuthorized,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AuthAuthorizeEvent value)? authorize,
    TResult? Function(AuthLogoutEvent value)? logout,
    TResult? Function(AuthIsAuthorizedEvent value)? isAuthorized,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthAuthorizeEvent value)? authorize,
    TResult Function(AuthLogoutEvent value)? logout,
    TResult Function(AuthIsAuthorizedEvent value)? isAuthorized,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthEventCopyWith<$Res> {
  factory $AuthEventCopyWith(AuthEvent value, $Res Function(AuthEvent) then) =
      _$AuthEventCopyWithImpl<$Res, AuthEvent>;
}

/// @nodoc
class _$AuthEventCopyWithImpl<$Res, $Val extends AuthEvent>
    implements $AuthEventCopyWith<$Res> {
  _$AuthEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$AuthAuthorizeEventCopyWith<$Res> {
  factory _$$AuthAuthorizeEventCopyWith(_$AuthAuthorizeEvent value,
          $Res Function(_$AuthAuthorizeEvent) then) =
      __$$AuthAuthorizeEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AuthAuthorizeEventCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$AuthAuthorizeEvent>
    implements _$$AuthAuthorizeEventCopyWith<$Res> {
  __$$AuthAuthorizeEventCopyWithImpl(
      _$AuthAuthorizeEvent _value, $Res Function(_$AuthAuthorizeEvent) _then)
      : super(_value, _then);
}

/// @nodoc

class _$AuthAuthorizeEvent implements AuthAuthorizeEvent {
  const _$AuthAuthorizeEvent();

  @override
  String toString() {
    return 'AuthEvent.authorize()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$AuthAuthorizeEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() authorize,
    required TResult Function() logout,
    required TResult Function() isAuthorized,
  }) {
    return authorize();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? authorize,
    TResult? Function()? logout,
    TResult? Function()? isAuthorized,
  }) {
    return authorize?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? authorize,
    TResult Function()? logout,
    TResult Function()? isAuthorized,
    required TResult orElse(),
  }) {
    if (authorize != null) {
      return authorize();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthAuthorizeEvent value) authorize,
    required TResult Function(AuthLogoutEvent value) logout,
    required TResult Function(AuthIsAuthorizedEvent value) isAuthorized,
  }) {
    return authorize(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AuthAuthorizeEvent value)? authorize,
    TResult? Function(AuthLogoutEvent value)? logout,
    TResult? Function(AuthIsAuthorizedEvent value)? isAuthorized,
  }) {
    return authorize?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthAuthorizeEvent value)? authorize,
    TResult Function(AuthLogoutEvent value)? logout,
    TResult Function(AuthIsAuthorizedEvent value)? isAuthorized,
    required TResult orElse(),
  }) {
    if (authorize != null) {
      return authorize(this);
    }
    return orElse();
  }
}

abstract class AuthAuthorizeEvent implements AuthEvent {
  const factory AuthAuthorizeEvent() = _$AuthAuthorizeEvent;
}

/// @nodoc
abstract class _$$AuthLogoutEventCopyWith<$Res> {
  factory _$$AuthLogoutEventCopyWith(
          _$AuthLogoutEvent value, $Res Function(_$AuthLogoutEvent) then) =
      __$$AuthLogoutEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AuthLogoutEventCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$AuthLogoutEvent>
    implements _$$AuthLogoutEventCopyWith<$Res> {
  __$$AuthLogoutEventCopyWithImpl(
      _$AuthLogoutEvent _value, $Res Function(_$AuthLogoutEvent) _then)
      : super(_value, _then);
}

/// @nodoc

class _$AuthLogoutEvent implements AuthLogoutEvent {
  const _$AuthLogoutEvent();

  @override
  String toString() {
    return 'AuthEvent.logout()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$AuthLogoutEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() authorize,
    required TResult Function() logout,
    required TResult Function() isAuthorized,
  }) {
    return logout();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? authorize,
    TResult? Function()? logout,
    TResult? Function()? isAuthorized,
  }) {
    return logout?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? authorize,
    TResult Function()? logout,
    TResult Function()? isAuthorized,
    required TResult orElse(),
  }) {
    if (logout != null) {
      return logout();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthAuthorizeEvent value) authorize,
    required TResult Function(AuthLogoutEvent value) logout,
    required TResult Function(AuthIsAuthorizedEvent value) isAuthorized,
  }) {
    return logout(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AuthAuthorizeEvent value)? authorize,
    TResult? Function(AuthLogoutEvent value)? logout,
    TResult? Function(AuthIsAuthorizedEvent value)? isAuthorized,
  }) {
    return logout?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthAuthorizeEvent value)? authorize,
    TResult Function(AuthLogoutEvent value)? logout,
    TResult Function(AuthIsAuthorizedEvent value)? isAuthorized,
    required TResult orElse(),
  }) {
    if (logout != null) {
      return logout(this);
    }
    return orElse();
  }
}

abstract class AuthLogoutEvent implements AuthEvent {
  const factory AuthLogoutEvent() = _$AuthLogoutEvent;
}

/// @nodoc
abstract class _$$AuthIsAuthorizedEventCopyWith<$Res> {
  factory _$$AuthIsAuthorizedEventCopyWith(_$AuthIsAuthorizedEvent value,
          $Res Function(_$AuthIsAuthorizedEvent) then) =
      __$$AuthIsAuthorizedEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AuthIsAuthorizedEventCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$AuthIsAuthorizedEvent>
    implements _$$AuthIsAuthorizedEventCopyWith<$Res> {
  __$$AuthIsAuthorizedEventCopyWithImpl(_$AuthIsAuthorizedEvent _value,
      $Res Function(_$AuthIsAuthorizedEvent) _then)
      : super(_value, _then);
}

/// @nodoc

class _$AuthIsAuthorizedEvent implements AuthIsAuthorizedEvent {
  const _$AuthIsAuthorizedEvent();

  @override
  String toString() {
    return 'AuthEvent.isAuthorized()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$AuthIsAuthorizedEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() authorize,
    required TResult Function() logout,
    required TResult Function() isAuthorized,
  }) {
    return isAuthorized();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? authorize,
    TResult? Function()? logout,
    TResult? Function()? isAuthorized,
  }) {
    return isAuthorized?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? authorize,
    TResult Function()? logout,
    TResult Function()? isAuthorized,
    required TResult orElse(),
  }) {
    if (isAuthorized != null) {
      return isAuthorized();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthAuthorizeEvent value) authorize,
    required TResult Function(AuthLogoutEvent value) logout,
    required TResult Function(AuthIsAuthorizedEvent value) isAuthorized,
  }) {
    return isAuthorized(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AuthAuthorizeEvent value)? authorize,
    TResult? Function(AuthLogoutEvent value)? logout,
    TResult? Function(AuthIsAuthorizedEvent value)? isAuthorized,
  }) {
    return isAuthorized?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthAuthorizeEvent value)? authorize,
    TResult Function(AuthLogoutEvent value)? logout,
    TResult Function(AuthIsAuthorizedEvent value)? isAuthorized,
    required TResult orElse(),
  }) {
    if (isAuthorized != null) {
      return isAuthorized(this);
    }
    return orElse();
  }
}

abstract class AuthIsAuthorizedEvent implements AuthEvent {
  const factory AuthIsAuthorizedEvent() = _$AuthIsAuthorizedEvent;
}

/// @nodoc
mixin _$AuthState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(Profile user) authorized,
    required TResult Function(String? message) notAuthorized,
    required TResult Function(String message) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(Profile user)? authorized,
    TResult? Function(String? message)? notAuthorized,
    TResult? Function(String message)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Profile user)? authorized,
    TResult Function(String? message)? notAuthorized,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthInitialState value) initial,
    required TResult Function(AuthLoadingState value) loading,
    required TResult Function(AuthAuthorizedState value) authorized,
    required TResult Function(AuthNotAuthorizedState value) notAuthorized,
    required TResult Function(AuthErrorState value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AuthInitialState value)? initial,
    TResult? Function(AuthLoadingState value)? loading,
    TResult? Function(AuthAuthorizedState value)? authorized,
    TResult? Function(AuthNotAuthorizedState value)? notAuthorized,
    TResult? Function(AuthErrorState value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthInitialState value)? initial,
    TResult Function(AuthLoadingState value)? loading,
    TResult Function(AuthAuthorizedState value)? authorized,
    TResult Function(AuthNotAuthorizedState value)? notAuthorized,
    TResult Function(AuthErrorState value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthStateCopyWith<$Res> {
  factory $AuthStateCopyWith(AuthState value, $Res Function(AuthState) then) =
      _$AuthStateCopyWithImpl<$Res, AuthState>;
}

/// @nodoc
class _$AuthStateCopyWithImpl<$Res, $Val extends AuthState>
    implements $AuthStateCopyWith<$Res> {
  _$AuthStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$AuthInitialStateCopyWith<$Res> {
  factory _$$AuthInitialStateCopyWith(
          _$AuthInitialState value, $Res Function(_$AuthInitialState) then) =
      __$$AuthInitialStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AuthInitialStateCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$AuthInitialState>
    implements _$$AuthInitialStateCopyWith<$Res> {
  __$$AuthInitialStateCopyWithImpl(
      _$AuthInitialState _value, $Res Function(_$AuthInitialState) _then)
      : super(_value, _then);
}

/// @nodoc

class _$AuthInitialState implements AuthInitialState {
  const _$AuthInitialState();

  @override
  String toString() {
    return 'AuthState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$AuthInitialState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(Profile user) authorized,
    required TResult Function(String? message) notAuthorized,
    required TResult Function(String message) error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(Profile user)? authorized,
    TResult? Function(String? message)? notAuthorized,
    TResult? Function(String message)? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Profile user)? authorized,
    TResult Function(String? message)? notAuthorized,
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
    required TResult Function(AuthInitialState value) initial,
    required TResult Function(AuthLoadingState value) loading,
    required TResult Function(AuthAuthorizedState value) authorized,
    required TResult Function(AuthNotAuthorizedState value) notAuthorized,
    required TResult Function(AuthErrorState value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AuthInitialState value)? initial,
    TResult? Function(AuthLoadingState value)? loading,
    TResult? Function(AuthAuthorizedState value)? authorized,
    TResult? Function(AuthNotAuthorizedState value)? notAuthorized,
    TResult? Function(AuthErrorState value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthInitialState value)? initial,
    TResult Function(AuthLoadingState value)? loading,
    TResult Function(AuthAuthorizedState value)? authorized,
    TResult Function(AuthNotAuthorizedState value)? notAuthorized,
    TResult Function(AuthErrorState value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class AuthInitialState implements AuthState {
  const factory AuthInitialState() = _$AuthInitialState;
}

/// @nodoc
abstract class _$$AuthLoadingStateCopyWith<$Res> {
  factory _$$AuthLoadingStateCopyWith(
          _$AuthLoadingState value, $Res Function(_$AuthLoadingState) then) =
      __$$AuthLoadingStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AuthLoadingStateCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$AuthLoadingState>
    implements _$$AuthLoadingStateCopyWith<$Res> {
  __$$AuthLoadingStateCopyWithImpl(
      _$AuthLoadingState _value, $Res Function(_$AuthLoadingState) _then)
      : super(_value, _then);
}

/// @nodoc

class _$AuthLoadingState implements AuthLoadingState {
  const _$AuthLoadingState();

  @override
  String toString() {
    return 'AuthState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$AuthLoadingState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(Profile user) authorized,
    required TResult Function(String? message) notAuthorized,
    required TResult Function(String message) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(Profile user)? authorized,
    TResult? Function(String? message)? notAuthorized,
    TResult? Function(String message)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Profile user)? authorized,
    TResult Function(String? message)? notAuthorized,
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
    required TResult Function(AuthInitialState value) initial,
    required TResult Function(AuthLoadingState value) loading,
    required TResult Function(AuthAuthorizedState value) authorized,
    required TResult Function(AuthNotAuthorizedState value) notAuthorized,
    required TResult Function(AuthErrorState value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AuthInitialState value)? initial,
    TResult? Function(AuthLoadingState value)? loading,
    TResult? Function(AuthAuthorizedState value)? authorized,
    TResult? Function(AuthNotAuthorizedState value)? notAuthorized,
    TResult? Function(AuthErrorState value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthInitialState value)? initial,
    TResult Function(AuthLoadingState value)? loading,
    TResult Function(AuthAuthorizedState value)? authorized,
    TResult Function(AuthNotAuthorizedState value)? notAuthorized,
    TResult Function(AuthErrorState value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class AuthLoadingState implements AuthState {
  const factory AuthLoadingState() = _$AuthLoadingState;
}

/// @nodoc
abstract class _$$AuthAuthorizedStateCopyWith<$Res> {
  factory _$$AuthAuthorizedStateCopyWith(_$AuthAuthorizedState value,
          $Res Function(_$AuthAuthorizedState) then) =
      __$$AuthAuthorizedStateCopyWithImpl<$Res>;
  @useResult
  $Res call({Profile user});
}

/// @nodoc
class __$$AuthAuthorizedStateCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$AuthAuthorizedState>
    implements _$$AuthAuthorizedStateCopyWith<$Res> {
  __$$AuthAuthorizedStateCopyWithImpl(
      _$AuthAuthorizedState _value, $Res Function(_$AuthAuthorizedState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = null,
  }) {
    return _then(_$AuthAuthorizedState(
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as Profile,
    ));
  }
}

/// @nodoc

class _$AuthAuthorizedState implements AuthAuthorizedState {
  const _$AuthAuthorizedState({required this.user});

  @override
  final Profile user;

  @override
  String toString() {
    return 'AuthState.authorized(user: $user)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuthAuthorizedState &&
            (identical(other.user, user) || other.user == user));
  }

  @override
  int get hashCode => Object.hash(runtimeType, user);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AuthAuthorizedStateCopyWith<_$AuthAuthorizedState> get copyWith =>
      __$$AuthAuthorizedStateCopyWithImpl<_$AuthAuthorizedState>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(Profile user) authorized,
    required TResult Function(String? message) notAuthorized,
    required TResult Function(String message) error,
  }) {
    return authorized(user);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(Profile user)? authorized,
    TResult? Function(String? message)? notAuthorized,
    TResult? Function(String message)? error,
  }) {
    return authorized?.call(user);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Profile user)? authorized,
    TResult Function(String? message)? notAuthorized,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (authorized != null) {
      return authorized(user);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthInitialState value) initial,
    required TResult Function(AuthLoadingState value) loading,
    required TResult Function(AuthAuthorizedState value) authorized,
    required TResult Function(AuthNotAuthorizedState value) notAuthorized,
    required TResult Function(AuthErrorState value) error,
  }) {
    return authorized(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AuthInitialState value)? initial,
    TResult? Function(AuthLoadingState value)? loading,
    TResult? Function(AuthAuthorizedState value)? authorized,
    TResult? Function(AuthNotAuthorizedState value)? notAuthorized,
    TResult? Function(AuthErrorState value)? error,
  }) {
    return authorized?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthInitialState value)? initial,
    TResult Function(AuthLoadingState value)? loading,
    TResult Function(AuthAuthorizedState value)? authorized,
    TResult Function(AuthNotAuthorizedState value)? notAuthorized,
    TResult Function(AuthErrorState value)? error,
    required TResult orElse(),
  }) {
    if (authorized != null) {
      return authorized(this);
    }
    return orElse();
  }
}

abstract class AuthAuthorizedState implements AuthState {
  const factory AuthAuthorizedState({required final Profile user}) =
      _$AuthAuthorizedState;

  Profile get user;
  @JsonKey(ignore: true)
  _$$AuthAuthorizedStateCopyWith<_$AuthAuthorizedState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AuthNotAuthorizedStateCopyWith<$Res> {
  factory _$$AuthNotAuthorizedStateCopyWith(_$AuthNotAuthorizedState value,
          $Res Function(_$AuthNotAuthorizedState) then) =
      __$$AuthNotAuthorizedStateCopyWithImpl<$Res>;
  @useResult
  $Res call({String? message});
}

/// @nodoc
class __$$AuthNotAuthorizedStateCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$AuthNotAuthorizedState>
    implements _$$AuthNotAuthorizedStateCopyWith<$Res> {
  __$$AuthNotAuthorizedStateCopyWithImpl(_$AuthNotAuthorizedState _value,
      $Res Function(_$AuthNotAuthorizedState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_$AuthNotAuthorizedState(
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$AuthNotAuthorizedState implements AuthNotAuthorizedState {
  const _$AuthNotAuthorizedState({this.message});

  @override
  final String? message;

  @override
  String toString() {
    return 'AuthState.notAuthorized(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuthNotAuthorizedState &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AuthNotAuthorizedStateCopyWith<_$AuthNotAuthorizedState> get copyWith =>
      __$$AuthNotAuthorizedStateCopyWithImpl<_$AuthNotAuthorizedState>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(Profile user) authorized,
    required TResult Function(String? message) notAuthorized,
    required TResult Function(String message) error,
  }) {
    return notAuthorized(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(Profile user)? authorized,
    TResult? Function(String? message)? notAuthorized,
    TResult? Function(String message)? error,
  }) {
    return notAuthorized?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Profile user)? authorized,
    TResult Function(String? message)? notAuthorized,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (notAuthorized != null) {
      return notAuthorized(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthInitialState value) initial,
    required TResult Function(AuthLoadingState value) loading,
    required TResult Function(AuthAuthorizedState value) authorized,
    required TResult Function(AuthNotAuthorizedState value) notAuthorized,
    required TResult Function(AuthErrorState value) error,
  }) {
    return notAuthorized(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AuthInitialState value)? initial,
    TResult? Function(AuthLoadingState value)? loading,
    TResult? Function(AuthAuthorizedState value)? authorized,
    TResult? Function(AuthNotAuthorizedState value)? notAuthorized,
    TResult? Function(AuthErrorState value)? error,
  }) {
    return notAuthorized?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthInitialState value)? initial,
    TResult Function(AuthLoadingState value)? loading,
    TResult Function(AuthAuthorizedState value)? authorized,
    TResult Function(AuthNotAuthorizedState value)? notAuthorized,
    TResult Function(AuthErrorState value)? error,
    required TResult orElse(),
  }) {
    if (notAuthorized != null) {
      return notAuthorized(this);
    }
    return orElse();
  }
}

abstract class AuthNotAuthorizedState implements AuthState {
  const factory AuthNotAuthorizedState({final String? message}) =
      _$AuthNotAuthorizedState;

  String? get message;
  @JsonKey(ignore: true)
  _$$AuthNotAuthorizedStateCopyWith<_$AuthNotAuthorizedState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AuthErrorStateCopyWith<$Res> {
  factory _$$AuthErrorStateCopyWith(
          _$AuthErrorState value, $Res Function(_$AuthErrorState) then) =
      __$$AuthErrorStateCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$AuthErrorStateCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$AuthErrorState>
    implements _$$AuthErrorStateCopyWith<$Res> {
  __$$AuthErrorStateCopyWithImpl(
      _$AuthErrorState _value, $Res Function(_$AuthErrorState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$AuthErrorState(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$AuthErrorState implements AuthErrorState {
  const _$AuthErrorState({required this.message});

  @override
  final String message;

  @override
  String toString() {
    return 'AuthState.error(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuthErrorState &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AuthErrorStateCopyWith<_$AuthErrorState> get copyWith =>
      __$$AuthErrorStateCopyWithImpl<_$AuthErrorState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(Profile user) authorized,
    required TResult Function(String? message) notAuthorized,
    required TResult Function(String message) error,
  }) {
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(Profile user)? authorized,
    TResult? Function(String? message)? notAuthorized,
    TResult? Function(String message)? error,
  }) {
    return error?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Profile user)? authorized,
    TResult Function(String? message)? notAuthorized,
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
    required TResult Function(AuthInitialState value) initial,
    required TResult Function(AuthLoadingState value) loading,
    required TResult Function(AuthAuthorizedState value) authorized,
    required TResult Function(AuthNotAuthorizedState value) notAuthorized,
    required TResult Function(AuthErrorState value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AuthInitialState value)? initial,
    TResult? Function(AuthLoadingState value)? loading,
    TResult? Function(AuthAuthorizedState value)? authorized,
    TResult? Function(AuthNotAuthorizedState value)? notAuthorized,
    TResult? Function(AuthErrorState value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthInitialState value)? initial,
    TResult Function(AuthLoadingState value)? loading,
    TResult Function(AuthAuthorizedState value)? authorized,
    TResult Function(AuthNotAuthorizedState value)? notAuthorized,
    TResult Function(AuthErrorState value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class AuthErrorState implements AuthState {
  const factory AuthErrorState({required final String message}) =
      _$AuthErrorState;

  String get message;
  @JsonKey(ignore: true)
  _$$AuthErrorStateCopyWith<_$AuthErrorState> get copyWith =>
      throw _privateConstructorUsedError;
}
