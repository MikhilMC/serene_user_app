// To parse this JSON data, do
//
//     final review = reviewFromJson(jsonString);

import 'dart:convert';

Review reviewFromJson(String str) => Review.fromJson(json.decode(str));

String reviewToJson(Review data) => json.encode(data.toJson());

class Review {
  int id;
  int booking;
  int user;
  double starRating;
  String feedback;
  DateTime createdAt;
  List<Image> images;
  String username;
  String profilePicture;

  Review({
    required this.id,
    required this.booking,
    required this.user,
    required this.starRating,
    required this.feedback,
    required this.createdAt,
    required this.images,
    required this.username,
    required this.profilePicture,
  });

  factory Review.fromJson(Map<String, dynamic> json) => Review(
        id: json["id"],
        booking: json["booking"],
        user: json["user"],
        starRating: json["star_rating"]?.toDouble(),
        feedback: json["feedback"],
        createdAt: DateTime.parse(json["created_at"]),
        images: List<Image>.from(json["images"].map((x) => Image.fromJson(x))),
        username: json["username"],
        profilePicture: json["profile_picture"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "booking": booking,
        "user": user,
        "star_rating": starRating,
        "feedback": feedback,
        "created_at": createdAt.toIso8601String(),
        "images": List<dynamic>.from(images.map((x) => x.toJson())),
        "username": username,
        "profile_picture": profilePicture,
      };
}

class Image {
  int id;
  String image;

  Image({
    required this.id,
    required this.image,
  });

  factory Image.fromJson(Map<String, dynamic> json) => Image(
        id: json["id"],
        image: json["image"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "image": image,
      };
}
