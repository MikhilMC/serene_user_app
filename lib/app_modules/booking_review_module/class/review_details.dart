// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:io';

class ReviewDetails {
  final int boookingId;
  final double starRating;
  final String? feedback;
  final List<File>? images;
  ReviewDetails({
    required this.boookingId,
    required this.starRating,
    this.feedback,
    this.images,
  });
}
