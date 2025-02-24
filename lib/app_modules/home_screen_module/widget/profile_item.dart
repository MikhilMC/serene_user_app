import 'package:flutter/material.dart';

class ProfileItem extends StatelessWidget {
  final IconData icon;
  final String label;
  final String value;
  final bool isPassword;
  final VoidCallback? onTogglePasswordVisibility;

  const ProfileItem({
    super.key,
    required this.icon,
    required this.label,
    required this.value,
    this.isPassword = false,
    this.onTogglePasswordVisibility,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(
          icon,
          size: 24,
          color: Colors.blue,
        ),
        const SizedBox(width: 16.0),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                label,
                style: TextStyle(
                  fontSize: 14,
                  color: Colors.grey[600],
                ),
              ),
              const SizedBox(height: 4.0),
              Text(
                value,
                style: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
        if (isPassword && onTogglePasswordVisibility != null)
          IconButton(
            icon: Icon(
              value == '********' ? Icons.visibility : Icons.visibility_off,
              color: Colors.blue,
            ),
            onPressed: onTogglePasswordVisibility,
          ),
      ],
    );
  }
}
