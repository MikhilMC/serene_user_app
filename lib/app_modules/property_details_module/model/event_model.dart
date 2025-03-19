// To parse this JSON data, do
//
//     final eventModel = eventModelFromJson(jsonString);

import 'dart:convert';

List<EventModel> eventModelFromJson(String str) =>
    List<EventModel>.from(json.decode(str).map((x) => EventModel.fromJson(x)));

String eventModelToJson(List<EventModel> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class EventModel {
  int id;
  List<String> images;
  String title;
  String description;
  DateTime startDate;
  DateTime endDate;
  int host;

  EventModel({
    required this.id,
    required this.images,
    required this.title,
    required this.description,
    required this.startDate,
    required this.endDate,
    required this.host,
  });

  factory EventModel.fromJson(Map<String, dynamic> json) => EventModel(
        id: json["id"],
        images: List<String>.from(json["images"].map((x) => x)),
        title: json["title"],
        description: json["description"],
        startDate: DateTime.parse(json["start_date"]),
        endDate: DateTime.parse(json["end_date"]),
        host: json["host"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "images": List<dynamic>.from(images.map((x) => x)),
        "title": title,
        "description": description,
        "start_date":
            "${startDate.year.toString().padLeft(4, '0')}-${startDate.month.toString().padLeft(2, '0')}-${startDate.day.toString().padLeft(2, '0')}",
        "end_date":
            "${endDate.year.toString().padLeft(4, '0')}-${endDate.month.toString().padLeft(2, '0')}-${endDate.day.toString().padLeft(2, '0')}",
        "host": host,
      };
}
