// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:serene_user_app/app_constants/app_colors.dart';
import 'package:serene_user_app/app_modules/payment_module/widget/card_payment.dart';
import 'package:serene_user_app/app_modules/payment_module/widget/cash_on_arrival.dart';
import 'package:serene_user_app/app_modules/payment_module/widget/google_pay.dart';
import 'package:serene_user_app/app_widgets/custom_button.dart';

class PaymentScreen extends StatefulWidget {
  final int bookingId;
  final double amount;
  final double platformFee;
  const PaymentScreen({
    super.key,
    required this.bookingId,
    required this.amount,
    required this.platformFee,
  });

  @override
  State<PaymentScreen> createState() => _PaymentScreenState();
}

class _PaymentScreenState extends State<PaymentScreen> {
  String? selectedBank;
  final List<Map<String, String>> banks = [
    {
      'name': 'Cash on Arrival',
      'image': 'assets/icons/icons8-cash-on-delivery-64.png',
    },
    {
      'name': 'Google Pay',
      'image': 'assets/icons/icons8-google-pay-48.png',
    },
    {
      'name': 'Credit/Debit Cards',
      'image': 'assets/icons/icons8-credit-card-48.png',
    },
  ];
  late TextEditingController pricecontroller;

  @override
  void initState() {
    super.initState();
    selectedBank = banks.isNotEmpty ? banks.first['name'] : null;
    final amount = widget.amount + widget.platformFee;
    pricecontroller = TextEditingController(text: amount.toString());
  }

  @override
  void dispose() {
    pricecontroller.dispose();
    super.dispose();
  }

  void _makePayment() {
    // Open a bottom sheet based on the selected payment method
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      builder: (context) {
        switch (selectedBank) {
          case "Cash on Arrival":
            return CashOnArrival(
              bookingId: widget.bookingId,
              amount: widget.amount + widget.platformFee,
            );
          case "Google Pay":
            return GooglePay(
              bookingId: widget.bookingId,
              amount: widget.amount + widget.platformFee,
            );
          default:
            return CardPayment(
              bookingId: widget.bookingId,
              amount: widget.amount + widget.platformFee,
            );
        }
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(
      context,
      designSize: const Size(375, 812),
      minTextAdapt: true,
    );

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          "Payment Option",
          style: TextStyle(
            fontSize: 18.sp,
            color: Colors.black,
          ),
        ),
        centerTitle: true,
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: Icon(
            Icons.arrow_back,
            size: 20.sp,
            color: Colors.black,
          ),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextField(
              controller: pricecontroller,
              textAlign: TextAlign.center,
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(
                border: InputBorder.none,
                hintText: '₹0',
              ),
              style: TextStyle(fontSize: 70.sp),
              readOnly: true,
            ),
            SizedBox(height: 20.h),
            const Spacer(),
            Card(
              elevation: 4,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.r),
              ),
              child: Padding(
                padding: EdgeInsets.all(16.w),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Choose Your transaction method",
                      style: TextStyle(
                        fontSize: 12.sp,
                        fontWeight: FontWeight.bold,
                        color: Colors.grey,
                      ),
                    ),
                    SizedBox(height: 15.h),
                    DropdownButtonFormField<String>(
                      value: selectedBank,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8.r),
                        ),
                        contentPadding: EdgeInsets.symmetric(
                          horizontal: 10.w,
                          vertical: 12.h,
                        ),
                      ),
                      items: banks.map((bank) {
                        return DropdownMenuItem<String>(
                          value: bank['name'],
                          child: Row(
                            children: [
                              Image.asset(
                                bank['image']!,
                                width: 30.w,
                                height: 30.h,
                              ),
                              SizedBox(width: 10.w),
                              Text(
                                bank['name']!,
                                style: TextStyle(fontSize: 14.sp),
                              ),
                            ],
                          ),
                        );
                      }).toList(),
                      onChanged: (String? newValue) {
                        setState(() {
                          selectedBank = newValue;
                        });
                      },
                    ),
                    SizedBox(height: 20.h),
                    if (selectedBank != null) ...[
                      // Add any additional UI elements based on selectedBank if needed
                    ],
                    SizedBox(height: 20.h),
                    CustomButton(
                      buttonWidth: double.infinity,
                      backgroundColor: AppColors.firstColor,
                      textColor: Colors.white,
                      labelText: "Confirm Payment Method",
                      onClick: _makePayment,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
