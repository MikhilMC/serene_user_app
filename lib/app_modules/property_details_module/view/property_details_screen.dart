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
  const PropertyDetailsScreen({
    super.key,
    required this.propertyId,
  });

  @override
  State<PropertyDetailsScreen> createState() => _PropertyDetailsScreenState();
}

class _PropertyDetailsScreenState extends State<PropertyDetailsScreen> {
  String? _hostName; // Store host name
  double? _rate; // Store rate

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
    if (_hostName != null && _rate != null) {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => BookingScreen(
            hostId: widget.propertyId,
            hostName: _hostName!,
            rate: _rate!,
          ),
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Property Details'),
      ),
      body: BlocConsumer<PropertyDetailsBloc, PropertyDetailsState>(
        listener: (context, state) {
          if (state is PropertyDetailsSuccess) {
            // Update host name and rate when success state is received
            setState(() {
              _hostName = state.propertyDetails.hostDetails.name;
              _rate = double.parse(state.propertyDetails.hostDetails.rate);
            });
          }
        },
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
            'name': propertyDetails.hostDetails.name,
            'email': propertyDetails.hostDetails.email,
            'phone': propertyDetails.hostDetails.phoneNumber,
            'profilePicture':
                "${AppUrls.baseUrl}${propertyDetails.hostDetails.profilePicture}",
          };

          final property = {
            'propertyName': propertyDetails.hostDetails.propertyName,
            'type': propertyDetails.hostDetails.propertyType,
            'address': propertyDetails.hostDetails.address,
            'placeName': propertyDetails.hostDetails.place,
            'description': propertyDetails.hostDetails.description,
            'amenities': propertyDetails.hostDetails.amenities.split(", "),
            'images': propertyDetails.hostDetails.propertyImages
                .map((image) => "${AppUrls.baseUrl}$image")
                .toList(),
            'dailyRate': double.parse(propertyDetails.hostDetails.rate),
            'averageRating': double.parse(propertyDetails.hostDetails.rating),
            'reviewCount': propertyDetails.hostDetails.reviewCount,
            'maxCapacity': propertyDetails.hostDetails.maxCapacity,
            'numberOfRooms': propertyDetails.hostDetails.rooms,
          };

          final reviews = propertyDetails.reviews.map((review) {
            return {
              'username': review.username,
              'profilePicture': "${AppUrls.baseUrl}${review.profilePicture}",
              'description': review.feedback,
              'rating': review.starRating,
              'images': review.images
                  .map((image) => "${AppUrls.baseUrl}${image.image}")
                  .toList(),
            };
          }).toList();

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
                EventsSectionWidget(
                  hostId: widget.propertyId,
                ),
                const SizedBox(height: 24.0),

                // Reviews Section
                ReviewSectionWidget(reviews: reviews),
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
