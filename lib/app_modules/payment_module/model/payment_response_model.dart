// To parse this JSON data, do
//
//     final paymentResponseModel = paymentResponseModelFromJson(jsonString);

import 'dart:convert';

import 'package:serene_user_app/app_modules/payment_module/model/payment_data.dart';

PaymentResponseModel paymentResponseModelFromJson(String str) =>
    PaymentResponseModel.fromJson(json.decode(str));

String paymentResponseModelToJson(PaymentResponseModel data) =>
    json.encode(data.toJson());

class PaymentResponseModel {
  String status;
  String message;
  PaymentData data;

  PaymentResponseModel({
    required this.status,
    required this.message,
    required this.data,
  });

  factory PaymentResponseModel.fromJson(Map<String, dynamic> json) =>
      PaymentResponseModel(
        status: json["status"],
        message: json["message"],
        data: PaymentData.fromJson(json["data"]),
      );

  Map<String, dynamic> toJson() => {
        "status": status,
        "message": message,
        "data": data.toJson(),
      };
}
