// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class BookingDetailRow extends StatelessWidget {
  final String label;
  final String value;
  final TextStyle? valueStyle;
  const BookingDetailRow({
    super.key,
    required this.label,
    required this.value,
    this.valueStyle,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            label,
            style: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            value,
            style: valueStyle ??
                const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
          ),
        ],
      ),
    );
  }
}
