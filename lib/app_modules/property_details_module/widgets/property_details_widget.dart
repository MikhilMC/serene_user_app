// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:serene_user_app/app_constants/app_colors.dart';
import 'package:serene_user_app/app_modules/property_details_module/widgets/property_detail_row.dart';
import 'package:serene_user_app/app_modules/property_details_module/widgets/property_icon_detail.dart';
import 'package:serene_user_app/app_modules/property_details_module/widgets/property_review_icon_detail.dart';

class PropertyDetailsWidget extends StatelessWidget {
  final Map<String, dynamic> property;

  const PropertyDetailsWidget({
    super.key,
    required this.property,
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
            // Title
            const Text(
              'Property Details',
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 16.0),

            // Property Information
            PropertyDetailRow(
              icon: Icons.apartment,
              label: 'Type',
              value: property['type'],
            ),
            PropertyDetailRow(
              icon: Icons.location_on,
              label: 'Address',
              value: property['address'],
            ),
            PropertyDetailRow(
              icon: Icons.place,
              label: 'Place',
              value: property['placeName'],
            ),
            PropertyDetailRow(
              icon: Icons.description,
              label: 'Description',
              value: property['description'],
            ),

            const SizedBox(height: 16.0),

            // Amenities Section
            const Text(
              'Amenities',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 8.0),
            Wrap(
              spacing: 8.0,
              runSpacing: 8.0,
              children: property['amenities']
                  .map<Widget>(
                    (amenity) => Chip(
                      label: Text(amenity),
                      backgroundColor: Colors.blue.shade50,
                      labelStyle: const TextStyle(color: Colors.blue),
                    ),
                  )
                  .toList(),
            ),

            const SizedBox(height: 16.0),

            // Images Section
            const Text(
              'Images',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 8.0),
            SizedBox(
              height: 200,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: property['images'].length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.only(right: 8.0),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(12.0),
                      child: CachedNetworkImage(
                        imageUrl: property['images'][index],
                        width: 300,
                        fit: BoxFit.cover,
                        progressIndicatorBuilder: (context, url, progress) =>
                            CircularProgressIndicator(
                          value: progress.progress,
                          valueColor: AlwaysStoppedAnimation<Color>(
                            AppColors.firstColor,
                          ),
                        ),
                        errorWidget: (context, url, error) =>
                            const Icon(Icons.error),
                      ),
                    ),
                  );
                },
              ),
            ),

            const SizedBox(height: 16.0),

            // Pricing and Capacity Section
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                PropertyIconDetail(
                  icon: Icons.attach_money,
                  label: 'Daily Rate',
                  value: '₹${property['dailyRate']}',
                  color: Colors.green,
                ),
                PropertyIconDetail(
                  icon: Icons.group,
                  label: 'Max Capacity',
                  value: '${property['maxCapacity']} Guests',
                  color: Colors.blue,
                ),
              ],
            ),
            const SizedBox(height: 12.0),

            // Rooms and Rating with Review Count
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                PropertyIconDetail(
                  icon: Icons.bed,
                  label: 'Rooms',
                  value: '${property['numberOfRooms']} Rooms',
                  color: Colors.orange,
                ),
                PropertyReviewIconDetail(
                  icon: Icons.rate_review,
                  label: 'Reviews',
                  color: Colors.amber,
                  reviewWidget: Row(
                    children: [
                      Icon(Icons.star, color: Colors.amber, size: 24),
                      const SizedBox(width: 4.0),
                      Text(
                        '${property['averageRating']}',
                        style: const TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Colors.amber,
                        ),
                      ),
                      const SizedBox(width: 8.0),
                      Text(
                        '(${property['reviewCount']} reviews)',
                        style: const TextStyle(
                          fontSize: 14,
                          color: Colors.grey,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
