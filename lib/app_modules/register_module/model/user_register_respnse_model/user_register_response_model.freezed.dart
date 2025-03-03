// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_register_response_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

UserRegisterResponseModel _$UserRegisterResponseModelFromJson(
    Map<String, dynamic> json) {
  return _UserRegisterResponseModel.fromJson(json);
}

/// @nodoc
mixin _$UserRegisterResponseModel {
  String? get status => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  UserDataModel? get data => throw _privateConstructorUsedError;

  /// Serializes this UserRegisterResponseModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of UserRegisterResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UserRegisterResponseModelCopyWith<UserRegisterResponseModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserRegisterResponseModelCopyWith<$Res> {
  factory $UserRegisterResponseModelCopyWith(UserRegisterResponseModel value,
          $Res Function(UserRegisterResponseModel) then) =
      _$UserRegisterResponseModelCopyWithImpl<$Res, UserRegisterResponseModel>;
  @useResult
  $Res call({String? status, String? message, UserDataModel? data});

  $UserDataModelCopyWith<$Res>? get data;
}

/// @nodoc
class _$UserRegisterResponseModelCopyWithImpl<$Res,
        $Val extends UserRegisterResponseModel>
    implements $UserRegisterResponseModelCopyWith<$Res> {
  _$UserRegisterResponseModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UserRegisterResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? message = freezed,
    Object? data = freezed,
  }) {
    return _then(_value.copyWith(
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as UserDataModel?,
    ) as $Val);
  }

  /// Create a copy of UserRegisterResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserDataModelCopyWith<$Res>? get data {
    if (_value.data == null) {
      return null;
    }

    return $UserDataModelCopyWith<$Res>(_value.data!, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$UserRegisterResponseModelImplCopyWith<$Res>
    implements $UserRegisterResponseModelCopyWith<$Res> {
  factory _$$UserRegisterResponseModelImplCopyWith(
          _$UserRegisterResponseModelImpl value,
          $Res Function(_$UserRegisterResponseModelImpl) then) =
      __$$UserRegisterResponseModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? status, String? message, UserDataModel? data});

  @override
  $UserDataModelCopyWith<$Res>? get data;
}

/// @nodoc
class __$$UserRegisterResponseModelImplCopyWithImpl<$Res>
    extends _$UserRegisterResponseModelCopyWithImpl<$Res,
        _$UserRegisterResponseModelImpl>
    implements _$$UserRegisterResponseModelImplCopyWith<$Res> {
  __$$UserRegisterResponseModelImplCopyWithImpl(
      _$UserRegisterResponseModelImpl _value,
      $Res Function(_$UserRegisterResponseModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of UserRegisterResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? message = freezed,
    Object? data = freezed,
  }) {
    return _then(_$UserRegisterResponseModelImpl(
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as UserDataModel?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UserRegisterResponseModelImpl implements _UserRegisterResponseModel {
  const _$UserRegisterResponseModelImpl({this.status, this.message, this.data});

  factory _$UserRegisterResponseModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserRegisterResponseModelImplFromJson(json);

  @override
  final String? status;
  @override
  final String? message;
  @override
  final UserDataModel? data;

  @override
  String toString() {
    return 'UserRegisterResponseModel(status: $status, message: $message, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserRegisterResponseModelImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, status, message, data);

  /// Create a copy of UserRegisterResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UserRegisterResponseModelImplCopyWith<_$UserRegisterResponseModelImpl>
      get copyWith => __$$UserRegisterResponseModelImplCopyWithImpl<
          _$UserRegisterResponseModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserRegisterResponseModelImplToJson(
      this,
    );
  }
}

abstract class _UserRegisterResponseModel implements UserRegisterResponseModel {
  const factory _UserRegisterResponseModel(
      {final String? status,
      final String? message,
      final UserDataModel? data}) = _$UserRegisterResponseModelImpl;

  factory _UserRegisterResponseModel.fromJson(Map<String, dynamic> json) =
      _$UserRegisterResponseModelImpl.fromJson;

  @override
  String? get status;
  @override
  String? get message;
  @override
  UserDataModel? get data;

  /// Create a copy of UserRegisterResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UserRegisterResponseModelImplCopyWith<_$UserRegisterResponseModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
