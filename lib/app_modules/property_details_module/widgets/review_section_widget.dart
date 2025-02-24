// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:serene_user_app/app_modules/property_details_module/widgets/review_item_widget.dart';

class ReviewSectionWidget extends StatelessWidget {
  final List<Map<String, dynamic>> reviews;
  const ReviewSectionWidget({
    super.key,
    required this.reviews,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4.0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12.0),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Reviews',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 16.0),
            ...reviews.map((review) => ReviewItemWidget(review: review)),
          ],
        ),
      ),
    );
  }
}
