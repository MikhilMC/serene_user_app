// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:serene_user_app/app_constants/app_colors.dart';
import 'package:serene_user_app/app_modules/home_screen_module/view/home_screen.dart';
import 'package:serene_user_app/app_modules/payment_module/widget/payment_container.dart';
import 'package:serene_user_app/app_utils/app_helper.dart';
import 'package:serene_user_app/app_widgets/custom_button.dart';
import 'package:serene_user_app/app_widgets/normal_text_field.dart';

class CardPayment extends StatefulWidget {
  final double amount;
  const CardPayment({
    super.key,
    required this.amount,
  });

  @override
  State<CardPayment> createState() => _CardPaymentState();
}

class _CardPaymentState extends State<CardPayment> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final TextEditingController _cardNameController = TextEditingController();
  final TextEditingController _cardNumberController = TextEditingController();
  final TextEditingController _expiryDateController = TextEditingController();
  final TextEditingController _cvvController = TextEditingController();

  @override
  void dispose() {
    _cardNameController.dispose();
    _cardNumberController.dispose();
    _expiryDateController.dispose();
    _cvvController.dispose();
    super.dispose();
  }

  void _cardPayment() {
    // Handle card payment
    if (_formKey.currentState!.validate()) {
      AppHelper.showCustomSnackBar(
        context,
        "Card payment successful!",
      );
      Future.delayed(Duration(seconds: 2), () {
        if (mounted) {
          Navigator.pop(context); // Close the current screen
          Navigator.pushAndRemoveUntil(
            context,
            MaterialPageRoute(builder: (context) => HomeScreen()),
            (Route<dynamic> route) => false, // Remove all previous routes
          );
        }
      });
    } else {
      AppHelper.showErrorDialogue(context, "Please fill all card details");
    }
  }

  @override
  Widget build(BuildContext context) {
    return PaymentContainer(
      paymentForm: Form(
        key: _formKey,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Card Details',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 16),
            NormalTextField(
              textEditingController: _cardNameController,
              validatorFunction: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter the cardholder name';
                }
                return null;
              },
              labelText: "Cardholder Name",
              hintText: "Enter cardholder's name",
            ),
            const SizedBox(height: 16),
            NormalTextField(
              textEditingController: _cardNumberController,
              validatorFunction: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter the card number';
                }
                return null;
              },
              labelText: "Card Number",
              hintText: "Enter card's number",
              textInputType: TextInputType.number,
            ),
            const SizedBox(height: 16),
            Row(
              children: [
                Expanded(
                  child: NormalTextField(
                    textEditingController: _expiryDateController,
                    validatorFunction: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter the expiry date';
                      }
                      return null;
                    },
                    labelText: "Expiry Date (MM/YY)",
                    hintText: "Enter expiry date",
                    textInputType: TextInputType.datetime,
                  ),
                ),
                const SizedBox(width: 16),
                Expanded(
                  child: TextFormField(
                    controller: _cvvController,
                    decoration: const InputDecoration(
                      labelText: 'CVV',
                      border: OutlineInputBorder(),
                    ),
                    keyboardType: TextInputType.number,
                    obscureText: true,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter the CVV';
                      }
                      return null;
                    },
                  ),
                ),
              ],
            ),
            const SizedBox(height: 16),
            CustomButton(
              buttonWidth: double.infinity,
              backgroundColor: AppColors.firstColor,
              textColor: Colors.white,
              labelText: "Pay",
              onClick: _cardPayment,
            ),
          ],
        ),
      ),
    );
  }
}
