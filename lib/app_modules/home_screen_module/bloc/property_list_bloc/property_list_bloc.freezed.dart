// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'property_list_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$PropertyListEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String place, String propertyType)
        propertyListFetched,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String place, String propertyType)? propertyListFetched,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String place, String propertyType)? propertyListFetched,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_propertyListFetched value) propertyListFetched,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_propertyListFetched value)? propertyListFetched,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_propertyListFetched value)? propertyListFetched,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PropertyListEventCopyWith<$Res> {
  factory $PropertyListEventCopyWith(
          PropertyListEvent value, $Res Function(PropertyListEvent) then) =
      _$PropertyListEventCopyWithImpl<$Res, PropertyListEvent>;
}

/// @nodoc
class _$PropertyListEventCopyWithImpl<$Res, $Val extends PropertyListEvent>
    implements $PropertyListEventCopyWith<$Res> {
  _$PropertyListEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PropertyListEvent
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
    extends _$PropertyListEventCopyWithImpl<$Res, _$StartedImpl>
    implements _$$StartedImplCopyWith<$Res> {
  __$$StartedImplCopyWithImpl(
      _$StartedImpl _value, $Res Function(_$StartedImpl) _then)
      : super(_value, _then);

  /// Create a copy of PropertyListEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$StartedImpl implements _Started {
  const _$StartedImpl();

  @override
  String toString() {
    return 'PropertyListEvent.started()';
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
    required TResult Function(String place, String propertyType)
        propertyListFetched,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String place, String propertyType)? propertyListFetched,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String place, String propertyType)? propertyListFetched,
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
    required TResult Function(_propertyListFetched value) propertyListFetched,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_propertyListFetched value)? propertyListFetched,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_propertyListFetched value)? propertyListFetched,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements PropertyListEvent {
  const factory _Started() = _$StartedImpl;
}

/// @nodoc
abstract class _$$propertyListFetchedImplCopyWith<$Res> {
  factory _$$propertyListFetchedImplCopyWith(_$propertyListFetchedImpl value,
          $Res Function(_$propertyListFetchedImpl) then) =
      __$$propertyListFetchedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String place, String propertyType});
}

/// @nodoc
class __$$propertyListFetchedImplCopyWithImpl<$Res>
    extends _$PropertyListEventCopyWithImpl<$Res, _$propertyListFetchedImpl>
    implements _$$propertyListFetchedImplCopyWith<$Res> {
  __$$propertyListFetchedImplCopyWithImpl(_$propertyListFetchedImpl _value,
      $Res Function(_$propertyListFetchedImpl) _then)
      : super(_value, _then);

  /// Create a copy of PropertyListEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? place = null,
    Object? propertyType = null,
  }) {
    return _then(_$propertyListFetchedImpl(
      place: null == place
          ? _value.place
          : place // ignore: cast_nullable_to_non_nullable
              as String,
      propertyType: null == propertyType
          ? _value.propertyType
          : propertyType // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$propertyListFetchedImpl implements _propertyListFetched {
  const _$propertyListFetchedImpl(
      {required this.place, required this.propertyType});

  @override
  final String place;
  @override
  final String propertyType;

  @override
  String toString() {
    return 'PropertyListEvent.propertyListFetched(place: $place, propertyType: $propertyType)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$propertyListFetchedImpl &&
            (identical(other.place, place) || other.place == place) &&
            (identical(other.propertyType, propertyType) ||
                other.propertyType == propertyType));
  }

  @override
  int get hashCode => Object.hash(runtimeType, place, propertyType);

  /// Create a copy of PropertyListEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$propertyListFetchedImplCopyWith<_$propertyListFetchedImpl> get copyWith =>
      __$$propertyListFetchedImplCopyWithImpl<_$propertyListFetchedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String place, String propertyType)
        propertyListFetched,
  }) {
    return propertyListFetched(place, propertyType);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String place, String propertyType)? propertyListFetched,
  }) {
    return propertyListFetched?.call(place, propertyType);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String place, String propertyType)? propertyListFetched,
    required TResult orElse(),
  }) {
    if (propertyListFetched != null) {
      return propertyListFetched(place, propertyType);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_propertyListFetched value) propertyListFetched,
  }) {
    return propertyListFetched(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_propertyListFetched value)? propertyListFetched,
  }) {
    return propertyListFetched?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_propertyListFetched value)? propertyListFetched,
    required TResult orElse(),
  }) {
    if (propertyListFetched != null) {
      return propertyListFetched(this);
    }
    return orElse();
  }
}

abstract class _propertyListFetched implements PropertyListEvent {
  const factory _propertyListFetched(
      {required final String place,
      required final String propertyType}) = _$propertyListFetchedImpl;

  String get place;
  String get propertyType;

  /// Create a copy of PropertyListEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$propertyListFetchedImplCopyWith<_$propertyListFetchedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$PropertyListState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<PropertyModel> properties) success,
    required TResult Function(String errorMessage) error,
    required TResult Function() propertyListEmpty,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<PropertyModel> properties)? success,
    TResult? Function(String errorMessage)? error,
    TResult? Function()? propertyListEmpty,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<PropertyModel> properties)? success,
    TResult Function(String errorMessage)? error,
    TResult Function()? propertyListEmpty,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(PropertyListLoading value) loading,
    required TResult Function(PropertyListSuccess value) success,
    required TResult Function(PropertyListError value) error,
    required TResult Function(PropertyListEmpty value) propertyListEmpty,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(PropertyListLoading value)? loading,
    TResult? Function(PropertyListSuccess value)? success,
    TResult? Function(PropertyListError value)? error,
    TResult? Function(PropertyListEmpty value)? propertyListEmpty,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(PropertyListLoading value)? loading,
    TResult Function(PropertyListSuccess value)? success,
    TResult Function(PropertyListError value)? error,
    TResult Function(PropertyListEmpty value)? propertyListEmpty,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PropertyListStateCopyWith<$Res> {
  factory $PropertyListStateCopyWith(
          PropertyListState value, $Res Function(PropertyListState) then) =
      _$PropertyListStateCopyWithImpl<$Res, PropertyListState>;
}

/// @nodoc
class _$PropertyListStateCopyWithImpl<$Res, $Val extends PropertyListState>
    implements $PropertyListStateCopyWith<$Res> {
  _$PropertyListStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PropertyListState
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
    extends _$PropertyListStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);

  /// Create a copy of PropertyListState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl();

  @override
  String toString() {
    return 'PropertyListState.initial()';
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
    required TResult Function(List<PropertyModel> properties) success,
    required TResult Function(String errorMessage) error,
    required TResult Function() propertyListEmpty,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<PropertyModel> properties)? success,
    TResult? Function(String errorMessage)? error,
    TResult? Function()? propertyListEmpty,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<PropertyModel> properties)? success,
    TResult Function(String errorMessage)? error,
    TResult Function()? propertyListEmpty,
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
    required TResult Function(PropertyListLoading value) loading,
    required TResult Function(PropertyListSuccess value) success,
    required TResult Function(PropertyListError value) error,
    required TResult Function(PropertyListEmpty value) propertyListEmpty,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(PropertyListLoading value)? loading,
    TResult? Function(PropertyListSuccess value)? success,
    TResult? Function(PropertyListError value)? error,
    TResult? Function(PropertyListEmpty value)? propertyListEmpty,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(PropertyListLoading value)? loading,
    TResult Function(PropertyListSuccess value)? success,
    TResult Function(PropertyListError value)? error,
    TResult Function(PropertyListEmpty value)? propertyListEmpty,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements PropertyListState {
  const factory _Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$PropertyListLoadingImplCopyWith<$Res> {
  factory _$$PropertyListLoadingImplCopyWith(_$PropertyListLoadingImpl value,
          $Res Function(_$PropertyListLoadingImpl) then) =
      __$$PropertyListLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$PropertyListLoadingImplCopyWithImpl<$Res>
    extends _$PropertyListStateCopyWithImpl<$Res, _$PropertyListLoadingImpl>
    implements _$$PropertyListLoadingImplCopyWith<$Res> {
  __$$PropertyListLoadingImplCopyWithImpl(_$PropertyListLoadingImpl _value,
      $Res Function(_$PropertyListLoadingImpl) _then)
      : super(_value, _then);

  /// Create a copy of PropertyListState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$PropertyListLoadingImpl implements PropertyListLoading {
  const _$PropertyListLoadingImpl();

  @override
  String toString() {
    return 'PropertyListState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PropertyListLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<PropertyModel> properties) success,
    required TResult Function(String errorMessage) error,
    required TResult Function() propertyListEmpty,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<PropertyModel> properties)? success,
    TResult? Function(String errorMessage)? error,
    TResult? Function()? propertyListEmpty,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<PropertyModel> properties)? success,
    TResult Function(String errorMessage)? error,
    TResult Function()? propertyListEmpty,
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
    required TResult Function(PropertyListLoading value) loading,
    required TResult Function(PropertyListSuccess value) success,
    required TResult Function(PropertyListError value) error,
    required TResult Function(PropertyListEmpty value) propertyListEmpty,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(PropertyListLoading value)? loading,
    TResult? Function(PropertyListSuccess value)? success,
    TResult? Function(PropertyListError value)? error,
    TResult? Function(PropertyListEmpty value)? propertyListEmpty,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(PropertyListLoading value)? loading,
    TResult Function(PropertyListSuccess value)? success,
    TResult Function(PropertyListError value)? error,
    TResult Function(PropertyListEmpty value)? propertyListEmpty,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class PropertyListLoading implements PropertyListState {
  const factory PropertyListLoading() = _$PropertyListLoadingImpl;
}

/// @nodoc
abstract class _$$PropertyListSuccessImplCopyWith<$Res> {
  factory _$$PropertyListSuccessImplCopyWith(_$PropertyListSuccessImpl value,
          $Res Function(_$PropertyListSuccessImpl) then) =
      __$$PropertyListSuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<PropertyModel> properties});
}

/// @nodoc
class __$$PropertyListSuccessImplCopyWithImpl<$Res>
    extends _$PropertyListStateCopyWithImpl<$Res, _$PropertyListSuccessImpl>
    implements _$$PropertyListSuccessImplCopyWith<$Res> {
  __$$PropertyListSuccessImplCopyWithImpl(_$PropertyListSuccessImpl _value,
      $Res Function(_$PropertyListSuccessImpl) _then)
      : super(_value, _then);

  /// Create a copy of PropertyListState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? properties = null,
  }) {
    return _then(_$PropertyListSuccessImpl(
      null == properties
          ? _value._properties
          : properties // ignore: cast_nullable_to_non_nullable
              as List<PropertyModel>,
    ));
  }
}

/// @nodoc

class _$PropertyListSuccessImpl implements PropertyListSuccess {
  const _$PropertyListSuccessImpl(final List<PropertyModel> properties)
      : _properties = properties;

  final List<PropertyModel> _properties;
  @override
  List<PropertyModel> get properties {
    if (_properties is EqualUnmodifiableListView) return _properties;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_properties);
  }

  @override
  String toString() {
    return 'PropertyListState.success(properties: $properties)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PropertyListSuccessImpl &&
            const DeepCollectionEquality()
                .equals(other._properties, _properties));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_properties));

  /// Create a copy of PropertyListState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PropertyListSuccessImplCopyWith<_$PropertyListSuccessImpl> get copyWith =>
      __$$PropertyListSuccessImplCopyWithImpl<_$PropertyListSuccessImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<PropertyModel> properties) success,
    required TResult Function(String errorMessage) error,
    required TResult Function() propertyListEmpty,
  }) {
    return success(properties);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<PropertyModel> properties)? success,
    TResult? Function(String errorMessage)? error,
    TResult? Function()? propertyListEmpty,
  }) {
    return success?.call(properties);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<PropertyModel> properties)? success,
    TResult Function(String errorMessage)? error,
    TResult Function()? propertyListEmpty,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(properties);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(PropertyListLoading value) loading,
    required TResult Function(PropertyListSuccess value) success,
    required TResult Function(PropertyListError value) error,
    required TResult Function(PropertyListEmpty value) propertyListEmpty,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(PropertyListLoading value)? loading,
    TResult? Function(PropertyListSuccess value)? success,
    TResult? Function(PropertyListError value)? error,
    TResult? Function(PropertyListEmpty value)? propertyListEmpty,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(PropertyListLoading value)? loading,
    TResult Function(PropertyListSuccess value)? success,
    TResult Function(PropertyListError value)? error,
    TResult Function(PropertyListEmpty value)? propertyListEmpty,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class PropertyListSuccess implements PropertyListState {
  const factory PropertyListSuccess(final List<PropertyModel> properties) =
      _$PropertyListSuccessImpl;

  List<PropertyModel> get properties;

  /// Create a copy of PropertyListState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PropertyListSuccessImplCopyWith<_$PropertyListSuccessImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$PropertyListErrorImplCopyWith<$Res> {
  factory _$$PropertyListErrorImplCopyWith(_$PropertyListErrorImpl value,
          $Res Function(_$PropertyListErrorImpl) then) =
      __$$PropertyListErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String errorMessage});
}

/// @nodoc
class __$$PropertyListErrorImplCopyWithImpl<$Res>
    extends _$PropertyListStateCopyWithImpl<$Res, _$PropertyListErrorImpl>
    implements _$$PropertyListErrorImplCopyWith<$Res> {
  __$$PropertyListErrorImplCopyWithImpl(_$PropertyListErrorImpl _value,
      $Res Function(_$PropertyListErrorImpl) _then)
      : super(_value, _then);

  /// Create a copy of PropertyListState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? errorMessage = null,
  }) {
    return _then(_$PropertyListErrorImpl(
      null == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$PropertyListErrorImpl implements PropertyListError {
  const _$PropertyListErrorImpl(this.errorMessage);

  @override
  final String errorMessage;

  @override
  String toString() {
    return 'PropertyListState.error(errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PropertyListErrorImpl &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @override
  int get hashCode => Object.hash(runtimeType, errorMessage);

  /// Create a copy of PropertyListState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PropertyListErrorImplCopyWith<_$PropertyListErrorImpl> get copyWith =>
      __$$PropertyListErrorImplCopyWithImpl<_$PropertyListErrorImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<PropertyModel> properties) success,
    required TResult Function(String errorMessage) error,
    required TResult Function() propertyListEmpty,
  }) {
    return error(errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<PropertyModel> properties)? success,
    TResult? Function(String errorMessage)? error,
    TResult? Function()? propertyListEmpty,
  }) {
    return error?.call(errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<PropertyModel> properties)? success,
    TResult Function(String errorMessage)? error,
    TResult Function()? propertyListEmpty,
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
    required TResult Function(PropertyListLoading value) loading,
    required TResult Function(PropertyListSuccess value) success,
    required TResult Function(PropertyListError value) error,
    required TResult Function(PropertyListEmpty value) propertyListEmpty,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(PropertyListLoading value)? loading,
    TResult? Function(PropertyListSuccess value)? success,
    TResult? Function(PropertyListError value)? error,
    TResult? Function(PropertyListEmpty value)? propertyListEmpty,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(PropertyListLoading value)? loading,
    TResult Function(PropertyListSuccess value)? success,
    TResult Function(PropertyListError value)? error,
    TResult Function(PropertyListEmpty value)? propertyListEmpty,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class PropertyListError implements PropertyListState {
  const factory PropertyListError(final String errorMessage) =
      _$PropertyListErrorImpl;

  String get errorMessage;

  /// Create a copy of PropertyListState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PropertyListErrorImplCopyWith<_$PropertyListErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$PropertyListEmptyImplCopyWith<$Res> {
  factory _$$PropertyListEmptyImplCopyWith(_$PropertyListEmptyImpl value,
          $Res Function(_$PropertyListEmptyImpl) then) =
      __$$PropertyListEmptyImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$PropertyListEmptyImplCopyWithImpl<$Res>
    extends _$PropertyListStateCopyWithImpl<$Res, _$PropertyListEmptyImpl>
    implements _$$PropertyListEmptyImplCopyWith<$Res> {
  __$$PropertyListEmptyImplCopyWithImpl(_$PropertyListEmptyImpl _value,
      $Res Function(_$PropertyListEmptyImpl) _then)
      : super(_value, _then);

  /// Create a copy of PropertyListState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$PropertyListEmptyImpl implements PropertyListEmpty {
  const _$PropertyListEmptyImpl();

  @override
  String toString() {
    return 'PropertyListState.propertyListEmpty()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$PropertyListEmptyImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<PropertyModel> properties) success,
    required TResult Function(String errorMessage) error,
    required TResult Function() propertyListEmpty,
  }) {
    return propertyListEmpty();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<PropertyModel> properties)? success,
    TResult? Function(String errorMessage)? error,
    TResult? Function()? propertyListEmpty,
  }) {
    return propertyListEmpty?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<PropertyModel> properties)? success,
    TResult Function(String errorMessage)? error,
    TResult Function()? propertyListEmpty,
    required TResult orElse(),
  }) {
    if (propertyListEmpty != null) {
      return propertyListEmpty();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(PropertyListLoading value) loading,
    required TResult Function(PropertyListSuccess value) success,
    required TResult Function(PropertyListError value) error,
    required TResult Function(PropertyListEmpty value) propertyListEmpty,
  }) {
    return propertyListEmpty(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(PropertyListLoading value)? loading,
    TResult? Function(PropertyListSuccess value)? success,
    TResult? Function(PropertyListError value)? error,
    TResult? Function(PropertyListEmpty value)? propertyListEmpty,
  }) {
    return propertyListEmpty?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(PropertyListLoading value)? loading,
    TResult Function(PropertyListSuccess value)? success,
    TResult Function(PropertyListError value)? error,
    TResult Function(PropertyListEmpty value)? propertyListEmpty,
    required TResult orElse(),
  }) {
    if (propertyListEmpty != null) {
      return propertyListEmpty(this);
    }
    return orElse();
  }
}

abstract class PropertyListEmpty implements PropertyListState {
  const factory PropertyListEmpty() = _$PropertyListEmptyImpl;
}
