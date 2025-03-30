// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:serene_user_app/app_constants/app_colors.dart';

class ReviewItemWidget extends StatelessWidget {
  final Map<String, dynamic> review;
  const ReviewItemWidget({
    super.key,
    required this.review,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            ClipOval(
              child: CachedNetworkImage(
                imageUrl: review['profilePicture'],
                width: 60,
                height: 60,
                fit: BoxFit.cover,
                placeholder: (context, url) =>
                    const CircularProgressIndicator(), // Loading placeholder
                errorWidget: (context, url, error) =>
                    const Icon(Icons.error), // Error placeholder
              ),
            ),
            const SizedBox(width: 8.0),
            Text(
              review['username'],
              style: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
        // const SizedBox(height: 8.0),
        // Text(
        //   review['title'],
        //   style: const TextStyle(
        //     fontSize: 16,
        //     fontWeight: FontWeight.bold,
        //   ),
        // ),
        const SizedBox(height: 4.0),
        Text(
          review['description'],
          style: const TextStyle(
            fontSize: 14,
          ),
        ),
        const SizedBox(height: 8.0),
        Row(
          children: [
            const Icon(Icons.star, color: Colors.amber, size: 16),
            const SizedBox(width: 4.0),
            Text(
              review['rating'].toString(),
              style: const TextStyle(
                fontSize: 14,
              ),
            ),
          ],
        ),
        if (review['images'].isNotEmpty) ...[
          const SizedBox(height: 8.0),
          SizedBox(
            height: 100,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: review['images'].length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.only(right: 8.0),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(12.0),
                    child: CachedNetworkImage(
                      imageUrl: review['images'][index],
                      progressIndicatorBuilder: (context, url, progress) =>
                          CircularProgressIndicator(
                        value: progress.progress,
                        valueColor: AlwaysStoppedAnimation<Color>(
                          AppColors.firstColor,
                        ),
                      ),
                      errorWidget: (context, url, error) => Icon(Icons.error),
                      width: 100,
                      fit: BoxFit.cover,
                    ),
                  ),
                );
              },
            ),
          ),
        ],
        const Divider(height: 24.0, thickness: 1.0),
      ],
    );
  }
}
