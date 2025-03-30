// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:serene_user_app/app_modules/booking_module/widget/booking_detail_row.dart';

class BookingDetailsCard extends StatelessWidget {
  final int numberOfDays;
  final double rate;
  final double totalRate;
  final double platformFee;
  const BookingDetailsCard({
    super.key,
    required this.numberOfDays,
    required this.rate,
    required this.totalRate,
    required this.platformFee,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      margin: const EdgeInsets.symmetric(vertical: 8.0),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Number of Days
            BookingDetailRow(
              label: "Number of Days",
              value: numberOfDays.toString(),
            ),
            const Divider(),

            // Rate per Day per Person
            BookingDetailRow(
              label: "Rate per day (For one person)",
              value: '₹${rate.toStringAsFixed(2)}',
            ),
            const Divider(),

            // Total Rate
            BookingDetailRow(
              label: "Total Rate",
              value: '₹${totalRate.toStringAsFixed(2)}',
              valueStyle: const TextStyle(
                color: Colors.green,
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
            const Divider(),

            // Platform Fee
            BookingDetailRow(
              label: "Platform Fee",
              value: '₹${platformFee.toStringAsFixed(2)}',
              valueStyle: const TextStyle(
                color: Colors.green,
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
