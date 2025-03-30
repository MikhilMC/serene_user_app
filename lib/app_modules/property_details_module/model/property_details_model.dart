// To parse this JSON data, do
//
//     final propertyDetailsModel = propertyDetailsModelFromJson(jsonString);

import 'dart:convert';

import 'package:serene_user_app/app_modules/property_details_module/model/host_details.dart';
import 'package:serene_user_app/app_modules/property_details_module/model/review.dart';

PropertyDetailsModel propertyDetailsModelFromJson(String str) =>
    PropertyDetailsModel.fromJson(json.decode(str));

String propertyDetailsModelToJson(PropertyDetailsModel data) =>
    json.encode(data.toJson());

class PropertyDetailsModel {
  HostDetails hostDetails;
  List<Review> reviews;

  PropertyDetailsModel({
    required this.hostDetails,
    required this.reviews,
  });

  factory PropertyDetailsModel.fromJson(Map<String, dynamic> json) =>
      PropertyDetailsModel(
        hostDetails: HostDetails.fromJson(json["host_details"]),
        reviews:
            List<Review>.from(json["reviews"].map((x) => Review.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "host_details": hostDetails.toJson(),
        "reviews": List<dynamic>.from(reviews.map((x) => x.toJson())),
      };
}
