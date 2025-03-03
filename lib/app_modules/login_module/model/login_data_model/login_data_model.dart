// To parse this JSON data, do
//
//     final loginDataModel = loginDataModelFromJson(jsonString);

import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'login_data_model.freezed.dart';
part 'login_data_model.g.dart';

LoginDataModel loginDataModelFromJson(String str) =>
    LoginDataModel.fromJson(json.decode(str));

String loginDataModelToJson(LoginDataModel data) => json.encode(data.toJson());

@freezed
class LoginDataModel with _$LoginDataModel {
  const factory LoginDataModel({
    int? id,
    String? username,
    String? email,
    String? password,
    String? address,
    String? profilePicture,
    String? phoneNumber,
    DateTime? dateOfBirth,
  }) = _LoginDataModel;

  factory LoginDataModel.fromJson(Map<String, dynamic> json) =>
      _$LoginDataModelFromJson(json);
}
