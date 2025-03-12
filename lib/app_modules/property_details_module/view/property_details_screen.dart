// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:serene_user_app/app_constants/app_colors.dart';
import 'package:serene_user_app/app_constants/app_urls.dart';
import 'package:serene_user_app/app_modules/booking_module/view/booking_screen.dart';
import 'package:serene_user_app/app_modules/property_details_module/bloc/property_details_bloc/property_details_bloc.dart';
import 'package:serene_user_app/app_modules/property_details_module/widgets/events_section_widget.dart';
import 'package:serene_user_app/app_modules/property_details_module/widgets/host_details_widget.dart';
import 'package:serene_user_app/app_modules/property_details_module/widgets/property_details_widget.dart';
import 'package:serene_user_app/app_modules/property_details_module/widgets/review_section_widget.dart';
import 'package:serene_user_app/app_widgets/custom_button.dart';
import 'package:serene_user_app/app_widgets/custom_error_widget.dart';

class PropertyDetailsScreen extends StatefulWidget {
  final int propertyId;
  PropertyDetailsScreen({
    super.key,
    required this.propertyId,
  });

  @override
  State<PropertyDetailsScreen> createState() => _PropertyDetailsScreenState();

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

  // Dummy data for events
  final event = {
    'title': 'Summer Music Festival',
    'description':
        'Join us for a weekend of live music, food, and fun activities!',
    'startDate': '2023-07-15',
    'endDate': '2023-07-17',
    'images': [
      'https://picsum.photos/seed/event1/400/300',
      'https://picsum.photos/seed/event2/400/300',
      'https://picsum.photos/seed/event3/400/300',
    ],
  };
}

class _PropertyDetailsScreenState extends State<PropertyDetailsScreen> {
  @override
  void initState() {
    super.initState();
    context.read<PropertyDetailsBloc>().add(
          PropertyDetailsEvent.propertyDetailsFetched(
            widget.propertyId,
          ),
        );
  }

  void _bookProperty() {
    // Navigator.push(
    //   context,
    //   MaterialPageRoute(
    //     builder: (context) => BookingScreen(
    //       hostName: widget.host['name']!,
    //       rate: widget.property['dailyRate']! as double,
    //       isUpdateBooking: false,
    //     ),
    //   ),
    // );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Property Details'),
      ),
      body: BlocBuilder<PropertyDetailsBloc, PropertyDetailsState>(
        builder: (context, state) {
          if (state is PropertyDetailsError) {
            return CustomErrorWidget(
              errorMessage: state.error,
            );
          }

          if (state is! PropertyDetailsSuccess) {
            return Center(
              child: CircularProgressIndicator(
                color: AppColors.firstColor,
              ),
            );
          }

          final propertyDetails = state.propertyDetails;

          final host = {
            'name': propertyDetails.name,
            'email': propertyDetails.email,
            'phone': propertyDetails.phoneNumber,
            'profilePicture':
                "${AppUrls.baseUrl}${propertyDetails.profilePicture}",
          };

          final property = {
            'type': propertyDetails.propertyType,
            'address': propertyDetails.address,
            'placeName': propertyDetails.place,
            'description': propertyDetails.description,
            'amenities': propertyDetails.amenities.split(", "),
            'images': propertyDetails.propertyImages
                .map((image) => "${AppUrls.baseUrl}$image")
                .toList(),
            'dailyRate': double.parse(propertyDetails.rate),
          };

          return SingleChildScrollView(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Host Details
                HostDetailsWidget(host: host),
                const SizedBox(height: 24.0),

                // Property Details
                PropertyDetailsWidget(property: property),
                const SizedBox(height: 24.0),

                // Events Section
                // EventsSectionWidget(event: widget.event),
                // const SizedBox(height: 24.0),

                // Reviews Section
                // ReviewSectionWidget(reviews: widget.reviews),
              ],
            ),
          );
        },
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
