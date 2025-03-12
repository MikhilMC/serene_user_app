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
  List<String> propertyImages;
  String profilePicture;
  String idProof;
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
  String rate;
  String status;
  String rating;
  int reviewCount;

  PropertyModel({
    required this.id,
    required this.propertyImages,
    required this.profilePicture,
    required this.idProof,
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
    required this.rate,
    required this.status,
    required this.rating,
    required this.reviewCount,
  });

  factory PropertyModel.fromJson(Map<String, dynamic> json) => PropertyModel(
        id: json["id"],
        propertyImages:
            List<String>.from(json["property_images"].map((x) => x)),
        profilePicture: json["profile_picture"],
        idProof: json["id_proof"],
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
        rate: json["rate"],
        status: json["status"],
        rating: json["rating"],
        reviewCount: json["review_count"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "property_images": List<dynamic>.from(propertyImages.map((x) => x)),
        "profile_picture": profilePicture,
        "id_proof": idProof,
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
        "rate": rate,
        "status": status,
        "rating": rating,
        "review_count": reviewCount,
      };
}
