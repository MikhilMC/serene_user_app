import 'package:cached_network_image/cached_network_image.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:serene_user_app/app_constants/app_colors.dart';
import 'package:serene_user_app/app_constants/app_urls.dart';
import 'package:serene_user_app/app_models/property_model/property_model.dart';
import 'package:serene_user_app/app_modules/property_details_module/view/property_details_screen.dart';

class PropertyCard extends StatefulWidget {
  final PropertyModel property;

  const PropertyCard({super.key, required this.property});

  @override
  State<PropertyCard> createState() => _PropertyCardState();
}

class _PropertyCardState extends State<PropertyCard> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => PropertyDetailsScreen(
            propertyId: widget.property.id,
          ),
        ),
      ),
      child: Card(
        margin: const EdgeInsets.only(bottom: 16.0),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12.0),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Stack(
              children: [
                // Carousel Slider
                CarouselSlider(
                  options: CarouselOptions(
                    height: 200.0,
                    autoPlay: true,
                    viewportFraction: 1.0,
                    onPageChanged: (index, reason) {
                      setState(() {
                        _currentIndex = index;
                      });
                    },
                  ),
                  items: widget.property.propertyImages.map((imageUrl) {
                    return ClipRRect(
                      borderRadius: const BorderRadius.vertical(
                          top: Radius.circular(12.0)),
                      child: CachedNetworkImage(
                        imageUrl: "${AppUrls.baseUrl}$imageUrl",
                        fit: BoxFit.cover,
                        width: double.infinity,
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
                    );
                  }).toList(),
                ),

                // Dots Indicator
                Positioned(
                  bottom: 10,
                  left: 0,
                  right: 0,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: List.generate(
                        widget.property.propertyImages.length, (index) {
                      return Container(
                        margin: const EdgeInsets.symmetric(horizontal: 4.0),
                        width: _currentIndex == index ? 8.0 : 6.0,
                        height: _currentIndex == index ? 8.0 : 6.0,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: _currentIndex == index
                              ? Colors.white
                              : Colors.grey,
                        ),
                      );
                    }),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Profile and Property Name
                  Row(
                    children: [
                      CircleAvatar(
                        radius: 25,
                        backgroundImage: CachedNetworkImageProvider(
                          "${AppUrls.baseUrl}${widget.property.profilePicture}",
                        ),
                      ),
                      const SizedBox(width: 12),
                      Expanded(
                        child: Text(
                          widget.property.name,
                          style: const TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 8.0),

                  // Rating and Reviews
                  Row(
                    children: [
                      const Icon(Icons.star, color: Colors.amber, size: 16),
                      const SizedBox(width: 4.0),
                      Text(
                        widget.property.rating,
                        style: const TextStyle(fontSize: 14),
                      ),
                      const SizedBox(width: 8.0),
                      Text(
                        '(${widget.property.reviewCount} reviews)',
                        style: const TextStyle(
                          fontSize: 14,
                          color: Colors.grey,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 8.0),

                  // Rate
                  Text(
                    '₹${widget.property.rate} per night',
                    style: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.green,
                    ),
                  ),
                  const SizedBox(height: 8.0),

                  // Max Capacity and Rooms
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      SizedBox(
                        child: Row(
                          children: [
                            const Icon(Icons.people,
                                color: Colors.blue, size: 18),
                            const SizedBox(width: 6.0),
                            Text(
                              '${widget.property.maxCapacity} Guests',
                              style: const TextStyle(fontSize: 14),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        child: Row(
                          children: [
                            const SizedBox(width: 12.0),
                            const Icon(Icons.bed,
                                color: Colors.deepOrange, size: 18),
                            const SizedBox(width: 6.0),
                            Text(
                              '${widget.property.rooms} Rooms',
                              style: const TextStyle(fontSize: 14),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
