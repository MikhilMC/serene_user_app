// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:io';

class ReportDetails {
  final int bookingId;
  final String title;
  final String description;
  final List<File>? images;
  ReportDetails({
    required this.bookingId,
    required this.title,
    required this.description,
    this.images,
  });
}
