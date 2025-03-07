// To parse this JSON data, do
//
//     final userRegisterResponseModel = userRegisterResponseModelFromJson(jsonString);

import 'dart:convert';

import 'package:serene_user_app/app_modules/register_module/model/user_data_model/user_data_model.dart';

UserRegisterResponseModel userRegisterResponseModelFromJson(String str) =>
    UserRegisterResponseModel.fromJson(json.decode(str));

String userRegisterResponseModelToJson(UserRegisterResponseModel data) =>
    json.encode(data.toJson());

class UserRegisterResponseModel {
  String status;
  String message;
  UserDataModel data;

  UserRegisterResponseModel({
    required this.status,
    required this.message,
    required this.data,
  });

  factory UserRegisterResponseModel.fromJson(Map<String, dynamic> json) =>
      UserRegisterResponseModel(
        status: json["status"],
        message: json["message"],
        data: UserDataModel.fromJson(json["data"]),
      );

  Map<String, dynamic> toJson() => {
        "status": status,
        "message": message,
        "data": data.toJson(),
      };
}
