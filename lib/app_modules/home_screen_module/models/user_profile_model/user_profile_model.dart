// To parse this JSON data, do
//
//     final userProfileModel = userProfileModelFromJson(jsonString);

import 'dart:convert';

UserProfileModel userProfileModelFromJson(String str) =>
    UserProfileModel.fromJson(json.decode(str));

String userProfileModelToJson(UserProfileModel data) =>
    json.encode(data.toJson());

class UserProfileModel {
  int id;
  String username;
  String email;
  String password;
  String address;
  String profilePicture;
  String phoneNumber;
  DateTime dateOfBirth;

  UserProfileModel({
    required this.id,
    required this.username,
    required this.email,
    required this.password,
    required this.address,
    required this.profilePicture,
    required this.phoneNumber,
    required this.dateOfBirth,
  });

  factory UserProfileModel.fromJson(Map<String, dynamic> json) =>
      UserProfileModel(
        id: json["id"],
        username: json["username"],
        email: json["email"],
        password: json["password"],
        address: json["address"],
        profilePicture: json["profile_picture"],
        phoneNumber: json["phone_number"],
        dateOfBirth: DateTime.parse(json["date_of_birth"]),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "username": username,
        "email": email,
        "password": password,
        "address": address,
        "profile_picture": profilePicture,
        "phone_number": phoneNumber,
        "date_of_birth":
            "${dateOfBirth.year.toString().padLeft(4, '0')}-${dateOfBirth.month.toString().padLeft(2, '0')}-${dateOfBirth.day.toString().padLeft(2, '0')}",
      };
}
