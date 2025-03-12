// To parse this JSON data, do
//
//     final propertyModel = propertyModelFromJson(jsonString);

import 'dart:convert';

List<PropertyModel> propertyModelFromJson(String str) =>
    List<PropertyModel>.from(
        json.decode(str).map((x) => PropertyModel.fromJson(x)));

String propertyModelToJson(List<PropertyModel> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class PropertyModel {
  int id;
  String name;
  String email;
  String phoneNumber;
  String password;
  String propertyType;
  String address;
  String place;
  String latitude;
  String longitude;
  String description;
  String amenities;
  String profilePicture;
  String idProof;
  String rate;
  String status;
  String rating;
  int reviewCount;

  PropertyModel({
    required this.id,
    required this.name,
    required this.email,
    required this.phoneNumber,
    required this.password,
    required this.propertyType,
    required this.address,
    required this.place,
    required this.latitude,
    required this.longitude,
    required this.description,
    required this.amenities,
    required this.profilePicture,
    required this.idProof,
    required this.rate,
    required this.status,
    required this.rating,
    required this.reviewCount,
  });

  factory PropertyModel.fromJson(Map<String, dynamic> json) => PropertyModel(
        id: json["id"],
        name: json["name"],
        email: json["email"],
        phoneNumber: json["phone_number"],
        password: json["password"],
        propertyType: json["property_type"],
        address: json["address"],
        place: json["place"],
        latitude: json["latitude"],
        longitude: json["longitude"],
        description: json["description"],
        amenities: json["amenities"],
        profilePicture: json["profile_picture"],
        idProof: json["id_proof"],
        rate: json["rate"],
        status: json["status"],
        rating: json["rating"],
        reviewCount: json["review_count"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "email": email,
        "phone_number": phoneNumber,
        "password": password,
        "property_type": propertyType,
        "address": address,
        "place": place,
        "latitude": latitude,
        "longitude": longitude,
        "description": description,
        "amenities": amenities,
        "profile_picture": profilePicture,
        "id_proof": idProof,
        "rate": rate,
        "status": status,
        "rating": rating,
        "review_count": reviewCount,
      };
}
