// To parse this JSON data, do
//
//     final propertyActionResponseModel = propertyActionResponseModelFromJson(jsonString);

import 'dart:convert';

PropertyActionResponseModel propertyActionResponseModelFromJson(String str) =>
    PropertyActionResponseModel.fromJson(json.decode(str));

String propertyActionResponseModelToJson(PropertyActionResponseModel data) =>
    json.encode(data.toJson());

class PropertyActionResponseModel {
  String status;
  String message;

  PropertyActionResponseModel({
    required this.status,
    required this.message,
  });

  factory PropertyActionResponseModel.fromJson(Map<String, dynamic> json) =>
      PropertyActionResponseModel(
        status: json["status"],
        message: json["message"],
      );

  Map<String, dynamic> toJson() => {
        "status": status,
        "message": message,
      };
}
