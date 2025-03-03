// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_data_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

UserDataModel _$UserDataModelFromJson(Map<String, dynamic> json) {
  return _UserDataModel.fromJson(json);
}

/// @nodoc
mixin _$UserDataModel {
  int? get id => throw _privateConstructorUsedError;
  String? get username => throw _privateConstructorUsedError;
  String? get email => throw _privateConstructorUsedError;
  String? get password => throw _privateConstructorUsedError;
  String? get address => throw _privateConstructorUsedError;
  String? get profilePicture => throw _privateConstructorUsedError;
  String? get phoneNumber => throw _privateConstructorUsedError;
  DateTime? get dateOfBirth => throw _privateConstructorUsedError;

  /// Serializes this UserDataModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of UserDataModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UserDataModelCopyWith<UserDataModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserDataModelCopyWith<$Res> {
  factory $UserDataModelCopyWith(
          UserDataModel value, $Res Function(UserDataModel) then) =
      _$UserDataModelCopyWithImpl<$Res, UserDataModel>;
  @useResult
  $Res call(
      {int? id,
      String? username,
      String? email,
      String? password,
      String? address,
      String? profilePicture,
      String? phoneNumber,
      DateTime? dateOfBirth});
}

/// @nodoc
class _$UserDataModelCopyWithImpl<$Res, $Val extends UserDataModel>
    implements $UserDataModelCopyWith<$Res> {
  _$UserDataModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UserDataModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? username = freezed,
    Object? email = freezed,
    Object? password = freezed,
    Object? address = freezed,
    Object? profilePicture = freezed,
    Object? phoneNumber = freezed,
    Object? dateOfBirth = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      username: freezed == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      password: freezed == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String?,
      address: freezed == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String?,
      profilePicture: freezed == profilePicture
          ? _value.profilePicture
          : profilePicture // ignore: cast_nullable_to_non_nullable
              as String?,
      phoneNumber: freezed == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      dateOfBirth: freezed == dateOfBirth
          ? _value.dateOfBirth
          : dateOfBirth // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UserDataModelImplCopyWith<$Res>
    implements $UserDataModelCopyWith<$Res> {
  factory _$$UserDataModelImplCopyWith(
          _$UserDataModelImpl value, $Res Function(_$UserDataModelImpl) then) =
      __$$UserDataModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      String? username,
      String? email,
      String? password,
      String? address,
      String? profilePicture,
      String? phoneNumber,
      DateTime? dateOfBirth});
}

/// @nodoc
class __$$UserDataModelImplCopyWithImpl<$Res>
    extends _$UserDataModelCopyWithImpl<$Res, _$UserDataModelImpl>
    implements _$$UserDataModelImplCopyWith<$Res> {
  __$$UserDataModelImplCopyWithImpl(
      _$UserDataModelImpl _value, $Res Function(_$UserDataModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of UserDataModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? username = freezed,
    Object? email = freezed,
    Object? password = freezed,
    Object? address = freezed,
    Object? profilePicture = freezed,
    Object? phoneNumber = freezed,
    Object? dateOfBirth = freezed,
  }) {
    return _then(_$UserDataModelImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      username: freezed == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      password: freezed == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String?,
      address: freezed == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String?,
      profilePicture: freezed == profilePicture
          ? _value.profilePicture
          : profilePicture // ignore: cast_nullable_to_non_nullable
              as String?,
      phoneNumber: freezed == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      dateOfBirth: freezed == dateOfBirth
          ? _value.dateOfBirth
          : dateOfBirth // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UserDataModelImpl implements _UserDataModel {
  const _$UserDataModelImpl(
      {this.id,
      this.username,
      this.email,
      this.password,
      this.address,
      this.profilePicture,
      this.phoneNumber,
      this.dateOfBirth});

  factory _$UserDataModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserDataModelImplFromJson(json);

  @override
  final int? id;
  @override
  final String? username;
  @override
  final String? email;
  @override
  final String? password;
  @override
  final String? address;
  @override
  final String? profilePicture;
  @override
  final String? phoneNumber;
  @override
  final DateTime? dateOfBirth;

  @override
  String toString() {
    return 'UserDataModel(id: $id, username: $username, email: $email, password: $password, address: $address, profilePicture: $profilePicture, phoneNumber: $phoneNumber, dateOfBirth: $dateOfBirth)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserDataModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.username, username) ||
                other.username == username) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.address, address) || other.address == address) &&
            (identical(other.profilePicture, profilePicture) ||
                other.profilePicture == profilePicture) &&
            (identical(other.phoneNumber, phoneNumber) ||
                other.phoneNumber == phoneNumber) &&
            (identical(other.dateOfBirth, dateOfBirth) ||
                other.dateOfBirth == dateOfBirth));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, username, email, password,
      address, profilePicture, phoneNumber, dateOfBirth);

  /// Create a copy of UserDataModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UserDataModelImplCopyWith<_$UserDataModelImpl> get copyWith =>
      __$$UserDataModelImplCopyWithImpl<_$UserDataModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserDataModelImplToJson(
      this,
    );
  }
}

abstract class _UserDataModel implements UserDataModel {
  const factory _UserDataModel(
      {final int? id,
      final String? username,
      final String? email,
      final String? password,
      final String? address,
      final String? profilePicture,
      final String? phoneNumber,
      final DateTime? dateOfBirth}) = _$UserDataModelImpl;

  factory _UserDataModel.fromJson(Map<String, dynamic> json) =
      _$UserDataModelImpl.fromJson;

  @override
  int? get id;
  @override
  String? get username;
  @override
  String? get email;
  @override
  String? get password;
  @override
  String? get address;
  @override
  String? get profilePicture;
  @override
  String? get phoneNumber;
  @override
  DateTime? get dateOfBirth;

  /// Create a copy of UserDataModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UserDataModelImplCopyWith<_$UserDataModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
