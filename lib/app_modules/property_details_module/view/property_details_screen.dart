import 'package:flutter/material.dart';
import 'package:serene_user_app/app_constants/app_colors.dart';
import 'package:serene_user_app/app_modules/booking_module/view/booking_screen.dart';
import 'package:serene_user_app/app_modules/property_details_module/widgets/host_details_widget.dart';
import 'package:serene_user_app/app_modules/property_details_module/widgets/property_details_widget.dart';
import 'package:serene_user_app/app_modules/property_details_module/widgets/review_section_widget.dart';
import 'package:serene_user_app/app_widgets/custom_button.dart';

class PropertyDetailsScreen extends StatefulWidget {
  PropertyDetailsScreen({super.key});

  @override
  State<PropertyDetailsScreen> createState() => _PropertyDetailsScreenState();

  // Dummy data for demonstration
  final host = {
    'name': 'John Doe',
    'email': 'john.doe@example.com',
    'phone': '+1 123 456 7890',
    'profilePicture': 'https://picsum.photos/seed/profile/100/100',
  };

  final property = {
    'type': 'Apartment',
    'address': '123 Main St, New York, NY 10001',
    'placeName': 'Cozy Apartment in Manhattan',
    'description':
        'A cozy and modern apartment located in the heart of Manhattan. Perfect for a weekend getaway or a business trip.',
    'amenities': [
      "WiFi",
      "Parking",
      "Air Conditioning",
      "Swimming Pool",
      "TV",
      "Kitchen",
    ],
    'images': [
      'https://picsum.photos/seed/property1/400/300',
      'https://picsum.photos/seed/property2/400/300',
      'https://picsum.photos/seed/property3/400/300',
    ],
    'dailyRate': 150.0,
  };

  final reviews = [
    {
      'userName': 'Alice',
      'title': 'Great Stay!',
      'description':
          'The apartment was clean and comfortable. Highly recommended!',
      'rating': 4.5,
      'images': [
        'https://picsum.photos/seed/review1/200/200',
        'https://picsum.photos/seed/review2/200/200',
      ],
    },
    {
      'userName': 'Bob',
      'title': 'Amazing Location',
      'description':
          'The location was perfect, and the host was very responsive.',
      'rating': 5.0,
      'images': [],
    },
  ];
}

class _PropertyDetailsScreenState extends State<PropertyDetailsScreen> {
  void _bookProperty() {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => BookingScreen(
          hostName: widget.host['name']!,
          rate: widget.property['dailyRate']! as double,
          isUpdateBooking: false,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Property Details'),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Host Details
            HostDetailsWidget(host: widget.host),
            const SizedBox(height: 24.0),

            // Property Details
            PropertyDetailsWidget(property: widget.property),
            const SizedBox(height: 24.0),

            // Reviews Section
            ReviewSectionWidget(reviews: widget.reviews),
          ],
        ),
      ),
      // "Book Now" Button
      bottomNavigationBar: BottomAppBar(
        child: CustomButton(
          backgroundColor: AppColors.firstColor,
          textColor: Colors.white,
          buttonWidth: double.infinity,
          labelText: "Book Property",
          onClick: _bookProperty,
        ),
      ),
    );
  }
}
