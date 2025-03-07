// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:serene_user_app/app_constants/app_colors.dart';
import 'package:serene_user_app/app_modules/home_screen_module/view/home_screen.dart';
import 'package:serene_user_app/app_modules/payment_module/widget/payment_container.dart';
import 'package:serene_user_app/app_utils/app_helper.dart';
import 'package:serene_user_app/app_widgets/custom_button.dart';

class CashOnArrival extends StatefulWidget {
  final double amount;
  const CashOnArrival({
    super.key,
    required this.amount,
  });

  @override
  State<CashOnArrival> createState() => _CashOnArrivalState();
}

class _CashOnArrivalState extends State<CashOnArrival> {
  void _cashOnArrival() {
    // Handle cash on arrival payment
    AppHelper.showCustomSnackBar(
      context,
      "Payment will be done on arrival",
    );
    Future.delayed(Duration(seconds: 2), () {
      if (mounted) {
        Navigator.pop(context);
        Navigator.pushAndRemoveUntil(
          context,
          MaterialPageRoute(builder: (context) => HomeScreen()),
          (Route<dynamic> route) => false, // Remove all previous routes
        );
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return PaymentContainer(
      paymentForm: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Pay on Arrival',
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 16),
          CustomButton(
            buttonWidth: double.infinity,
            backgroundColor: AppColors.firstColor,
            textColor: Colors.white,
            labelText: "Pay",
            onClick: _cashOnArrival,
          ),
        ],
      ),
    );
  }
}
