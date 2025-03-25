// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:serene_user_app/app_constants/app_colors.dart';
import 'package:serene_user_app/app_modules/home_screen_module/view/home_screen.dart';
import 'package:serene_user_app/app_modules/payment_module/bloc/make_payment_bloc.dart';
import 'package:serene_user_app/app_modules/payment_module/class/payment_details.dart';
import 'package:serene_user_app/app_modules/payment_module/widget/expiry_date_field.dart';
import 'package:serene_user_app/app_modules/payment_module/widget/payment_container.dart';
import 'package:serene_user_app/app_utils/app_helper.dart';
import 'package:serene_user_app/app_widgets/custom_button.dart';
import 'package:serene_user_app/app_widgets/normal_text_field.dart';
import 'package:serene_user_app/app_widgets/overlay_loader_widget.dart';

class CardPayment extends StatefulWidget {
  final int bookingId;
  final double amount;
  const CardPayment({
    super.key,
    required this.bookingId,
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
      final PaymentDetails paymentDetails = PaymentDetails(
        bookingId: widget.bookingId,
        amount: widget.amount,
        paymentMethod: "card",
        cardHolderName: _cardNameController.text.trim(),
        cardNumber: _cardNumberController.text.trim(),
        expiryDate: _expiryDateController.text.trim(),
        cvv: _cvvController.text.trim(),
      );

      final MakePaymentBloc makePaymentBloc =
          BlocProvider.of<MakePaymentBloc>(context);

      makePaymentBloc.add(MakePaymentEvent.paymentMade(paymentDetails));
    } else {
      AppHelper.showErrorDialogue(context, "Please fill all card details");
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
                "Card payment successful!",
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
                    onChange: (value) {
                      _cardNameController.value =
                          _cardNameController.value.copyWith(
                        text: value?.toUpperCase(), // Convert to uppercase
                        selection: TextSelection.collapsed(
                          offset: value!.length, // Keep cursor at the end
                        ),
                      );
                    },
                  ),
                  const SizedBox(height: 16),
                  NormalTextField(
                    textEditingController: _cardNumberController,
                    validatorFunction: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter the card number';
                      }

                      if (value.length != 16) {
                        return 'Card number must have only 16 digits';
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
                        child: ExpiryDateField(
                          controller: _expiryDateController,
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

                            if (value.length != 3) {
                              return 'CVV must have only 3 digits';
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
          ),
        );
      },
    );
  }
}
