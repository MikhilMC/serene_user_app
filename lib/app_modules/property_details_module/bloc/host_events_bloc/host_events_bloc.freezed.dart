// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'host_events_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$HostEventsEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(int hostId) hostEventsFetched,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(int hostId)? hostEventsFetched,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(int hostId)? hostEventsFetched,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_hostEventsFetched value) hostEventsFetched,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_hostEventsFetched value)? hostEventsFetched,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_hostEventsFetched value)? hostEventsFetched,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HostEventsEventCopyWith<$Res> {
  factory $HostEventsEventCopyWith(
          HostEventsEvent value, $Res Function(HostEventsEvent) then) =
      _$HostEventsEventCopyWithImpl<$Res, HostEventsEvent>;
}

/// @nodoc
class _$HostEventsEventCopyWithImpl<$Res, $Val extends HostEventsEvent>
    implements $HostEventsEventCopyWith<$Res> {
  _$HostEventsEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of HostEventsEvent
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
    extends _$HostEventsEventCopyWithImpl<$Res, _$StartedImpl>
    implements _$$StartedImplCopyWith<$Res> {
  __$$StartedImplCopyWithImpl(
      _$StartedImpl _value, $Res Function(_$StartedImpl) _then)
      : super(_value, _then);

  /// Create a copy of HostEventsEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$StartedImpl implements _Started {
  const _$StartedImpl();

  @override
  String toString() {
    return 'HostEventsEvent.started()';
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
    required TResult Function(int hostId) hostEventsFetched,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(int hostId)? hostEventsFetched,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(int hostId)? hostEventsFetched,
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
    required TResult Function(_hostEventsFetched value) hostEventsFetched,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_hostEventsFetched value)? hostEventsFetched,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_hostEventsFetched value)? hostEventsFetched,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements HostEventsEvent {
  const factory _Started() = _$StartedImpl;
}

/// @nodoc
abstract class _$$hostEventsFetchedImplCopyWith<$Res> {
  factory _$$hostEventsFetchedImplCopyWith(_$hostEventsFetchedImpl value,
          $Res Function(_$hostEventsFetchedImpl) then) =
      __$$hostEventsFetchedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int hostId});
}

/// @nodoc
class __$$hostEventsFetchedImplCopyWithImpl<$Res>
    extends _$HostEventsEventCopyWithImpl<$Res, _$hostEventsFetchedImpl>
    implements _$$hostEventsFetchedImplCopyWith<$Res> {
  __$$hostEventsFetchedImplCopyWithImpl(_$hostEventsFetchedImpl _value,
      $Res Function(_$hostEventsFetchedImpl) _then)
      : super(_value, _then);

  /// Create a copy of HostEventsEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? hostId = null,
  }) {
    return _then(_$hostEventsFetchedImpl(
      null == hostId
          ? _value.hostId
          : hostId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$hostEventsFetchedImpl implements _hostEventsFetched {
  const _$hostEventsFetchedImpl(this.hostId);

  @override
  final int hostId;

  @override
  String toString() {
    return 'HostEventsEvent.hostEventsFetched(hostId: $hostId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$hostEventsFetchedImpl &&
            (identical(other.hostId, hostId) || other.hostId == hostId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, hostId);

  /// Create a copy of HostEventsEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$hostEventsFetchedImplCopyWith<_$hostEventsFetchedImpl> get copyWith =>
      __$$hostEventsFetchedImplCopyWithImpl<_$hostEventsFetchedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(int hostId) hostEventsFetched,
  }) {
    return hostEventsFetched(hostId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(int hostId)? hostEventsFetched,
  }) {
    return hostEventsFetched?.call(hostId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(int hostId)? hostEventsFetched,
    required TResult orElse(),
  }) {
    if (hostEventsFetched != null) {
      return hostEventsFetched(hostId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_hostEventsFetched value) hostEventsFetched,
  }) {
    return hostEventsFetched(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_hostEventsFetched value)? hostEventsFetched,
  }) {
    return hostEventsFetched?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_hostEventsFetched value)? hostEventsFetched,
    required TResult orElse(),
  }) {
    if (hostEventsFetched != null) {
      return hostEventsFetched(this);
    }
    return orElse();
  }
}

abstract class _hostEventsFetched implements HostEventsEvent {
  const factory _hostEventsFetched(final int hostId) = _$hostEventsFetchedImpl;

  int get hostId;

  /// Create a copy of HostEventsEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$hostEventsFetchedImplCopyWith<_$hostEventsFetchedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$HostEventsState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<EventModel> events) success,
    required TResult Function(String errorMessage) error,
    required TResult Function() empty,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<EventModel> events)? success,
    TResult? Function(String errorMessage)? error,
    TResult? Function()? empty,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<EventModel> events)? success,
    TResult Function(String errorMessage)? error,
    TResult Function()? empty,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(HostEventsLoading value) loading,
    required TResult Function(HostEventsSuccess value) success,
    required TResult Function(HostEventsError value) error,
    required TResult Function(HostEventsEmpty value) empty,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(HostEventsLoading value)? loading,
    TResult? Function(HostEventsSuccess value)? success,
    TResult? Function(HostEventsError value)? error,
    TResult? Function(HostEventsEmpty value)? empty,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(HostEventsLoading value)? loading,
    TResult Function(HostEventsSuccess value)? success,
    TResult Function(HostEventsError value)? error,
    TResult Function(HostEventsEmpty value)? empty,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HostEventsStateCopyWith<$Res> {
  factory $HostEventsStateCopyWith(
          HostEventsState value, $Res Function(HostEventsState) then) =
      _$HostEventsStateCopyWithImpl<$Res, HostEventsState>;
}

/// @nodoc
class _$HostEventsStateCopyWithImpl<$Res, $Val extends HostEventsState>
    implements $HostEventsStateCopyWith<$Res> {
  _$HostEventsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of HostEventsState
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
    extends _$HostEventsStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);

  /// Create a copy of HostEventsState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl();

  @override
  String toString() {
    return 'HostEventsState.initial()';
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
    required TResult Function(List<EventModel> events) success,
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
    TResult? Function(List<EventModel> events)? success,
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
    TResult Function(List<EventModel> events)? success,
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
    required TResult Function(HostEventsLoading value) loading,
    required TResult Function(HostEventsSuccess value) success,
    required TResult Function(HostEventsError value) error,
    required TResult Function(HostEventsEmpty value) empty,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(HostEventsLoading value)? loading,
    TResult? Function(HostEventsSuccess value)? success,
    TResult? Function(HostEventsError value)? error,
    TResult? Function(HostEventsEmpty value)? empty,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(HostEventsLoading value)? loading,
    TResult Function(HostEventsSuccess value)? success,
    TResult Function(HostEventsError value)? error,
    TResult Function(HostEventsEmpty value)? empty,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements HostEventsState {
  const factory _Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$HostEventsLoadingImplCopyWith<$Res> {
  factory _$$HostEventsLoadingImplCopyWith(_$HostEventsLoadingImpl value,
          $Res Function(_$HostEventsLoadingImpl) then) =
      __$$HostEventsLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$HostEventsLoadingImplCopyWithImpl<$Res>
    extends _$HostEventsStateCopyWithImpl<$Res, _$HostEventsLoadingImpl>
    implements _$$HostEventsLoadingImplCopyWith<$Res> {
  __$$HostEventsLoadingImplCopyWithImpl(_$HostEventsLoadingImpl _value,
      $Res Function(_$HostEventsLoadingImpl) _then)
      : super(_value, _then);

  /// Create a copy of HostEventsState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$HostEventsLoadingImpl implements HostEventsLoading {
  const _$HostEventsLoadingImpl();

  @override
  String toString() {
    return 'HostEventsState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$HostEventsLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<EventModel> events) success,
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
    TResult? Function(List<EventModel> events)? success,
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
    TResult Function(List<EventModel> events)? success,
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
    required TResult Function(HostEventsLoading value) loading,
    required TResult Function(HostEventsSuccess value) success,
    required TResult Function(HostEventsError value) error,
    required TResult Function(HostEventsEmpty value) empty,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(HostEventsLoading value)? loading,
    TResult? Function(HostEventsSuccess value)? success,
    TResult? Function(HostEventsError value)? error,
    TResult? Function(HostEventsEmpty value)? empty,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(HostEventsLoading value)? loading,
    TResult Function(HostEventsSuccess value)? success,
    TResult Function(HostEventsError value)? error,
    TResult Function(HostEventsEmpty value)? empty,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class HostEventsLoading implements HostEventsState {
  const factory HostEventsLoading() = _$HostEventsLoadingImpl;
}

/// @nodoc
abstract class _$$HostEventsSuccessImplCopyWith<$Res> {
  factory _$$HostEventsSuccessImplCopyWith(_$HostEventsSuccessImpl value,
          $Res Function(_$HostEventsSuccessImpl) then) =
      __$$HostEventsSuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<EventModel> events});
}

/// @nodoc
class __$$HostEventsSuccessImplCopyWithImpl<$Res>
    extends _$HostEventsStateCopyWithImpl<$Res, _$HostEventsSuccessImpl>
    implements _$$HostEventsSuccessImplCopyWith<$Res> {
  __$$HostEventsSuccessImplCopyWithImpl(_$HostEventsSuccessImpl _value,
      $Res Function(_$HostEventsSuccessImpl) _then)
      : super(_value, _then);

  /// Create a copy of HostEventsState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? events = null,
  }) {
    return _then(_$HostEventsSuccessImpl(
      null == events
          ? _value._events
          : events // ignore: cast_nullable_to_non_nullable
              as List<EventModel>,
    ));
  }
}

/// @nodoc

class _$HostEventsSuccessImpl implements HostEventsSuccess {
  const _$HostEventsSuccessImpl(final List<EventModel> events)
      : _events = events;

  final List<EventModel> _events;
  @override
  List<EventModel> get events {
    if (_events is EqualUnmodifiableListView) return _events;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_events);
  }

  @override
  String toString() {
    return 'HostEventsState.success(events: $events)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HostEventsSuccessImpl &&
            const DeepCollectionEquality().equals(other._events, _events));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_events));

  /// Create a copy of HostEventsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$HostEventsSuccessImplCopyWith<_$HostEventsSuccessImpl> get copyWith =>
      __$$HostEventsSuccessImplCopyWithImpl<_$HostEventsSuccessImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<EventModel> events) success,
    required TResult Function(String errorMessage) error,
    required TResult Function() empty,
  }) {
    return success(events);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<EventModel> events)? success,
    TResult? Function(String errorMessage)? error,
    TResult? Function()? empty,
  }) {
    return success?.call(events);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<EventModel> events)? success,
    TResult Function(String errorMessage)? error,
    TResult Function()? empty,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(events);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(HostEventsLoading value) loading,
    required TResult Function(HostEventsSuccess value) success,
    required TResult Function(HostEventsError value) error,
    required TResult Function(HostEventsEmpty value) empty,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(HostEventsLoading value)? loading,
    TResult? Function(HostEventsSuccess value)? success,
    TResult? Function(HostEventsError value)? error,
    TResult? Function(HostEventsEmpty value)? empty,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(HostEventsLoading value)? loading,
    TResult Function(HostEventsSuccess value)? success,
    TResult Function(HostEventsError value)? error,
    TResult Function(HostEventsEmpty value)? empty,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class HostEventsSuccess implements HostEventsState {
  const factory HostEventsSuccess(final List<EventModel> events) =
      _$HostEventsSuccessImpl;

  List<EventModel> get events;

  /// Create a copy of HostEventsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$HostEventsSuccessImplCopyWith<_$HostEventsSuccessImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$HostEventsErrorImplCopyWith<$Res> {
  factory _$$HostEventsErrorImplCopyWith(_$HostEventsErrorImpl value,
          $Res Function(_$HostEventsErrorImpl) then) =
      __$$HostEventsErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String errorMessage});
}

/// @nodoc
class __$$HostEventsErrorImplCopyWithImpl<$Res>
    extends _$HostEventsStateCopyWithImpl<$Res, _$HostEventsErrorImpl>
    implements _$$HostEventsErrorImplCopyWith<$Res> {
  __$$HostEventsErrorImplCopyWithImpl(
      _$HostEventsErrorImpl _value, $Res Function(_$HostEventsErrorImpl) _then)
      : super(_value, _then);

  /// Create a copy of HostEventsState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? errorMessage = null,
  }) {
    return _then(_$HostEventsErrorImpl(
      null == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$HostEventsErrorImpl implements HostEventsError {
  const _$HostEventsErrorImpl(this.errorMessage);

  @override
  final String errorMessage;

  @override
  String toString() {
    return 'HostEventsState.error(errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HostEventsErrorImpl &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @override
  int get hashCode => Object.hash(runtimeType, errorMessage);

  /// Create a copy of HostEventsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$HostEventsErrorImplCopyWith<_$HostEventsErrorImpl> get copyWith =>
      __$$HostEventsErrorImplCopyWithImpl<_$HostEventsErrorImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<EventModel> events) success,
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
    TResult? Function(List<EventModel> events)? success,
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
    TResult Function(List<EventModel> events)? success,
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
    required TResult Function(HostEventsLoading value) loading,
    required TResult Function(HostEventsSuccess value) success,
    required TResult Function(HostEventsError value) error,
    required TResult Function(HostEventsEmpty value) empty,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(HostEventsLoading value)? loading,
    TResult? Function(HostEventsSuccess value)? success,
    TResult? Function(HostEventsError value)? error,
    TResult? Function(HostEventsEmpty value)? empty,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(HostEventsLoading value)? loading,
    TResult Function(HostEventsSuccess value)? success,
    TResult Function(HostEventsError value)? error,
    TResult Function(HostEventsEmpty value)? empty,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class HostEventsError implements HostEventsState {
  const factory HostEventsError(final String errorMessage) =
      _$HostEventsErrorImpl;

  String get errorMessage;

  /// Create a copy of HostEventsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$HostEventsErrorImplCopyWith<_$HostEventsErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$HostEventsEmptyImplCopyWith<$Res> {
  factory _$$HostEventsEmptyImplCopyWith(_$HostEventsEmptyImpl value,
          $Res Function(_$HostEventsEmptyImpl) then) =
      __$$HostEventsEmptyImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$HostEventsEmptyImplCopyWithImpl<$Res>
    extends _$HostEventsStateCopyWithImpl<$Res, _$HostEventsEmptyImpl>
    implements _$$HostEventsEmptyImplCopyWith<$Res> {
  __$$HostEventsEmptyImplCopyWithImpl(
      _$HostEventsEmptyImpl _value, $Res Function(_$HostEventsEmptyImpl) _then)
      : super(_value, _then);

  /// Create a copy of HostEventsState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$HostEventsEmptyImpl implements HostEventsEmpty {
  const _$HostEventsEmptyImpl();

  @override
  String toString() {
    return 'HostEventsState.empty()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$HostEventsEmptyImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<EventModel> events) success,
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
    TResult? Function(List<EventModel> events)? success,
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
    TResult Function(List<EventModel> events)? success,
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
    required TResult Function(HostEventsLoading value) loading,
    required TResult Function(HostEventsSuccess value) success,
    required TResult Function(HostEventsError value) error,
    required TResult Function(HostEventsEmpty value) empty,
  }) {
    return empty(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(HostEventsLoading value)? loading,
    TResult? Function(HostEventsSuccess value)? success,
    TResult? Function(HostEventsError value)? error,
    TResult? Function(HostEventsEmpty value)? empty,
  }) {
    return empty?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(HostEventsLoading value)? loading,
    TResult Function(HostEventsSuccess value)? success,
    TResult Function(HostEventsError value)? error,
    TResult Function(HostEventsEmpty value)? empty,
    required TResult orElse(),
  }) {
    if (empty != null) {
      return empty(this);
    }
    return orElse();
  }
}

abstract class HostEventsEmpty implements HostEventsState {
  const factory HostEventsEmpty() = _$HostEventsEmptyImpl;
}
