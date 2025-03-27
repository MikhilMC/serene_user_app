import 'package:flutter/material.dart';

class Helper {
  // Helper method to determine status color
  static Color statusColor(String status) {
    switch (status.toLowerCase()) {
      case "success":
        return Colors.green;
      case "pending":
        return Colors.orange;
      case "full_refund":
        return Colors.red;
      default:
        return Colors.black;
    }
  }
}
