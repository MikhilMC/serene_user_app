// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'package:flutter/material.dart';

class PropertyReviewIconDetail extends StatelessWidget {
  final IconData icon;
  final String label;
  final Widget reviewWidget;
  final Color color;
  const PropertyReviewIconDetail({
    super.key,
    required this.icon,
    required this.label,
    required this.reviewWidget,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Icon(icon, color: color, size: 24),
            const SizedBox(width: 6.0),
            Text(
              label,
              style: const TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
        const SizedBox(height: 4.0),
        reviewWidget,
      ],
    );
  }
}
