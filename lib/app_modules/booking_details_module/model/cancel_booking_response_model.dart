// To parse this JSON data, do
//
//     final cancelBookingResponseModel = cancelBookingResponseModelFromJson(jsonString);

import 'dart:convert';

CancelBookingResponseModel cancelBookingResponseModelFromJson(String str) =>
    CancelBookingResponseModel.fromJson(json.decode(str));

String cancelBookingResponseModelToJson(CancelBookingResponseModel data) =>
    json.encode(data.toJson());

class CancelBookingResponseModel {
  String status;
  String message;
  double refundAmount;
  String paymentStatus;

  CancelBookingResponseModel({
    required this.status,
    required this.message,
    required this.refundAmount,
    required this.paymentStatus,
  });

  factory CancelBookingResponseModel.fromJson(Map<String, dynamic> json) =>
      CancelBookingResponseModel(
        status: json["status"],
        message: json["message"],
        refundAmount: json["refund_amount"]?.toDouble(),
        paymentStatus: json["payment_status"],
      );

  Map<String, dynamic> toJson() => {
        "status": status,
        "message": message,
        "refund_amount": refundAmount,
        "payment_status": paymentStatus,
      };
}
