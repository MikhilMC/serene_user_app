// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:serene_user_app/app_constants/app_colors.dart';
import 'package:serene_user_app/app_modules/home_screen_module/view/home_screen.dart';
import 'package:serene_user_app/app_modules/payment_module/bloc/make_payment_bloc.dart';
import 'package:serene_user_app/app_modules/payment_module/class/payment_details.dart';
import 'package:serene_user_app/app_modules/payment_module/widget/payment_container.dart';
import 'package:serene_user_app/app_utils/app_helper.dart';
import 'package:serene_user_app/app_widgets/custom_button.dart';
import 'package:serene_user_app/app_widgets/overlay_loader_widget.dart';

class GooglePay extends StatefulWidget {
  final int bookingId;
  final double amount;
  const GooglePay({
    super.key,
    required this.bookingId,
    required this.amount,
  });

  @override
  State<GooglePay> createState() => _GooglePayState();
}

class _GooglePayState extends State<GooglePay> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final TextEditingController _upiController = TextEditingController();

  @override
  void dispose() {
    _upiController.dispose();
    super.dispose();
  }

  void _googlePay() {
    // Handle Google Pay payment
    if (_formKey.currentState!.validate()) {
      if (_upiController.text.isNotEmpty) {
        final PaymentDetails paymentDetails = PaymentDetails(
          bookingId: widget.bookingId,
          amount: widget.amount,
          paymentMethod: 'upi',
          upiId: _upiController.text.trim(),
        );

        final MakePaymentBloc makePaymentBloc =
            BlocProvider.of<MakePaymentBloc>(context);

        makePaymentBloc.add(MakePaymentEvent.paymentMade(paymentDetails));
      } else {
        AppHelper.showErrorDialogue(context, "Please enter your UPI ID");
      }
    } else {
      AppHelper.showErrorDialogue(context, "Invalid UPI ID format");
    }
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<MakePaymentBloc, MakePaymentState>(
      listener: (context, state) {
        state.whenOrNull(
          loading: () {},
          success: (response) {
            if (response.status == "success") {
              AppHelper.showCustomSnackBar(
                context,
                "UPI Payment successful!",
              );
              if (mounted) {
                Navigator.pop(context);
                Navigator.pushAndRemoveUntil(
                  context,
                  MaterialPageRoute(builder: (context) => HomeScreen()),
                  (Route<dynamic> route) => false, // Remove all previous routes
                );
              }
            } else {
              AppHelper.showErrorDialogue(
                context,
                "Payment Failed",
              );
            }
          },
          failure: (errorMessage) => AppHelper.showErrorDialogue(
            context,
            "Payment Failed: $errorMessage",
          ),
        );
      },
      builder: (context, state) {
        bool isLoading = state.maybeWhen(
          loading: () => true,
          orElse: () => false,
        );

        return OverlayLoaderWidget(
          isLoading: isLoading,
          childWidget: PaymentContainer(
            paymentForm: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Google Pay',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 16),
                Form(
                  key: _formKey,
                  child: TextFormField(
                    controller: _upiController,
                    decoration: const InputDecoration(
                      labelText: 'UPI ID',
                      border: OutlineInputBorder(),
                    ),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter your UPI ID';
                      }

                      final RegExp regex =
                          RegExp(r'^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+$');
                      if (!regex.hasMatch(value)) {
                        return 'Invalid UPI id format';
                      }
                      return null;
                    },
                  ),
                ),
                const SizedBox(height: 16),
                CustomButton(
                  buttonWidth: double.infinity,
                  backgroundColor: AppColors.firstColor,
                  textColor: Colors.white,
                  labelText: "Pay",
                  onClick: _googlePay,
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
