import 'package:flutter/material.dart';
import 'package:serene_user_app/app_constants/app_colors.dart';

class AppHelper {
  static Future<void> showErrorDialogue(
    BuildContext context,
    String message,
  ) async {
    return showDialog(
      context: context,
      barrierDismissible: false,
      builder: (context) {
        return AlertDialog(
          title: const Text("Error"),
          backgroundColor: Colors.white,
          surfaceTintColor: Colors.green.shade100,
          titleTextStyle: const TextStyle(
            color: Colors.red,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
          content: Text(
            message,
            style: const TextStyle(
              color: Colors.black,
              fontSize: 15,
            ),
          ),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: const Text(
                "OK",
                style: TextStyle(
                  color: Colors.redAccent,
                  fontSize: 15,
                ),
              ),
            )
          ],
        );
      },
    );
  }

  static void showCustomSnackBar(BuildContext context, String message) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(
          message,
          style: TextStyle(
            color: AppColors.fourthColor,
            fontSize: 16.0,
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: AppColors.firstColor, // Background color
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0), // Rounded corners
        ),
        behavior: SnackBarBehavior.floating, // Floating style
        margin: EdgeInsets.all(10.0), // Margin for floating behavior
        duration: Duration(seconds: 3), // Duration to display
      ),
    );
  }
}
