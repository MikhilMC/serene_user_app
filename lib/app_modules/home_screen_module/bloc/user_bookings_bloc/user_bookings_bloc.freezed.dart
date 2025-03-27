// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_bookings_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$UserBookingsEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() userBookingFetched,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? userBookingFetched,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? userBookingFetched,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_userBookingFetched value) userBookingFetched,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_userBookingFetched value)? userBookingFetched,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_userBookingFetched value)? userBookingFetched,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserBookingsEventCopyWith<$Res> {
  factory $UserBookingsEventCopyWith(
          UserBookingsEvent value, $Res Function(UserBookingsEvent) then) =
      _$UserBookingsEventCopyWithImpl<$Res, UserBookingsEvent>;
}

/// @nodoc
class _$UserBookingsEventCopyWithImpl<$Res, $Val extends UserBookingsEvent>
    implements $UserBookingsEventCopyWith<$Res> {
  _$UserBookingsEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UserBookingsEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$StartedImplCopyWith<$Res> {
  factory _$$StartedImplCopyWith(
          _$StartedImpl value, $Res Function(_$StartedImpl) then) =
      __$$StartedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$StartedImplCopyWithImpl<$Res>
    extends _$UserBookingsEventCopyWithImpl<$Res, _$StartedImpl>
    implements _$$StartedImplCopyWith<$Res> {
  __$$StartedImplCopyWithImpl(
      _$StartedImpl _value, $Res Function(_$StartedImpl) _then)
      : super(_value, _then);

  /// Create a copy of UserBookingsEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$StartedImpl implements _Started {
  const _$StartedImpl();

  @override
  String toString() {
    return 'UserBookingsEvent.started()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$StartedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() userBookingFetched,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? userBookingFetched,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? userBookingFetched,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_userBookingFetched value) userBookingFetched,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_userBookingFetched value)? userBookingFetched,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_userBookingFetched value)? userBookingFetched,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements UserBookingsEvent {
  const factory _Started() = _$StartedImpl;
}

/// @nodoc
abstract class _$$userBookingFetchedImplCopyWith<$Res> {
  factory _$$userBookingFetchedImplCopyWith(_$userBookingFetchedImpl value,
          $Res Function(_$userBookingFetchedImpl) then) =
      __$$userBookingFetchedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$userBookingFetchedImplCopyWithImpl<$Res>
    extends _$UserBookingsEventCopyWithImpl<$Res, _$userBookingFetchedImpl>
    implements _$$userBookingFetchedImplCopyWith<$Res> {
  __$$userBookingFetchedImplCopyWithImpl(_$userBookingFetchedImpl _value,
      $Res Function(_$userBookingFetchedImpl) _then)
      : super(_value, _then);

  /// Create a copy of UserBookingsEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$userBookingFetchedImpl implements _userBookingFetched {
  const _$userBookingFetchedImpl();

  @override
  String toString() {
    return 'UserBookingsEvent.userBookingFetched()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$userBookingFetchedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() userBookingFetched,
  }) {
    return userBookingFetched();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? userBookingFetched,
  }) {
    return userBookingFetched?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? userBookingFetched,
    required TResult orElse(),
  }) {
    if (userBookingFetched != null) {
      return userBookingFetched();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_userBookingFetched value) userBookingFetched,
  }) {
    return userBookingFetched(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_userBookingFetched value)? userBookingFetched,
  }) {
    return userBookingFetched?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_userBookingFetched value)? userBookingFetched,
    required TResult orElse(),
  }) {
    if (userBookingFetched != null) {
      return userBookingFetched(this);
    }
    return orElse();
  }
}

abstract class _userBookingFetched implements UserBookingsEvent {
  const factory _userBookingFetched() = _$userBookingFetchedImpl;
}

/// @nodoc
mixin _$UserBookingsState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<UserBookingModel> userBookings) success,
    required TResult Function(String errorMessage) error,
    required TResult Function() empty,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<UserBookingModel> userBookings)? success,
    TResult? Function(String errorMessage)? error,
    TResult? Function()? empty,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<UserBookingModel> userBookings)? success,
    TResult Function(String errorMessage)? error,
    TResult Function()? empty,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(UserBookingsLoading value) loading,
    required TResult Function(UserBookingsSuccess value) success,
    required TResult Function(UserBookingsError value) error,
    required TResult Function(UserBookingsEmpty value) empty,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(UserBookingsLoading value)? loading,
    TResult? Function(UserBookingsSuccess value)? success,
    TResult? Function(UserBookingsError value)? error,
    TResult? Function(UserBookingsEmpty value)? empty,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(UserBookingsLoading value)? loading,
    TResult Function(UserBookingsSuccess value)? success,
    TResult Function(UserBookingsError value)? error,
    TResult Function(UserBookingsEmpty value)? empty,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserBookingsStateCopyWith<$Res> {
  factory $UserBookingsStateCopyWith(
          UserBookingsState value, $Res Function(UserBookingsState) then) =
      _$UserBookingsStateCopyWithImpl<$Res, UserBookingsState>;
}

/// @nodoc
class _$UserBookingsStateCopyWithImpl<$Res, $Val extends UserBookingsState>
    implements $UserBookingsStateCopyWith<$Res> {
  _$UserBookingsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UserBookingsState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$UserBookingsStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);

  /// Create a copy of UserBookingsState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl();

  @override
  String toString() {
    return 'UserBookingsState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<UserBookingModel> userBookings) success,
    required TResult Function(String errorMessage) error,
    required TResult Function() empty,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<UserBookingModel> userBookings)? success,
    TResult? Function(String errorMessage)? error,
    TResult? Function()? empty,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<UserBookingModel> userBookings)? success,
    TResult Function(String errorMessage)? error,
    TResult Function()? empty,
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
    required TResult Function(_Initial value) initial,
    required TResult Function(UserBookingsLoading value) loading,
    required TResult Function(UserBookingsSuccess value) success,
    required TResult Function(UserBookingsError value) error,
    required TResult Function(UserBookingsEmpty value) empty,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(UserBookingsLoading value)? loading,
    TResult? Function(UserBookingsSuccess value)? success,
    TResult? Function(UserBookingsError value)? error,
    TResult? Function(UserBookingsEmpty value)? empty,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(UserBookingsLoading value)? loading,
    TResult Function(UserBookingsSuccess value)? success,
    TResult Function(UserBookingsError value)? error,
    TResult Function(UserBookingsEmpty value)? empty,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements UserBookingsState {
  const factory _Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$UserBookingsLoadingImplCopyWith<$Res> {
  factory _$$UserBookingsLoadingImplCopyWith(_$UserBookingsLoadingImpl value,
          $Res Function(_$UserBookingsLoadingImpl) then) =
      __$$UserBookingsLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$UserBookingsLoadingImplCopyWithImpl<$Res>
    extends _$UserBookingsStateCopyWithImpl<$Res, _$UserBookingsLoadingImpl>
    implements _$$UserBookingsLoadingImplCopyWith<$Res> {
  __$$UserBookingsLoadingImplCopyWithImpl(_$UserBookingsLoadingImpl _value,
      $Res Function(_$UserBookingsLoadingImpl) _then)
      : super(_value, _then);

  /// Create a copy of UserBookingsState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$UserBookingsLoadingImpl implements UserBookingsLoading {
  const _$UserBookingsLoadingImpl();

  @override
  String toString() {
    return 'UserBookingsState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserBookingsLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<UserBookingModel> userBookings) success,
    required TResult Function(String errorMessage) error,
    required TResult Function() empty,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<UserBookingModel> userBookings)? success,
    TResult? Function(String errorMessage)? error,
    TResult? Function()? empty,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<UserBookingModel> userBookings)? success,
    TResult Function(String errorMessage)? error,
    TResult Function()? empty,
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
    required TResult Function(_Initial value) initial,
    required TResult Function(UserBookingsLoading value) loading,
    required TResult Function(UserBookingsSuccess value) success,
    required TResult Function(UserBookingsError value) error,
    required TResult Function(UserBookingsEmpty value) empty,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(UserBookingsLoading value)? loading,
    TResult? Function(UserBookingsSuccess value)? success,
    TResult? Function(UserBookingsError value)? error,
    TResult? Function(UserBookingsEmpty value)? empty,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(UserBookingsLoading value)? loading,
    TResult Function(UserBookingsSuccess value)? success,
    TResult Function(UserBookingsError value)? error,
    TResult Function(UserBookingsEmpty value)? empty,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class UserBookingsLoading implements UserBookingsState {
  const factory UserBookingsLoading() = _$UserBookingsLoadingImpl;
}

/// @nodoc
abstract class _$$UserBookingsSuccessImplCopyWith<$Res> {
  factory _$$UserBookingsSuccessImplCopyWith(_$UserBookingsSuccessImpl value,
          $Res Function(_$UserBookingsSuccessImpl) then) =
      __$$UserBookingsSuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<UserBookingModel> userBookings});
}

/// @nodoc
class __$$UserBookingsSuccessImplCopyWithImpl<$Res>
    extends _$UserBookingsStateCopyWithImpl<$Res, _$UserBookingsSuccessImpl>
    implements _$$UserBookingsSuccessImplCopyWith<$Res> {
  __$$UserBookingsSuccessImplCopyWithImpl(_$UserBookingsSuccessImpl _value,
      $Res Function(_$UserBookingsSuccessImpl) _then)
      : super(_value, _then);

  /// Create a copy of UserBookingsState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userBookings = null,
  }) {
    return _then(_$UserBookingsSuccessImpl(
      null == userBookings
          ? _value._userBookings
          : userBookings // ignore: cast_nullable_to_non_nullable
              as List<UserBookingModel>,
    ));
  }
}

/// @nodoc

class _$UserBookingsSuccessImpl implements UserBookingsSuccess {
  const _$UserBookingsSuccessImpl(final List<UserBookingModel> userBookings)
      : _userBookings = userBookings;

  final List<UserBookingModel> _userBookings;
  @override
  List<UserBookingModel> get userBookings {
    if (_userBookings is EqualUnmodifiableListView) return _userBookings;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_userBookings);
  }

  @override
  String toString() {
    return 'UserBookingsState.success(userBookings: $userBookings)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserBookingsSuccessImpl &&
            const DeepCollectionEquality()
                .equals(other._userBookings, _userBookings));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_userBookings));

  /// Create a copy of UserBookingsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UserBookingsSuccessImplCopyWith<_$UserBookingsSuccessImpl> get copyWith =>
      __$$UserBookingsSuccessImplCopyWithImpl<_$UserBookingsSuccessImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<UserBookingModel> userBookings) success,
    required TResult Function(String errorMessage) error,
    required TResult Function() empty,
  }) {
    return success(userBookings);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<UserBookingModel> userBookings)? success,
    TResult? Function(String errorMessage)? error,
    TResult? Function()? empty,
  }) {
    return success?.call(userBookings);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<UserBookingModel> userBookings)? success,
    TResult Function(String errorMessage)? error,
    TResult Function()? empty,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(userBookings);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(UserBookingsLoading value) loading,
    required TResult Function(UserBookingsSuccess value) success,
    required TResult Function(UserBookingsError value) error,
    required TResult Function(UserBookingsEmpty value) empty,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(UserBookingsLoading value)? loading,
    TResult? Function(UserBookingsSuccess value)? success,
    TResult? Function(UserBookingsError value)? error,
    TResult? Function(UserBookingsEmpty value)? empty,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(UserBookingsLoading value)? loading,
    TResult Function(UserBookingsSuccess value)? success,
    TResult Function(UserBookingsError value)? error,
    TResult Function(UserBookingsEmpty value)? empty,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class UserBookingsSuccess implements UserBookingsState {
  const factory UserBookingsSuccess(final List<UserBookingModel> userBookings) =
      _$UserBookingsSuccessImpl;

  List<UserBookingModel> get userBookings;

  /// Create a copy of UserBookingsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UserBookingsSuccessImplCopyWith<_$UserBookingsSuccessImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UserBookingsErrorImplCopyWith<$Res> {
  factory _$$UserBookingsErrorImplCopyWith(_$UserBookingsErrorImpl value,
          $Res Function(_$UserBookingsErrorImpl) then) =
      __$$UserBookingsErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String errorMessage});
}

/// @nodoc
class __$$UserBookingsErrorImplCopyWithImpl<$Res>
    extends _$UserBookingsStateCopyWithImpl<$Res, _$UserBookingsErrorImpl>
    implements _$$UserBookingsErrorImplCopyWith<$Res> {
  __$$UserBookingsErrorImplCopyWithImpl(_$UserBookingsErrorImpl _value,
      $Res Function(_$UserBookingsErrorImpl) _then)
      : super(_value, _then);

  /// Create a copy of UserBookingsState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? errorMessage = null,
  }) {
    return _then(_$UserBookingsErrorImpl(
      null == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$UserBookingsErrorImpl implements UserBookingsError {
  const _$UserBookingsErrorImpl(this.errorMessage);

  @override
  final String errorMessage;

  @override
  String toString() {
    return 'UserBookingsState.error(errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserBookingsErrorImpl &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @override
  int get hashCode => Object.hash(runtimeType, errorMessage);

  /// Create a copy of UserBookingsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UserBookingsErrorImplCopyWith<_$UserBookingsErrorImpl> get copyWith =>
      __$$UserBookingsErrorImplCopyWithImpl<_$UserBookingsErrorImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<UserBookingModel> userBookings) success,
    required TResult Function(String errorMessage) error,
    required TResult Function() empty,
  }) {
    return error(errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<UserBookingModel> userBookings)? success,
    TResult? Function(String errorMessage)? error,
    TResult? Function()? empty,
  }) {
    return error?.call(errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<UserBookingModel> userBookings)? success,
    TResult Function(String errorMessage)? error,
    TResult Function()? empty,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(errorMessage);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(UserBookingsLoading value) loading,
    required TResult Function(UserBookingsSuccess value) success,
    required TResult Function(UserBookingsError value) error,
    required TResult Function(UserBookingsEmpty value) empty,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(UserBookingsLoading value)? loading,
    TResult? Function(UserBookingsSuccess value)? success,
    TResult? Function(UserBookingsError value)? error,
    TResult? Function(UserBookingsEmpty value)? empty,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(UserBookingsLoading value)? loading,
    TResult Function(UserBookingsSuccess value)? success,
    TResult Function(UserBookingsError value)? error,
    TResult Function(UserBookingsEmpty value)? empty,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class UserBookingsError implements UserBookingsState {
  const factory UserBookingsError(final String errorMessage) =
      _$UserBookingsErrorImpl;

  String get errorMessage;

  /// Create a copy of UserBookingsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UserBookingsErrorImplCopyWith<_$UserBookingsErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UserBookingsEmptyImplCopyWith<$Res> {
  factory _$$UserBookingsEmptyImplCopyWith(_$UserBookingsEmptyImpl value,
          $Res Function(_$UserBookingsEmptyImpl) then) =
      __$$UserBookingsEmptyImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$UserBookingsEmptyImplCopyWithImpl<$Res>
    extends _$UserBookingsStateCopyWithImpl<$Res, _$UserBookingsEmptyImpl>
    implements _$$UserBookingsEmptyImplCopyWith<$Res> {
  __$$UserBookingsEmptyImplCopyWithImpl(_$UserBookingsEmptyImpl _value,
      $Res Function(_$UserBookingsEmptyImpl) _then)
      : super(_value, _then);

  /// Create a copy of UserBookingsState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$UserBookingsEmptyImpl implements UserBookingsEmpty {
  const _$UserBookingsEmptyImpl();

  @override
  String toString() {
    return 'UserBookingsState.empty()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$UserBookingsEmptyImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<UserBookingModel> userBookings) success,
    required TResult Function(String errorMessage) error,
    required TResult Function() empty,
  }) {
    return empty();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<UserBookingModel> userBookings)? success,
    TResult? Function(String errorMessage)? error,
    TResult? Function()? empty,
  }) {
    return empty?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<UserBookingModel> userBookings)? success,
    TResult Function(String errorMessage)? error,
    TResult Function()? empty,
    required TResult orElse(),
  }) {
    if (empty != null) {
      return empty();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(UserBookingsLoading value) loading,
    required TResult Function(UserBookingsSuccess value) success,
    required TResult Function(UserBookingsError value) error,
    required TResult Function(UserBookingsEmpty value) empty,
  }) {
    return empty(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(UserBookingsLoading value)? loading,
    TResult? Function(UserBookingsSuccess value)? success,
    TResult? Function(UserBookingsError value)? error,
    TResult? Function(UserBookingsEmpty value)? empty,
  }) {
    return empty?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(UserBookingsLoading value)? loading,
    TResult Function(UserBookingsSuccess value)? success,
    TResult Function(UserBookingsError value)? error,
    TResult Function(UserBookingsEmpty value)? empty,
    required TResult orElse(),
  }) {
    if (empty != null) {
      return empty(this);
    }
    return orElse();
  }
}

abstract class UserBookingsEmpty implements UserBookingsState {
  const factory UserBookingsEmpty() = _$UserBookingsEmptyImpl;
}
