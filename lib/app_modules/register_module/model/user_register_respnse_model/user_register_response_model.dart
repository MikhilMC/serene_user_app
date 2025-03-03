// To parse this JSON data, do
//
//     final userRegisterResponseModel = userRegisterResponseModelFromJson(jsonString);

import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

import 'package:serene_user_app/app_modules/register_module/model/user_data_model/user_data_model.dart';

part 'user_register_response_model.freezed.dart';
part 'user_register_response_model.g.dart';

UserRegisterResponseModel userRegisterResponseModelFromJson(String str) =>
    UserRegisterResponseModel.fromJson(json.decode(str));

String userRegisterResponseModelToJson(UserRegisterResponseModel data) =>
    json.encode(data.toJson());

@freezed
class UserRegisterResponseModel with _$UserRegisterResponseModel {
  const factory UserRegisterResponseModel({
    String? status,
    String? message,
    UserDataModel? data,
  }) = _UserRegisterResponseModel;

  factory UserRegisterResponseModel.fromJson(Map<String, dynamic> json) =>
      _$UserRegisterResponseModelFromJson(json);
}
