import 'package:flutter/material.dart';

class Helper {
  // Helper method to determine status color
  static Color statusColor(String status) {
    switch (status.toLowerCase()) {
      case "confirmed":
      case "paid":
        return Colors.green;
      case "pending":
        return Colors.orange;
      case "cancelled":
        return Colors.red;
      default:
        return Colors.black;
    }
  }
}
