// To parse this JSON data, do
//
//     final bookingData = bookingDataFromJson(jsonString);

import 'dart:convert';

BookingData bookingDataFromJson(String str) =>
    BookingData.fromJson(json.decode(str));

String bookingDataToJson(BookingData data) => json.encode(data.toJson());

class BookingData {
  int id;
  DateTime startDate;
  DateTime endDate;
  int noOfGuests;
  String totalCost;
  String refundAmount;
  String paymentOption;
  String paymentStatus;
  String bookingStatus;
  DateTime bookingDate;
  String platformFee;
  DateTime updatedDate;
  List<int> paymentIds;
  int user;
  int host;

  BookingData({
    required this.id,
    required this.startDate,
    required this.endDate,
    required this.noOfGuests,
    required this.totalCost,
    required this.refundAmount,
    required this.paymentOption,
    required this.paymentStatus,
    required this.bookingStatus,
    required this.bookingDate,
    required this.platformFee,
    required this.updatedDate,
    required this.paymentIds,
    required this.user,
    required this.host,
  });

  factory BookingData.fromJson(Map<String, dynamic> json) => BookingData(
        id: json["id"],
        startDate: DateTime.parse(json["start_date"]),
        endDate: DateTime.parse(json["end_date"]),
        noOfGuests: json["no_of_guests"],
        totalCost: json["total_cost"],
        refundAmount: json["refund_amount"],
        paymentOption: json["payment_option"],
        paymentStatus: json["payment_status"],
        bookingStatus: json["booking_status"],
        bookingDate: DateTime.parse(json["booking_date"]),
        platformFee: json["platform_fee"],
        updatedDate: DateTime.parse(json["updated_date"]),
        paymentIds: List<int>.from(json["payment_ids"].map((x) => x)),
        user: json["user"],
        host: json["host"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "start_date":
            "${startDate.year.toString().padLeft(4, '0')}-${startDate.month.toString().padLeft(2, '0')}-${startDate.day.toString().padLeft(2, '0')}",
        "end_date":
            "${endDate.year.toString().padLeft(4, '0')}-${endDate.month.toString().padLeft(2, '0')}-${endDate.day.toString().padLeft(2, '0')}",
        "no_of_guests": noOfGuests,
        "total_cost": totalCost,
        "refund_amount": refundAmount,
        "payment_option": paymentOption,
        "payment_status": paymentStatus,
        "booking_status": bookingStatus,
        "booking_date": bookingDate.toIso8601String(),
        "platform_fee": platformFee,
        "updated_date": updatedDate.toIso8601String(),
        "payment_ids": List<dynamic>.from(paymentIds.map((x) => x)),
        "user": user,
        "host": host,
      };
}
