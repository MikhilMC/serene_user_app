// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'booking_details_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$BookingDetailsEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(int bookingId) bookingDetailsFetched,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(int bookingId)? bookingDetailsFetched,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(int bookingId)? bookingDetailsFetched,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_bookingDetailsFetched value)
        bookingDetailsFetched,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_bookingDetailsFetched value)? bookingDetailsFetched,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_bookingDetailsFetched value)? bookingDetailsFetched,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BookingDetailsEventCopyWith<$Res> {
  factory $BookingDetailsEventCopyWith(
          BookingDetailsEvent value, $Res Function(BookingDetailsEvent) then) =
      _$BookingDetailsEventCopyWithImpl<$Res, BookingDetailsEvent>;
}

/// @nodoc
class _$BookingDetailsEventCopyWithImpl<$Res, $Val extends BookingDetailsEvent>
    implements $BookingDetailsEventCopyWith<$Res> {
  _$BookingDetailsEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BookingDetailsEvent
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
    extends _$BookingDetailsEventCopyWithImpl<$Res, _$StartedImpl>
    implements _$$StartedImplCopyWith<$Res> {
  __$$StartedImplCopyWithImpl(
      _$StartedImpl _value, $Res Function(_$StartedImpl) _then)
      : super(_value, _then);

  /// Create a copy of BookingDetailsEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$StartedImpl implements _Started {
  const _$StartedImpl();

  @override
  String toString() {
    return 'BookingDetailsEvent.started()';
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
    required TResult Function(int bookingId) bookingDetailsFetched,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(int bookingId)? bookingDetailsFetched,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(int bookingId)? bookingDetailsFetched,
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
    required TResult Function(_bookingDetailsFetched value)
        bookingDetailsFetched,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_bookingDetailsFetched value)? bookingDetailsFetched,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_bookingDetailsFetched value)? bookingDetailsFetched,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements BookingDetailsEvent {
  const factory _Started() = _$StartedImpl;
}

/// @nodoc
abstract class _$$bookingDetailsFetchedImplCopyWith<$Res> {
  factory _$$bookingDetailsFetchedImplCopyWith(
          _$bookingDetailsFetchedImpl value,
          $Res Function(_$bookingDetailsFetchedImpl) then) =
      __$$bookingDetailsFetchedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int bookingId});
}

/// @nodoc
class __$$bookingDetailsFetchedImplCopyWithImpl<$Res>
    extends _$BookingDetailsEventCopyWithImpl<$Res, _$bookingDetailsFetchedImpl>
    implements _$$bookingDetailsFetchedImplCopyWith<$Res> {
  __$$bookingDetailsFetchedImplCopyWithImpl(_$bookingDetailsFetchedImpl _value,
      $Res Function(_$bookingDetailsFetchedImpl) _then)
      : super(_value, _then);

  /// Create a copy of BookingDetailsEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? bookingId = null,
  }) {
    return _then(_$bookingDetailsFetchedImpl(
      null == bookingId
          ? _value.bookingId
          : bookingId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$bookingDetailsFetchedImpl implements _bookingDetailsFetched {
  const _$bookingDetailsFetchedImpl(this.bookingId);

  @override
  final int bookingId;

  @override
  String toString() {
    return 'BookingDetailsEvent.bookingDetailsFetched(bookingId: $bookingId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$bookingDetailsFetchedImpl &&
            (identical(other.bookingId, bookingId) ||
                other.bookingId == bookingId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, bookingId);

  /// Create a copy of BookingDetailsEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$bookingDetailsFetchedImplCopyWith<_$bookingDetailsFetchedImpl>
      get copyWith => __$$bookingDetailsFetchedImplCopyWithImpl<
          _$bookingDetailsFetchedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(int bookingId) bookingDetailsFetched,
  }) {
    return bookingDetailsFetched(bookingId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(int bookingId)? bookingDetailsFetched,
  }) {
    return bookingDetailsFetched?.call(bookingId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(int bookingId)? bookingDetailsFetched,
    required TResult orElse(),
  }) {
    if (bookingDetailsFetched != null) {
      return bookingDetailsFetched(bookingId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_bookingDetailsFetched value)
        bookingDetailsFetched,
  }) {
    return bookingDetailsFetched(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_bookingDetailsFetched value)? bookingDetailsFetched,
  }) {
    return bookingDetailsFetched?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_bookingDetailsFetched value)? bookingDetailsFetched,
    required TResult orElse(),
  }) {
    if (bookingDetailsFetched != null) {
      return bookingDetailsFetched(this);
    }
    return orElse();
  }
}

abstract class _bookingDetailsFetched implements BookingDetailsEvent {
  const factory _bookingDetailsFetched(final int bookingId) =
      _$bookingDetailsFetchedImpl;

  int get bookingId;

  /// Create a copy of BookingDetailsEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$bookingDetailsFetchedImplCopyWith<_$bookingDetailsFetchedImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$BookingDetailsState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(BookingDetailsModel bookingDetails) success,
    required TResult Function(String errorMessage) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(BookingDetailsModel bookingDetails)? success,
    TResult? Function(String errorMessage)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(BookingDetailsModel bookingDetails)? success,
    TResult Function(String errorMessage)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(BookingDetailsLoading value) loading,
    required TResult Function(BookingDetailsSuccess value) success,
    required TResult Function(BookingDetailsError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(BookingDetailsLoading value)? loading,
    TResult? Function(BookingDetailsSuccess value)? success,
    TResult? Function(BookingDetailsError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(BookingDetailsLoading value)? loading,
    TResult Function(BookingDetailsSuccess value)? success,
    TResult Function(BookingDetailsError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BookingDetailsStateCopyWith<$Res> {
  factory $BookingDetailsStateCopyWith(
          BookingDetailsState value, $Res Function(BookingDetailsState) then) =
      _$BookingDetailsStateCopyWithImpl<$Res, BookingDetailsState>;
}

/// @nodoc
class _$BookingDetailsStateCopyWithImpl<$Res, $Val extends BookingDetailsState>
    implements $BookingDetailsStateCopyWith<$Res> {
  _$BookingDetailsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BookingDetailsState
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
    extends _$BookingDetailsStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);

  /// Create a copy of BookingDetailsState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl();

  @override
  String toString() {
    return 'BookingDetailsState.initial()';
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
    required TResult Function(BookingDetailsModel bookingDetails) success,
    required TResult Function(String errorMessage) error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(BookingDetailsModel bookingDetails)? success,
    TResult? Function(String errorMessage)? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(BookingDetailsModel bookingDetails)? success,
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
    required TResult Function(BookingDetailsLoading value) loading,
    required TResult Function(BookingDetailsSuccess value) success,
    required TResult Function(BookingDetailsError value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(BookingDetailsLoading value)? loading,
    TResult? Function(BookingDetailsSuccess value)? success,
    TResult? Function(BookingDetailsError value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(BookingDetailsLoading value)? loading,
    TResult Function(BookingDetailsSuccess value)? success,
    TResult Function(BookingDetailsError value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements BookingDetailsState {
  const factory _Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$BookingDetailsLoadingImplCopyWith<$Res> {
  factory _$$BookingDetailsLoadingImplCopyWith(
          _$BookingDetailsLoadingImpl value,
          $Res Function(_$BookingDetailsLoadingImpl) then) =
      __$$BookingDetailsLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$BookingDetailsLoadingImplCopyWithImpl<$Res>
    extends _$BookingDetailsStateCopyWithImpl<$Res, _$BookingDetailsLoadingImpl>
    implements _$$BookingDetailsLoadingImplCopyWith<$Res> {
  __$$BookingDetailsLoadingImplCopyWithImpl(_$BookingDetailsLoadingImpl _value,
      $Res Function(_$BookingDetailsLoadingImpl) _then)
      : super(_value, _then);

  /// Create a copy of BookingDetailsState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$BookingDetailsLoadingImpl implements BookingDetailsLoading {
  const _$BookingDetailsLoadingImpl();

  @override
  String toString() {
    return 'BookingDetailsState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BookingDetailsLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(BookingDetailsModel bookingDetails) success,
    required TResult Function(String errorMessage) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(BookingDetailsModel bookingDetails)? success,
    TResult? Function(String errorMessage)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(BookingDetailsModel bookingDetails)? success,
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
    required TResult Function(BookingDetailsLoading value) loading,
    required TResult Function(BookingDetailsSuccess value) success,
    required TResult Function(BookingDetailsError value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(BookingDetailsLoading value)? loading,
    TResult? Function(BookingDetailsSuccess value)? success,
    TResult? Function(BookingDetailsError value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(BookingDetailsLoading value)? loading,
    TResult Function(BookingDetailsSuccess value)? success,
    TResult Function(BookingDetailsError value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class BookingDetailsLoading implements BookingDetailsState {
  const factory BookingDetailsLoading() = _$BookingDetailsLoadingImpl;
}

/// @nodoc
abstract class _$$BookingDetailsSuccessImplCopyWith<$Res> {
  factory _$$BookingDetailsSuccessImplCopyWith(
          _$BookingDetailsSuccessImpl value,
          $Res Function(_$BookingDetailsSuccessImpl) then) =
      __$$BookingDetailsSuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({BookingDetailsModel bookingDetails});
}

/// @nodoc
class __$$BookingDetailsSuccessImplCopyWithImpl<$Res>
    extends _$BookingDetailsStateCopyWithImpl<$Res, _$BookingDetailsSuccessImpl>
    implements _$$BookingDetailsSuccessImplCopyWith<$Res> {
  __$$BookingDetailsSuccessImplCopyWithImpl(_$BookingDetailsSuccessImpl _value,
      $Res Function(_$BookingDetailsSuccessImpl) _then)
      : super(_value, _then);

  /// Create a copy of BookingDetailsState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? bookingDetails = null,
  }) {
    return _then(_$BookingDetailsSuccessImpl(
      null == bookingDetails
          ? _value.bookingDetails
          : bookingDetails // ignore: cast_nullable_to_non_nullable
              as BookingDetailsModel,
    ));
  }
}

/// @nodoc

class _$BookingDetailsSuccessImpl implements BookingDetailsSuccess {
  const _$BookingDetailsSuccessImpl(this.bookingDetails);

  @override
  final BookingDetailsModel bookingDetails;

  @override
  String toString() {
    return 'BookingDetailsState.success(bookingDetails: $bookingDetails)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BookingDetailsSuccessImpl &&
            (identical(other.bookingDetails, bookingDetails) ||
                other.bookingDetails == bookingDetails));
  }

  @override
  int get hashCode => Object.hash(runtimeType, bookingDetails);

  /// Create a copy of BookingDetailsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BookingDetailsSuccessImplCopyWith<_$BookingDetailsSuccessImpl>
      get copyWith => __$$BookingDetailsSuccessImplCopyWithImpl<
          _$BookingDetailsSuccessImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(BookingDetailsModel bookingDetails) success,
    required TResult Function(String errorMessage) error,
  }) {
    return success(bookingDetails);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(BookingDetailsModel bookingDetails)? success,
    TResult? Function(String errorMessage)? error,
  }) {
    return success?.call(bookingDetails);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(BookingDetailsModel bookingDetails)? success,
    TResult Function(String errorMessage)? error,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(bookingDetails);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(BookingDetailsLoading value) loading,
    required TResult Function(BookingDetailsSuccess value) success,
    required TResult Function(BookingDetailsError value) error,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(BookingDetailsLoading value)? loading,
    TResult? Function(BookingDetailsSuccess value)? success,
    TResult? Function(BookingDetailsError value)? error,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(BookingDetailsLoading value)? loading,
    TResult Function(BookingDetailsSuccess value)? success,
    TResult Function(BookingDetailsError value)? error,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class BookingDetailsSuccess implements BookingDetailsState {
  const factory BookingDetailsSuccess(
      final BookingDetailsModel bookingDetails) = _$BookingDetailsSuccessImpl;

  BookingDetailsModel get bookingDetails;

  /// Create a copy of BookingDetailsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BookingDetailsSuccessImplCopyWith<_$BookingDetailsSuccessImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$BookingDetailsErrorImplCopyWith<$Res> {
  factory _$$BookingDetailsErrorImplCopyWith(_$BookingDetailsErrorImpl value,
          $Res Function(_$BookingDetailsErrorImpl) then) =
      __$$BookingDetailsErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String errorMessage});
}

/// @nodoc
class __$$BookingDetailsErrorImplCopyWithImpl<$Res>
    extends _$BookingDetailsStateCopyWithImpl<$Res, _$BookingDetailsErrorImpl>
    implements _$$BookingDetailsErrorImplCopyWith<$Res> {
  __$$BookingDetailsErrorImplCopyWithImpl(_$BookingDetailsErrorImpl _value,
      $Res Function(_$BookingDetailsErrorImpl) _then)
      : super(_value, _then);

  /// Create a copy of BookingDetailsState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? errorMessage = null,
  }) {
    return _then(_$BookingDetailsErrorImpl(
      null == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$BookingDetailsErrorImpl implements BookingDetailsError {
  const _$BookingDetailsErrorImpl(this.errorMessage);

  @override
  final String errorMessage;

  @override
  String toString() {
    return 'BookingDetailsState.error(errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BookingDetailsErrorImpl &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @override
  int get hashCode => Object.hash(runtimeType, errorMessage);

  /// Create a copy of BookingDetailsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BookingDetailsErrorImplCopyWith<_$BookingDetailsErrorImpl> get copyWith =>
      __$$BookingDetailsErrorImplCopyWithImpl<_$BookingDetailsErrorImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(BookingDetailsModel bookingDetails) success,
    required TResult Function(String errorMessage) error,
  }) {
    return error(errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(BookingDetailsModel bookingDetails)? success,
    TResult? Function(String errorMessage)? error,
  }) {
    return error?.call(errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(BookingDetailsModel bookingDetails)? success,
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
    required TResult Function(BookingDetailsLoading value) loading,
    required TResult Function(BookingDetailsSuccess value) success,
    required TResult Function(BookingDetailsError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(BookingDetailsLoading value)? loading,
    TResult? Function(BookingDetailsSuccess value)? success,
    TResult? Function(BookingDetailsError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(BookingDetailsLoading value)? loading,
    TResult Function(BookingDetailsSuccess value)? success,
    TResult Function(BookingDetailsError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class BookingDetailsError implements BookingDetailsState {
  const factory BookingDetailsError(final String errorMessage) =
      _$BookingDetailsErrorImpl;

  String get errorMessage;

  /// Create a copy of BookingDetailsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BookingDetailsErrorImplCopyWith<_$BookingDetailsErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
