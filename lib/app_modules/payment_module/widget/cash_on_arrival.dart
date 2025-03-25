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

class CashOnArrival extends StatefulWidget {
  final int bookingId;
  final double amount;
  const CashOnArrival({
    super.key,
    required this.bookingId,
    required this.amount,
  });

  @override
  State<CashOnArrival> createState() => _CashOnArrivalState();
}

class _CashOnArrivalState extends State<CashOnArrival> {
  void _cashOnArrival() {
    // Handle cash on arrival payment
    final PaymentDetails paymentDetails = PaymentDetails(
      bookingId: widget.bookingId,
      amount: widget.amount,
      paymentMethod: "cash_on_arrival",
    );

    final MakePaymentBloc makePaymentBloc =
        BlocProvider.of<MakePaymentBloc>(context);

    makePaymentBloc.add(MakePaymentEvent.paymentMade(paymentDetails));
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
                "Payment will be done on arrival",
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
          ),
        );
      },
    );
  }
}
