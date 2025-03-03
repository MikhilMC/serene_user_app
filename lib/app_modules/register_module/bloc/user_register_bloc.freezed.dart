// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_register_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$UserRegisterEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(UserRegistrationDetails userRegistrationDetails)
        userRegistered,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(UserRegistrationDetails userRegistrationDetails)?
        userRegistered,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(UserRegistrationDetails userRegistrationDetails)?
        userRegistered,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_UserRegistered value) userRegistered,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_UserRegistered value)? userRegistered,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_UserRegistered value)? userRegistered,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserRegisterEventCopyWith<$Res> {
  factory $UserRegisterEventCopyWith(
          UserRegisterEvent value, $Res Function(UserRegisterEvent) then) =
      _$UserRegisterEventCopyWithImpl<$Res, UserRegisterEvent>;
}

/// @nodoc
class _$UserRegisterEventCopyWithImpl<$Res, $Val extends UserRegisterEvent>
    implements $UserRegisterEventCopyWith<$Res> {
  _$UserRegisterEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UserRegisterEvent
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
    extends _$UserRegisterEventCopyWithImpl<$Res, _$StartedImpl>
    implements _$$StartedImplCopyWith<$Res> {
  __$$StartedImplCopyWithImpl(
      _$StartedImpl _value, $Res Function(_$StartedImpl) _then)
      : super(_value, _then);

  /// Create a copy of UserRegisterEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$StartedImpl implements _Started {
  const _$StartedImpl();

  @override
  String toString() {
    return 'UserRegisterEvent.started()';
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
    required TResult Function(UserRegistrationDetails userRegistrationDetails)
        userRegistered,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(UserRegistrationDetails userRegistrationDetails)?
        userRegistered,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(UserRegistrationDetails userRegistrationDetails)?
        userRegistered,
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
    required TResult Function(_UserRegistered value) userRegistered,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_UserRegistered value)? userRegistered,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_UserRegistered value)? userRegistered,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements UserRegisterEvent {
  const factory _Started() = _$StartedImpl;
}

/// @nodoc
abstract class _$$UserRegisteredImplCopyWith<$Res> {
  factory _$$UserRegisteredImplCopyWith(_$UserRegisteredImpl value,
          $Res Function(_$UserRegisteredImpl) then) =
      __$$UserRegisteredImplCopyWithImpl<$Res>;
  @useResult
  $Res call({UserRegistrationDetails userRegistrationDetails});
}

/// @nodoc
class __$$UserRegisteredImplCopyWithImpl<$Res>
    extends _$UserRegisterEventCopyWithImpl<$Res, _$UserRegisteredImpl>
    implements _$$UserRegisteredImplCopyWith<$Res> {
  __$$UserRegisteredImplCopyWithImpl(
      _$UserRegisteredImpl _value, $Res Function(_$UserRegisteredImpl) _then)
      : super(_value, _then);

  /// Create a copy of UserRegisterEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userRegistrationDetails = null,
  }) {
    return _then(_$UserRegisteredImpl(
      null == userRegistrationDetails
          ? _value.userRegistrationDetails
          : userRegistrationDetails // ignore: cast_nullable_to_non_nullable
              as UserRegistrationDetails,
    ));
  }
}

/// @nodoc

class _$UserRegisteredImpl implements _UserRegistered {
  const _$UserRegisteredImpl(this.userRegistrationDetails);

  @override
  final UserRegistrationDetails userRegistrationDetails;

  @override
  String toString() {
    return 'UserRegisterEvent.userRegistered(userRegistrationDetails: $userRegistrationDetails)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserRegisteredImpl &&
            (identical(
                    other.userRegistrationDetails, userRegistrationDetails) ||
                other.userRegistrationDetails == userRegistrationDetails));
  }

  @override
  int get hashCode => Object.hash(runtimeType, userRegistrationDetails);

  /// Create a copy of UserRegisterEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UserRegisteredImplCopyWith<_$UserRegisteredImpl> get copyWith =>
      __$$UserRegisteredImplCopyWithImpl<_$UserRegisteredImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(UserRegistrationDetails userRegistrationDetails)
        userRegistered,
  }) {
    return userRegistered(userRegistrationDetails);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(UserRegistrationDetails userRegistrationDetails)?
        userRegistered,
  }) {
    return userRegistered?.call(userRegistrationDetails);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(UserRegistrationDetails userRegistrationDetails)?
        userRegistered,
    required TResult orElse(),
  }) {
    if (userRegistered != null) {
      return userRegistered(userRegistrationDetails);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_UserRegistered value) userRegistered,
  }) {
    return userRegistered(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_UserRegistered value)? userRegistered,
  }) {
    return userRegistered?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_UserRegistered value)? userRegistered,
    required TResult orElse(),
  }) {
    if (userRegistered != null) {
      return userRegistered(this);
    }
    return orElse();
  }
}

abstract class _UserRegistered implements UserRegisterEvent {
  const factory _UserRegistered(
          final UserRegistrationDetails userRegistrationDetails) =
      _$UserRegisteredImpl;

  UserRegistrationDetails get userRegistrationDetails;

  /// Create a copy of UserRegisterEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UserRegisteredImplCopyWith<_$UserRegisteredImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$UserRegisterState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(UserRegisterResponseModel response) success,
    required TResult Function(String errorMessage) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(UserRegisterResponseModel response)? success,
    TResult? Function(String errorMessage)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(UserRegisterResponseModel response)? success,
    TResult Function(String errorMessage)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_UserRegistrationLoading value) loading,
    required TResult Function(_UserRegistrationSuccess value) success,
    required TResult Function(_UserRegistrationFailure value) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_UserRegistrationLoading value)? loading,
    TResult? Function(_UserRegistrationSuccess value)? success,
    TResult? Function(_UserRegistrationFailure value)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_UserRegistrationLoading value)? loading,
    TResult Function(_UserRegistrationSuccess value)? success,
    TResult Function(_UserRegistrationFailure value)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserRegisterStateCopyWith<$Res> {
  factory $UserRegisterStateCopyWith(
          UserRegisterState value, $Res Function(UserRegisterState) then) =
      _$UserRegisterStateCopyWithImpl<$Res, UserRegisterState>;
}

/// @nodoc
class _$UserRegisterStateCopyWithImpl<$Res, $Val extends UserRegisterState>
    implements $UserRegisterStateCopyWith<$Res> {
  _$UserRegisterStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UserRegisterState
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
    extends _$UserRegisterStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);

  /// Create a copy of UserRegisterState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl();

  @override
  String toString() {
    return 'UserRegisterState.initial()';
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
    required TResult Function(UserRegisterResponseModel response) success,
    required TResult Function(String errorMessage) failure,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(UserRegisterResponseModel response)? success,
    TResult? Function(String errorMessage)? failure,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(UserRegisterResponseModel response)? success,
    TResult Function(String errorMessage)? failure,
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
    required TResult Function(_UserRegistrationLoading value) loading,
    required TResult Function(_UserRegistrationSuccess value) success,
    required TResult Function(_UserRegistrationFailure value) failure,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_UserRegistrationLoading value)? loading,
    TResult? Function(_UserRegistrationSuccess value)? success,
    TResult? Function(_UserRegistrationFailure value)? failure,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_UserRegistrationLoading value)? loading,
    TResult Function(_UserRegistrationSuccess value)? success,
    TResult Function(_UserRegistrationFailure value)? failure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements UserRegisterState {
  const factory _Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$UserRegistrationLoadingImplCopyWith<$Res> {
  factory _$$UserRegistrationLoadingImplCopyWith(
          _$UserRegistrationLoadingImpl value,
          $Res Function(_$UserRegistrationLoadingImpl) then) =
      __$$UserRegistrationLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$UserRegistrationLoadingImplCopyWithImpl<$Res>
    extends _$UserRegisterStateCopyWithImpl<$Res, _$UserRegistrationLoadingImpl>
    implements _$$UserRegistrationLoadingImplCopyWith<$Res> {
  __$$UserRegistrationLoadingImplCopyWithImpl(
      _$UserRegistrationLoadingImpl _value,
      $Res Function(_$UserRegistrationLoadingImpl) _then)
      : super(_value, _then);

  /// Create a copy of UserRegisterState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$UserRegistrationLoadingImpl implements _UserRegistrationLoading {
  const _$UserRegistrationLoadingImpl();

  @override
  String toString() {
    return 'UserRegisterState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserRegistrationLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(UserRegisterResponseModel response) success,
    required TResult Function(String errorMessage) failure,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(UserRegisterResponseModel response)? success,
    TResult? Function(String errorMessage)? failure,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(UserRegisterResponseModel response)? success,
    TResult Function(String errorMessage)? failure,
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
    required TResult Function(_UserRegistrationLoading value) loading,
    required TResult Function(_UserRegistrationSuccess value) success,
    required TResult Function(_UserRegistrationFailure value) failure,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_UserRegistrationLoading value)? loading,
    TResult? Function(_UserRegistrationSuccess value)? success,
    TResult? Function(_UserRegistrationFailure value)? failure,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_UserRegistrationLoading value)? loading,
    TResult Function(_UserRegistrationSuccess value)? success,
    TResult Function(_UserRegistrationFailure value)? failure,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _UserRegistrationLoading implements UserRegisterState {
  const factory _UserRegistrationLoading() = _$UserRegistrationLoadingImpl;
}

/// @nodoc
abstract class _$$UserRegistrationSuccessImplCopyWith<$Res> {
  factory _$$UserRegistrationSuccessImplCopyWith(
          _$UserRegistrationSuccessImpl value,
          $Res Function(_$UserRegistrationSuccessImpl) then) =
      __$$UserRegistrationSuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({UserRegisterResponseModel response});

  $UserRegisterResponseModelCopyWith<$Res> get response;
}

/// @nodoc
class __$$UserRegistrationSuccessImplCopyWithImpl<$Res>
    extends _$UserRegisterStateCopyWithImpl<$Res, _$UserRegistrationSuccessImpl>
    implements _$$UserRegistrationSuccessImplCopyWith<$Res> {
  __$$UserRegistrationSuccessImplCopyWithImpl(
      _$UserRegistrationSuccessImpl _value,
      $Res Function(_$UserRegistrationSuccessImpl) _then)
      : super(_value, _then);

  /// Create a copy of UserRegisterState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? response = null,
  }) {
    return _then(_$UserRegistrationSuccessImpl(
      null == response
          ? _value.response
          : response // ignore: cast_nullable_to_non_nullable
              as UserRegisterResponseModel,
    ));
  }

  /// Create a copy of UserRegisterState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserRegisterResponseModelCopyWith<$Res> get response {
    return $UserRegisterResponseModelCopyWith<$Res>(_value.response, (value) {
      return _then(_value.copyWith(response: value));
    });
  }
}

/// @nodoc

class _$UserRegistrationSuccessImpl implements _UserRegistrationSuccess {
  const _$UserRegistrationSuccessImpl(this.response);

  @override
  final UserRegisterResponseModel response;

  @override
  String toString() {
    return 'UserRegisterState.success(response: $response)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserRegistrationSuccessImpl &&
            (identical(other.response, response) ||
                other.response == response));
  }

  @override
  int get hashCode => Object.hash(runtimeType, response);

  /// Create a copy of UserRegisterState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UserRegistrationSuccessImplCopyWith<_$UserRegistrationSuccessImpl>
      get copyWith => __$$UserRegistrationSuccessImplCopyWithImpl<
          _$UserRegistrationSuccessImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(UserRegisterResponseModel response) success,
    required TResult Function(String errorMessage) failure,
  }) {
    return success(response);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(UserRegisterResponseModel response)? success,
    TResult? Function(String errorMessage)? failure,
  }) {
    return success?.call(response);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(UserRegisterResponseModel response)? success,
    TResult Function(String errorMessage)? failure,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(response);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_UserRegistrationLoading value) loading,
    required TResult Function(_UserRegistrationSuccess value) success,
    required TResult Function(_UserRegistrationFailure value) failure,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_UserRegistrationLoading value)? loading,
    TResult? Function(_UserRegistrationSuccess value)? success,
    TResult? Function(_UserRegistrationFailure value)? failure,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_UserRegistrationLoading value)? loading,
    TResult Function(_UserRegistrationSuccess value)? success,
    TResult Function(_UserRegistrationFailure value)? failure,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class _UserRegistrationSuccess implements UserRegisterState {
  const factory _UserRegistrationSuccess(
      final UserRegisterResponseModel response) = _$UserRegistrationSuccessImpl;

  UserRegisterResponseModel get response;

  /// Create a copy of UserRegisterState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UserRegistrationSuccessImplCopyWith<_$UserRegistrationSuccessImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UserRegistrationFailureImplCopyWith<$Res> {
  factory _$$UserRegistrationFailureImplCopyWith(
          _$UserRegistrationFailureImpl value,
          $Res Function(_$UserRegistrationFailureImpl) then) =
      __$$UserRegistrationFailureImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String errorMessage});
}

/// @nodoc
class __$$UserRegistrationFailureImplCopyWithImpl<$Res>
    extends _$UserRegisterStateCopyWithImpl<$Res, _$UserRegistrationFailureImpl>
    implements _$$UserRegistrationFailureImplCopyWith<$Res> {
  __$$UserRegistrationFailureImplCopyWithImpl(
      _$UserRegistrationFailureImpl _value,
      $Res Function(_$UserRegistrationFailureImpl) _then)
      : super(_value, _then);

  /// Create a copy of UserRegisterState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? errorMessage = null,
  }) {
    return _then(_$UserRegistrationFailureImpl(
      null == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$UserRegistrationFailureImpl implements _UserRegistrationFailure {
  const _$UserRegistrationFailureImpl(this.errorMessage);

  @override
  final String errorMessage;

  @override
  String toString() {
    return 'UserRegisterState.failure(errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserRegistrationFailureImpl &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @override
  int get hashCode => Object.hash(runtimeType, errorMessage);

  /// Create a copy of UserRegisterState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UserRegistrationFailureImplCopyWith<_$UserRegistrationFailureImpl>
      get copyWith => __$$UserRegistrationFailureImplCopyWithImpl<
          _$UserRegistrationFailureImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(UserRegisterResponseModel response) success,
    required TResult Function(String errorMessage) failure,
  }) {
    return failure(errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(UserRegisterResponseModel response)? success,
    TResult? Function(String errorMessage)? failure,
  }) {
    return failure?.call(errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(UserRegisterResponseModel response)? success,
    TResult Function(String errorMessage)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(errorMessage);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_UserRegistrationLoading value) loading,
    required TResult Function(_UserRegistrationSuccess value) success,
    required TResult Function(_UserRegistrationFailure value) failure,
  }) {
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_UserRegistrationLoading value)? loading,
    TResult? Function(_UserRegistrationSuccess value)? success,
    TResult? Function(_UserRegistrationFailure value)? failure,
  }) {
    return failure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_UserRegistrationLoading value)? loading,
    TResult Function(_UserRegistrationSuccess value)? success,
    TResult Function(_UserRegistrationFailure value)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class _UserRegistrationFailure implements UserRegisterState {
  const factory _UserRegistrationFailure(final String errorMessage) =
      _$UserRegistrationFailureImpl;

  String get errorMessage;

  /// Create a copy of UserRegisterState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UserRegistrationFailureImplCopyWith<_$UserRegistrationFailureImpl>
      get copyWith => throw _privateConstructorUsedError;
}
