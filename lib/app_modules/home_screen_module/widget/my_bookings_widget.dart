import 'package:flutter/material.dart';
import 'package:serene_user_app/app_modules/home_screen_module/models/booking.dart';
import 'package:serene_user_app/app_modules/home_screen_module/widget/booking_card.dart';

class MyBookingsWidget extends StatelessWidget {
  final List<Booking> bookings;

  const MyBookingsWidget({super.key, required this.bookings});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: const EdgeInsets.symmetric(vertical: 16.0),
      itemCount: bookings.length,
      itemBuilder: (context, index) {
        return BookingCard(booking: bookings[index]);
      },
    );
  }
}
