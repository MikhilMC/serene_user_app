// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_profile_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$UserProfileEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() userProfileFetched,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? userProfileFetched,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? userProfileFetched,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_userProfileFetched value) userProfileFetched,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_userProfileFetched value)? userProfileFetched,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_userProfileFetched value)? userProfileFetched,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserProfileEventCopyWith<$Res> {
  factory $UserProfileEventCopyWith(
          UserProfileEvent value, $Res Function(UserProfileEvent) then) =
      _$UserProfileEventCopyWithImpl<$Res, UserProfileEvent>;
}

/// @nodoc
class _$UserProfileEventCopyWithImpl<$Res, $Val extends UserProfileEvent>
    implements $UserProfileEventCopyWith<$Res> {
  _$UserProfileEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UserProfileEvent
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
    extends _$UserProfileEventCopyWithImpl<$Res, _$StartedImpl>
    implements _$$StartedImplCopyWith<$Res> {
  __$$StartedImplCopyWithImpl(
      _$StartedImpl _value, $Res Function(_$StartedImpl) _then)
      : super(_value, _then);

  /// Create a copy of UserProfileEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$StartedImpl implements _Started {
  const _$StartedImpl();

  @override
  String toString() {
    return 'UserProfileEvent.started()';
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
    required TResult Function() userProfileFetched,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? userProfileFetched,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? userProfileFetched,
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
    required TResult Function(_userProfileFetched value) userProfileFetched,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_userProfileFetched value)? userProfileFetched,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_userProfileFetched value)? userProfileFetched,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements UserProfileEvent {
  const factory _Started() = _$StartedImpl;
}

/// @nodoc
abstract class _$$userProfileFetchedImplCopyWith<$Res> {
  factory _$$userProfileFetchedImplCopyWith(_$userProfileFetchedImpl value,
          $Res Function(_$userProfileFetchedImpl) then) =
      __$$userProfileFetchedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$userProfileFetchedImplCopyWithImpl<$Res>
    extends _$UserProfileEventCopyWithImpl<$Res, _$userProfileFetchedImpl>
    implements _$$userProfileFetchedImplCopyWith<$Res> {
  __$$userProfileFetchedImplCopyWithImpl(_$userProfileFetchedImpl _value,
      $Res Function(_$userProfileFetchedImpl) _then)
      : super(_value, _then);

  /// Create a copy of UserProfileEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$userProfileFetchedImpl implements _userProfileFetched {
  const _$userProfileFetchedImpl();

  @override
  String toString() {
    return 'UserProfileEvent.userProfileFetched()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$userProfileFetchedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() userProfileFetched,
  }) {
    return userProfileFetched();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? userProfileFetched,
  }) {
    return userProfileFetched?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? userProfileFetched,
    required TResult orElse(),
  }) {
    if (userProfileFetched != null) {
      return userProfileFetched();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_userProfileFetched value) userProfileFetched,
  }) {
    return userProfileFetched(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_userProfileFetched value)? userProfileFetched,
  }) {
    return userProfileFetched?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_userProfileFetched value)? userProfileFetched,
    required TResult orElse(),
  }) {
    if (userProfileFetched != null) {
      return userProfileFetched(this);
    }
    return orElse();
  }
}

abstract class _userProfileFetched implements UserProfileEvent {
  const factory _userProfileFetched() = _$userProfileFetchedImpl;
}

/// @nodoc
mixin _$UserProfileState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(UserProfileModel userProfile) success,
    required TResult Function(String errorMessage) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(UserProfileModel userProfile)? success,
    TResult? Function(String errorMessage)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(UserProfileModel userProfile)? success,
    TResult Function(String errorMessage)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(UserProfileLoading value) loading,
    required TResult Function(UserProfileSuccess value) success,
    required TResult Function(UserProfileError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(UserProfileLoading value)? loading,
    TResult? Function(UserProfileSuccess value)? success,
    TResult? Function(UserProfileError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(UserProfileLoading value)? loading,
    TResult Function(UserProfileSuccess value)? success,
    TResult Function(UserProfileError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserProfileStateCopyWith<$Res> {
  factory $UserProfileStateCopyWith(
          UserProfileState value, $Res Function(UserProfileState) then) =
      _$UserProfileStateCopyWithImpl<$Res, UserProfileState>;
}

/// @nodoc
class _$UserProfileStateCopyWithImpl<$Res, $Val extends UserProfileState>
    implements $UserProfileStateCopyWith<$Res> {
  _$UserProfileStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UserProfileState
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
    extends _$UserProfileStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);

  /// Create a copy of UserProfileState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl();

  @override
  String toString() {
    return 'UserProfileState.initial()';
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
    required TResult Function(UserProfileModel userProfile) success,
    required TResult Function(String errorMessage) error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(UserProfileModel userProfile)? success,
    TResult? Function(String errorMessage)? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(UserProfileModel userProfile)? success,
    TResult Function(String errorMessage)? error,
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
    required TResult Function(UserProfileLoading value) loading,
    required TResult Function(UserProfileSuccess value) success,
    required TResult Function(UserProfileError value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(UserProfileLoading value)? loading,
    TResult? Function(UserProfileSuccess value)? success,
    TResult? Function(UserProfileError value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(UserProfileLoading value)? loading,
    TResult Function(UserProfileSuccess value)? success,
    TResult Function(UserProfileError value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements UserProfileState {
  const factory _Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$UserProfileLoadingImplCopyWith<$Res> {
  factory _$$UserProfileLoadingImplCopyWith(_$UserProfileLoadingImpl value,
          $Res Function(_$UserProfileLoadingImpl) then) =
      __$$UserProfileLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$UserProfileLoadingImplCopyWithImpl<$Res>
    extends _$UserProfileStateCopyWithImpl<$Res, _$UserProfileLoadingImpl>
    implements _$$UserProfileLoadingImplCopyWith<$Res> {
  __$$UserProfileLoadingImplCopyWithImpl(_$UserProfileLoadingImpl _value,
      $Res Function(_$UserProfileLoadingImpl) _then)
      : super(_value, _then);

  /// Create a copy of UserProfileState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$UserProfileLoadingImpl implements UserProfileLoading {
  const _$UserProfileLoadingImpl();

  @override
  String toString() {
    return 'UserProfileState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$UserProfileLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(UserProfileModel userProfile) success,
    required TResult Function(String errorMessage) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(UserProfileModel userProfile)? success,
    TResult? Function(String errorMessage)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(UserProfileModel userProfile)? success,
    TResult Function(String errorMessage)? error,
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
    required TResult Function(UserProfileLoading value) loading,
    required TResult Function(UserProfileSuccess value) success,
    required TResult Function(UserProfileError value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(UserProfileLoading value)? loading,
    TResult? Function(UserProfileSuccess value)? success,
    TResult? Function(UserProfileError value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(UserProfileLoading value)? loading,
    TResult Function(UserProfileSuccess value)? success,
    TResult Function(UserProfileError value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class UserProfileLoading implements UserProfileState {
  const factory UserProfileLoading() = _$UserProfileLoadingImpl;
}

/// @nodoc
abstract class _$$UserProfileSuccessImplCopyWith<$Res> {
  factory _$$UserProfileSuccessImplCopyWith(_$UserProfileSuccessImpl value,
          $Res Function(_$UserProfileSuccessImpl) then) =
      __$$UserProfileSuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({UserProfileModel userProfile});
}

/// @nodoc
class __$$UserProfileSuccessImplCopyWithImpl<$Res>
    extends _$UserProfileStateCopyWithImpl<$Res, _$UserProfileSuccessImpl>
    implements _$$UserProfileSuccessImplCopyWith<$Res> {
  __$$UserProfileSuccessImplCopyWithImpl(_$UserProfileSuccessImpl _value,
      $Res Function(_$UserProfileSuccessImpl) _then)
      : super(_value, _then);

  /// Create a copy of UserProfileState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userProfile = null,
  }) {
    return _then(_$UserProfileSuccessImpl(
      null == userProfile
          ? _value.userProfile
          : userProfile // ignore: cast_nullable_to_non_nullable
              as UserProfileModel,
    ));
  }
}

/// @nodoc

class _$UserProfileSuccessImpl implements UserProfileSuccess {
  const _$UserProfileSuccessImpl(this.userProfile);

  @override
  final UserProfileModel userProfile;

  @override
  String toString() {
    return 'UserProfileState.success(userProfile: $userProfile)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserProfileSuccessImpl &&
            (identical(other.userProfile, userProfile) ||
                other.userProfile == userProfile));
  }

  @override
  int get hashCode => Object.hash(runtimeType, userProfile);

  /// Create a copy of UserProfileState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UserProfileSuccessImplCopyWith<_$UserProfileSuccessImpl> get copyWith =>
      __$$UserProfileSuccessImplCopyWithImpl<_$UserProfileSuccessImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(UserProfileModel userProfile) success,
    required TResult Function(String errorMessage) error,
  }) {
    return success(userProfile);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(UserProfileModel userProfile)? success,
    TResult? Function(String errorMessage)? error,
  }) {
    return success?.call(userProfile);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(UserProfileModel userProfile)? success,
    TResult Function(String errorMessage)? error,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(userProfile);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(UserProfileLoading value) loading,
    required TResult Function(UserProfileSuccess value) success,
    required TResult Function(UserProfileError value) error,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(UserProfileLoading value)? loading,
    TResult? Function(UserProfileSuccess value)? success,
    TResult? Function(UserProfileError value)? error,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(UserProfileLoading value)? loading,
    TResult Function(UserProfileSuccess value)? success,
    TResult Function(UserProfileError value)? error,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class UserProfileSuccess implements UserProfileState {
  const factory UserProfileSuccess(final UserProfileModel userProfile) =
      _$UserProfileSuccessImpl;

  UserProfileModel get userProfile;

  /// Create a copy of UserProfileState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UserProfileSuccessImplCopyWith<_$UserProfileSuccessImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UserProfileErrorImplCopyWith<$Res> {
  factory _$$UserProfileErrorImplCopyWith(_$UserProfileErrorImpl value,
          $Res Function(_$UserProfileErrorImpl) then) =
      __$$UserProfileErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String errorMessage});
}

/// @nodoc
class __$$UserProfileErrorImplCopyWithImpl<$Res>
    extends _$UserProfileStateCopyWithImpl<$Res, _$UserProfileErrorImpl>
    implements _$$UserProfileErrorImplCopyWith<$Res> {
  __$$UserProfileErrorImplCopyWithImpl(_$UserProfileErrorImpl _value,
      $Res Function(_$UserProfileErrorImpl) _then)
      : super(_value, _then);

  /// Create a copy of UserProfileState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? errorMessage = null,
  }) {
    return _then(_$UserProfileErrorImpl(
      null == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$UserProfileErrorImpl implements UserProfileError {
  const _$UserProfileErrorImpl(this.errorMessage);

  @override
  final String errorMessage;

  @override
  String toString() {
    return 'UserProfileState.error(errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserProfileErrorImpl &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @override
  int get hashCode => Object.hash(runtimeType, errorMessage);

  /// Create a copy of UserProfileState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UserProfileErrorImplCopyWith<_$UserProfileErrorImpl> get copyWith =>
      __$$UserProfileErrorImplCopyWithImpl<_$UserProfileErrorImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(UserProfileModel userProfile) success,
    required TResult Function(String errorMessage) error,
  }) {
    return error(errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(UserProfileModel userProfile)? success,
    TResult? Function(String errorMessage)? error,
  }) {
    return error?.call(errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(UserProfileModel userProfile)? success,
    TResult Function(String errorMessage)? error,
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
    required TResult Function(UserProfileLoading value) loading,
    required TResult Function(UserProfileSuccess value) success,
    required TResult Function(UserProfileError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(UserProfileLoading value)? loading,
    TResult? Function(UserProfileSuccess value)? success,
    TResult? Function(UserProfileError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(UserProfileLoading value)? loading,
    TResult Function(UserProfileSuccess value)? success,
    TResult Function(UserProfileError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class UserProfileError implements UserProfileState {
  const factory UserProfileError(final String errorMessage) =
      _$UserProfileErrorImpl;

  String get errorMessage;

  /// Create a copy of UserProfileState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UserProfileErrorImplCopyWith<_$UserProfileErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
