// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_register_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserRegisterResponseModelImpl _$$UserRegisterResponseModelImplFromJson(
        Map<String, dynamic> json) =>
    _$UserRegisterResponseModelImpl(
      status: json['status'] as String?,
      message: json['message'] as String?,
      data: json['data'] == null
          ? null
          : UserDataModel.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$UserRegisterResponseModelImplToJson(
        _$UserRegisterResponseModelImpl instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'data': instance.data,
    };
