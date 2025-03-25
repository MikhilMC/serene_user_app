// To parse this JSON data, do
//
//     final propertyBookingResponseModel = propertyBookingResponseModelFromJson(jsonString);

import 'dart:convert';

import 'package:serene_user_app/app_modules/booking_module/model/booking_data.dart';

PropertyBookingResponseModel propertyBookingResponseModelFromJson(String str) =>
    PropertyBookingResponseModel.fromJson(json.decode(str));

String propertyBookingResponseModelToJson(PropertyBookingResponseModel data) =>
    json.encode(data.toJson());

class PropertyBookingResponseModel {
  String status;
  String message;
  BookingData data;

  PropertyBookingResponseModel({
    required this.status,
    required this.message,
    required this.data,
  });

  factory PropertyBookingResponseModel.fromJson(Map<String, dynamic> json) =>
      PropertyBookingResponseModel(
        status: json["status"],
        message: json["message"],
        data: BookingData.fromJson(json["data"]),
      );

  Map<String, dynamic> toJson() => {
        "status": status,
        "message": message,
        "data": data.toJson(),
      };
}
