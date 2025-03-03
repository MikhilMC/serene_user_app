// To parse this JSON data, do
//
//     final userDataModel = userDataModelFromJson(jsonString);

import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'user_data_model.freezed.dart';
part 'user_data_model.g.dart';

UserDataModel userDataModelFromJson(String str) =>
    UserDataModel.fromJson(json.decode(str));

String userDataModelToJson(UserDataModel data) => json.encode(data.toJson());

@freezed
class UserDataModel with _$UserDataModel {
  const factory UserDataModel({
    int? id,
    String? username,
    String? email,
    String? password,
    String? address,
    String? profilePicture,
    String? phoneNumber,
    DateTime? dateOfBirth,
  }) = _UserDataModel;

  factory UserDataModel.fromJson(Map<String, dynamic> json) =>
      _$UserDataModelFromJson(json);
}
