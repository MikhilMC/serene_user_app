// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'package:flutter/material.dart';
import 'package:serene_user_app/app_constants/app_colors.dart';

class PropertyDetailRow extends StatelessWidget {
  final IconData icon;
  final String label;
  final String value;
  const PropertyDetailRow({
    super.key,
    required this.icon,
    required this.label,
    required this.value,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4.0),
      child: Row(
        children: [
          Icon(icon, color: AppColors.firstColor),
          const SizedBox(width: 8.0),
          Expanded(
            child: Text(
              '$label: $value',
              style: const TextStyle(fontSize: 16),
            ),
          ),
        ],
      ),
    );
  }
}
