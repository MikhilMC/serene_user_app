// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'property_details_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$PropertyDetailsEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(int propertyId) propertyDetailsFetched,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(int propertyId)? propertyDetailsFetched,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(int propertyId)? propertyDetailsFetched,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_propertyDetailsFetched value)
        propertyDetailsFetched,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_propertyDetailsFetched value)? propertyDetailsFetched,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_propertyDetailsFetched value)? propertyDetailsFetched,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PropertyDetailsEventCopyWith<$Res> {
  factory $PropertyDetailsEventCopyWith(PropertyDetailsEvent value,
          $Res Function(PropertyDetailsEvent) then) =
      _$PropertyDetailsEventCopyWithImpl<$Res, PropertyDetailsEvent>;
}

/// @nodoc
class _$PropertyDetailsEventCopyWithImpl<$Res,
        $Val extends PropertyDetailsEvent>
    implements $PropertyDetailsEventCopyWith<$Res> {
  _$PropertyDetailsEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PropertyDetailsEvent
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
    extends _$PropertyDetailsEventCopyWithImpl<$Res, _$StartedImpl>
    implements _$$StartedImplCopyWith<$Res> {
  __$$StartedImplCopyWithImpl(
      _$StartedImpl _value, $Res Function(_$StartedImpl) _then)
      : super(_value, _then);

  /// Create a copy of PropertyDetailsEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$StartedImpl implements _Started {
  const _$StartedImpl();

  @override
  String toString() {
    return 'PropertyDetailsEvent.started()';
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
    required TResult Function(int propertyId) propertyDetailsFetched,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(int propertyId)? propertyDetailsFetched,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(int propertyId)? propertyDetailsFetched,
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
    required TResult Function(_propertyDetailsFetched value)
        propertyDetailsFetched,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_propertyDetailsFetched value)? propertyDetailsFetched,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_propertyDetailsFetched value)? propertyDetailsFetched,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements PropertyDetailsEvent {
  const factory _Started() = _$StartedImpl;
}

/// @nodoc
abstract class _$$propertyDetailsFetchedImplCopyWith<$Res> {
  factory _$$propertyDetailsFetchedImplCopyWith(
          _$propertyDetailsFetchedImpl value,
          $Res Function(_$propertyDetailsFetchedImpl) then) =
      __$$propertyDetailsFetchedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int propertyId});
}

/// @nodoc
class __$$propertyDetailsFetchedImplCopyWithImpl<$Res>
    extends _$PropertyDetailsEventCopyWithImpl<$Res,
        _$propertyDetailsFetchedImpl>
    implements _$$propertyDetailsFetchedImplCopyWith<$Res> {
  __$$propertyDetailsFetchedImplCopyWithImpl(
      _$propertyDetailsFetchedImpl _value,
      $Res Function(_$propertyDetailsFetchedImpl) _then)
      : super(_value, _then);

  /// Create a copy of PropertyDetailsEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? propertyId = null,
  }) {
    return _then(_$propertyDetailsFetchedImpl(
      null == propertyId
          ? _value.propertyId
          : propertyId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$propertyDetailsFetchedImpl implements _propertyDetailsFetched {
  const _$propertyDetailsFetchedImpl(this.propertyId);

  @override
  final int propertyId;

  @override
  String toString() {
    return 'PropertyDetailsEvent.propertyDetailsFetched(propertyId: $propertyId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$propertyDetailsFetchedImpl &&
            (identical(other.propertyId, propertyId) ||
                other.propertyId == propertyId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, propertyId);

  /// Create a copy of PropertyDetailsEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$propertyDetailsFetchedImplCopyWith<_$propertyDetailsFetchedImpl>
      get copyWith => __$$propertyDetailsFetchedImplCopyWithImpl<
          _$propertyDetailsFetchedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(int propertyId) propertyDetailsFetched,
  }) {
    return propertyDetailsFetched(propertyId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(int propertyId)? propertyDetailsFetched,
  }) {
    return propertyDetailsFetched?.call(propertyId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(int propertyId)? propertyDetailsFetched,
    required TResult orElse(),
  }) {
    if (propertyDetailsFetched != null) {
      return propertyDetailsFetched(propertyId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_propertyDetailsFetched value)
        propertyDetailsFetched,
  }) {
    return propertyDetailsFetched(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_propertyDetailsFetched value)? propertyDetailsFetched,
  }) {
    return propertyDetailsFetched?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_propertyDetailsFetched value)? propertyDetailsFetched,
    required TResult orElse(),
  }) {
    if (propertyDetailsFetched != null) {
      return propertyDetailsFetched(this);
    }
    return orElse();
  }
}

abstract class _propertyDetailsFetched implements PropertyDetailsEvent {
  const factory _propertyDetailsFetched(final int propertyId) =
      _$propertyDetailsFetchedImpl;

  int get propertyId;

  /// Create a copy of PropertyDetailsEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$propertyDetailsFetchedImplCopyWith<_$propertyDetailsFetchedImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$PropertyDetailsState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(PropertyModel propertyDetails) success,
    required TResult Function(String error) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(PropertyModel propertyDetails)? success,
    TResult? Function(String error)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(PropertyModel propertyDetails)? success,
    TResult Function(String error)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(PropertyDetailsLoading value) loading,
    required TResult Function(PropertyDetailsSuccess value) success,
    required TResult Function(PropertyDetailsError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(PropertyDetailsLoading value)? loading,
    TResult? Function(PropertyDetailsSuccess value)? success,
    TResult? Function(PropertyDetailsError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(PropertyDetailsLoading value)? loading,
    TResult Function(PropertyDetailsSuccess value)? success,
    TResult Function(PropertyDetailsError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PropertyDetailsStateCopyWith<$Res> {
  factory $PropertyDetailsStateCopyWith(PropertyDetailsState value,
          $Res Function(PropertyDetailsState) then) =
      _$PropertyDetailsStateCopyWithImpl<$Res, PropertyDetailsState>;
}

/// @nodoc
class _$PropertyDetailsStateCopyWithImpl<$Res,
        $Val extends PropertyDetailsState>
    implements $PropertyDetailsStateCopyWith<$Res> {
  _$PropertyDetailsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PropertyDetailsState
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
    extends _$PropertyDetailsStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);

  /// Create a copy of PropertyDetailsState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl();

  @override
  String toString() {
    return 'PropertyDetailsState.initial()';
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
    required TResult Function(PropertyModel propertyDetails) success,
    required TResult Function(String error) error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(PropertyModel propertyDetails)? success,
    TResult? Function(String error)? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(PropertyModel propertyDetails)? success,
    TResult Function(String error)? error,
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
    required TResult Function(PropertyDetailsLoading value) loading,
    required TResult Function(PropertyDetailsSuccess value) success,
    required TResult Function(PropertyDetailsError value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(PropertyDetailsLoading value)? loading,
    TResult? Function(PropertyDetailsSuccess value)? success,
    TResult? Function(PropertyDetailsError value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(PropertyDetailsLoading value)? loading,
    TResult Function(PropertyDetailsSuccess value)? success,
    TResult Function(PropertyDetailsError value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements PropertyDetailsState {
  const factory _Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$PropertyDetailsLoadingImplCopyWith<$Res> {
  factory _$$PropertyDetailsLoadingImplCopyWith(
          _$PropertyDetailsLoadingImpl value,
          $Res Function(_$PropertyDetailsLoadingImpl) then) =
      __$$PropertyDetailsLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$PropertyDetailsLoadingImplCopyWithImpl<$Res>
    extends _$PropertyDetailsStateCopyWithImpl<$Res,
        _$PropertyDetailsLoadingImpl>
    implements _$$PropertyDetailsLoadingImplCopyWith<$Res> {
  __$$PropertyDetailsLoadingImplCopyWithImpl(
      _$PropertyDetailsLoadingImpl _value,
      $Res Function(_$PropertyDetailsLoadingImpl) _then)
      : super(_value, _then);

  /// Create a copy of PropertyDetailsState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$PropertyDetailsLoadingImpl implements PropertyDetailsLoading {
  const _$PropertyDetailsLoadingImpl();

  @override
  String toString() {
    return 'PropertyDetailsState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PropertyDetailsLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(PropertyModel propertyDetails) success,
    required TResult Function(String error) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(PropertyModel propertyDetails)? success,
    TResult? Function(String error)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(PropertyModel propertyDetails)? success,
    TResult Function(String error)? error,
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
    required TResult Function(PropertyDetailsLoading value) loading,
    required TResult Function(PropertyDetailsSuccess value) success,
    required TResult Function(PropertyDetailsError value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(PropertyDetailsLoading value)? loading,
    TResult? Function(PropertyDetailsSuccess value)? success,
    TResult? Function(PropertyDetailsError value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(PropertyDetailsLoading value)? loading,
    TResult Function(PropertyDetailsSuccess value)? success,
    TResult Function(PropertyDetailsError value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class PropertyDetailsLoading implements PropertyDetailsState {
  const factory PropertyDetailsLoading() = _$PropertyDetailsLoadingImpl;
}

/// @nodoc
abstract class _$$PropertyDetailsSuccessImplCopyWith<$Res> {
  factory _$$PropertyDetailsSuccessImplCopyWith(
          _$PropertyDetailsSuccessImpl value,
          $Res Function(_$PropertyDetailsSuccessImpl) then) =
      __$$PropertyDetailsSuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({PropertyModel propertyDetails});
}

/// @nodoc
class __$$PropertyDetailsSuccessImplCopyWithImpl<$Res>
    extends _$PropertyDetailsStateCopyWithImpl<$Res,
        _$PropertyDetailsSuccessImpl>
    implements _$$PropertyDetailsSuccessImplCopyWith<$Res> {
  __$$PropertyDetailsSuccessImplCopyWithImpl(
      _$PropertyDetailsSuccessImpl _value,
      $Res Function(_$PropertyDetailsSuccessImpl) _then)
      : super(_value, _then);

  /// Create a copy of PropertyDetailsState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? propertyDetails = null,
  }) {
    return _then(_$PropertyDetailsSuccessImpl(
      null == propertyDetails
          ? _value.propertyDetails
          : propertyDetails // ignore: cast_nullable_to_non_nullable
              as PropertyModel,
    ));
  }
}

/// @nodoc

class _$PropertyDetailsSuccessImpl implements PropertyDetailsSuccess {
  const _$PropertyDetailsSuccessImpl(this.propertyDetails);

  @override
  final PropertyModel propertyDetails;

  @override
  String toString() {
    return 'PropertyDetailsState.success(propertyDetails: $propertyDetails)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PropertyDetailsSuccessImpl &&
            (identical(other.propertyDetails, propertyDetails) ||
                other.propertyDetails == propertyDetails));
  }

  @override
  int get hashCode => Object.hash(runtimeType, propertyDetails);

  /// Create a copy of PropertyDetailsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PropertyDetailsSuccessImplCopyWith<_$PropertyDetailsSuccessImpl>
      get copyWith => __$$PropertyDetailsSuccessImplCopyWithImpl<
          _$PropertyDetailsSuccessImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(PropertyModel propertyDetails) success,
    required TResult Function(String error) error,
  }) {
    return success(propertyDetails);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(PropertyModel propertyDetails)? success,
    TResult? Function(String error)? error,
  }) {
    return success?.call(propertyDetails);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(PropertyModel propertyDetails)? success,
    TResult Function(String error)? error,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(propertyDetails);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(PropertyDetailsLoading value) loading,
    required TResult Function(PropertyDetailsSuccess value) success,
    required TResult Function(PropertyDetailsError value) error,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(PropertyDetailsLoading value)? loading,
    TResult? Function(PropertyDetailsSuccess value)? success,
    TResult? Function(PropertyDetailsError value)? error,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(PropertyDetailsLoading value)? loading,
    TResult Function(PropertyDetailsSuccess value)? success,
    TResult Function(PropertyDetailsError value)? error,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class PropertyDetailsSuccess implements PropertyDetailsState {
  const factory PropertyDetailsSuccess(final PropertyModel propertyDetails) =
      _$PropertyDetailsSuccessImpl;

  PropertyModel get propertyDetails;

  /// Create a copy of PropertyDetailsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PropertyDetailsSuccessImplCopyWith<_$PropertyDetailsSuccessImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$PropertyDetailsErrorImplCopyWith<$Res> {
  factory _$$PropertyDetailsErrorImplCopyWith(_$PropertyDetailsErrorImpl value,
          $Res Function(_$PropertyDetailsErrorImpl) then) =
      __$$PropertyDetailsErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String error});
}

/// @nodoc
class __$$PropertyDetailsErrorImplCopyWithImpl<$Res>
    extends _$PropertyDetailsStateCopyWithImpl<$Res, _$PropertyDetailsErrorImpl>
    implements _$$PropertyDetailsErrorImplCopyWith<$Res> {
  __$$PropertyDetailsErrorImplCopyWithImpl(_$PropertyDetailsErrorImpl _value,
      $Res Function(_$PropertyDetailsErrorImpl) _then)
      : super(_value, _then);

  /// Create a copy of PropertyDetailsState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$PropertyDetailsErrorImpl(
      null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$PropertyDetailsErrorImpl implements PropertyDetailsError {
  const _$PropertyDetailsErrorImpl(this.error);

  @override
  final String error;

  @override
  String toString() {
    return 'PropertyDetailsState.error(error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PropertyDetailsErrorImpl &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  /// Create a copy of PropertyDetailsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PropertyDetailsErrorImplCopyWith<_$PropertyDetailsErrorImpl>
      get copyWith =>
          __$$PropertyDetailsErrorImplCopyWithImpl<_$PropertyDetailsErrorImpl>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(PropertyModel propertyDetails) success,
    required TResult Function(String error) error,
  }) {
    return error(this.error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(PropertyModel propertyDetails)? success,
    TResult? Function(String error)? error,
  }) {
    return error?.call(this.error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(PropertyModel propertyDetails)? success,
    TResult Function(String error)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this.error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(PropertyDetailsLoading value) loading,
    required TResult Function(PropertyDetailsSuccess value) success,
    required TResult Function(PropertyDetailsError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(PropertyDetailsLoading value)? loading,
    TResult? Function(PropertyDetailsSuccess value)? success,
    TResult? Function(PropertyDetailsError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(PropertyDetailsLoading value)? loading,
    TResult Function(PropertyDetailsSuccess value)? success,
    TResult Function(PropertyDetailsError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class PropertyDetailsError implements PropertyDetailsState {
  const factory PropertyDetailsError(final String error) =
      _$PropertyDetailsErrorImpl;

  String get error;

  /// Create a copy of PropertyDetailsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PropertyDetailsErrorImplCopyWith<_$PropertyDetailsErrorImpl>
      get copyWith => throw _privateConstructorUsedError;
}
