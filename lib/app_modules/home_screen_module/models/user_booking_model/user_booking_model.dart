// To parse this JSON data, do
//
//     final userBookingModel = userBookingModelFromJson(jsonString);

import 'dart:convert';

List<UserBookingModel> userBookingModelFromJson(String str) =>
    List<UserBookingModel>.from(
        json.decode(str).map((x) => UserBookingModel.fromJson(x)));

String userBookingModelToJson(List<UserBookingModel> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class UserBookingModel {
  int id;
  String hostName;
  int hostReview;
  double hostRating;
  List<String> propertyImages;
  String profilePicture;
  String propertyName;
  DateTime startDate;
  DateTime endDate;
  int noOfGuests;
  String totalCost;
  String refundAmount;
  String paymentMethod;
  String paymentStatus;
  String bookingStatus;
  DateTime bookingDate;
  String platformFee;
  DateTime updatedDate;
  List<int> paymentIds;
  bool reviewSubmitted;
  bool reportSubmitted;
  int user;
  int host;

  UserBookingModel({
    required this.id,
    required this.hostName,
    required this.hostReview,
    required this.hostRating,
    required this.propertyImages,
    required this.profilePicture,
    required this.propertyName,
    required this.startDate,
    required this.endDate,
    required this.noOfGuests,
    required this.totalCost,
    required this.refundAmount,
    required this.paymentMethod,
    required this.paymentStatus,
    required this.bookingStatus,
    required this.bookingDate,
    required this.platformFee,
    required this.updatedDate,
    required this.paymentIds,
    required this.reviewSubmitted,
    required this.reportSubmitted,
    required this.user,
    required this.host,
  });

  factory UserBookingModel.fromJson(Map<String, dynamic> json) =>
      UserBookingModel(
        id: json["id"],
        hostName: json["host_name"],
        hostReview: json["host_review"],
        hostRating: json["host_rating"]?.toDouble(),
        propertyImages:
            List<String>.from(json["property_images"].map((x) => x)),
        profilePicture: json["profile_picture"],
        propertyName: json["property_name"],
        startDate: DateTime.parse(json["start_date"]),
        endDate: DateTime.parse(json["end_date"]),
        noOfGuests: json["no_of_guests"],
        totalCost: json["total_cost"],
        refundAmount: json["refund_amount"],
        paymentMethod: json["payment_method"],
        paymentStatus: json["payment_status"],
        bookingStatus: json["booking_status"],
        bookingDate: DateTime.parse(json["booking_date"]),
        platformFee: json["platform_fee"],
        updatedDate: DateTime.parse(json["updated_date"]),
        paymentIds: List<int>.from(json["payment_ids"].map((x) => x)),
        reviewSubmitted: json["review_submitted"],
        reportSubmitted: json["report_submitted"],
        user: json["user"],
        host: json["host"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "host_name": hostName,
        "host_review": hostReview,
        "host_rating": hostRating,
        "property_images": List<dynamic>.from(propertyImages.map((x) => x)),
        "profile_picture": profilePicture,
        "property_name": propertyName,
        "start_date":
            "${startDate.year.toString().padLeft(4, '0')}-${startDate.month.toString().padLeft(2, '0')}-${startDate.day.toString().padLeft(2, '0')}",
        "end_date":
            "${endDate.year.toString().padLeft(4, '0')}-${endDate.month.toString().padLeft(2, '0')}-${endDate.day.toString().padLeft(2, '0')}",
        "no_of_guests": noOfGuests,
        "total_cost": totalCost,
        "refund_amount": refundAmount,
        "payment_method": paymentMethod,
        "payment_status": paymentStatus,
        "booking_status": bookingStatus,
        "booking_date": bookingDate.toIso8601String(),
        "platform_fee": platformFee,
        "updated_date": updatedDate.toIso8601String(),
        "payment_ids": List<dynamic>.from(paymentIds.map((x) => x)),
        "review_submitted": reviewSubmitted,
        "report_submitted": reportSubmitted,
        "user": user,
        "host": host,
      };
}
