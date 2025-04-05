// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:serene_user_app/app_constants/app_colors.dart';
import 'package:serene_user_app/app_modules/booking_module/bloc/update_booking_bloc/update_booking_bloc.dart';
import 'package:serene_user_app/app_modules/booking_module/class/update_property_booking_details.dart';
import 'package:serene_user_app/app_modules/booking_module/widget/booking_details_card.dart';
import 'package:serene_user_app/app_modules/home_screen_module/view/home_screen.dart';
import 'package:serene_user_app/app_modules/payment_module/view/payment_screen.dart';
import 'package:serene_user_app/app_utils/app_helper.dart';
import 'package:serene_user_app/app_widgets/custom_button.dart';
import 'package:serene_user_app/app_widgets/overlay_loader_widget.dart';
import 'package:serene_user_app/app_widgets/select_date_field.dart';

class BookingUpdateScreen extends StatefulWidget {
  final String hostName;
  final double rate;
  final double platformFee;
  final int bookingId;
  final int numberOfPersons;
  final DateTime startingDate;
  final DateTime endingDate;
  const BookingUpdateScreen({
    super.key,
    required this.hostName,
    required this.rate,
    required this.platformFee,
    required this.bookingId,
    required this.numberOfPersons,
    required this.startingDate,
    required this.endingDate,
  });

  @override
  State<BookingUpdateScreen> createState() => _BookingUpdateScreenState();
}

class _BookingUpdateScreenState extends State<BookingUpdateScreen> {
  final _formKey = GlobalKey<FormState>();
  late double _previousTotalCost;
  DateTime? _startDate;
  DateTime? _endDate;
  int _numberOfPersons = 1;

  @override
  void initState() {
    super.initState();
    setState(() {
      _startDate = widget.startingDate;
      _endDate = widget.endingDate;
      _numberOfPersons = widget.numberOfPersons;
      _previousTotalCost = widget.numberOfPersons *
          widget.rate *
          widget.endingDate.difference(widget.startingDate).inDays;
    });
  }

  void _incrementPersons() {
    setState(() {
      _numberOfPersons++;
    });
  }

  void _decrementPersons() {
    if (_numberOfPersons > 1) {
      setState(() {
        _numberOfPersons--;
      });
    }
  }

  int get _numberOfDays {
    final days = _endDate!.difference(_startDate!).inDays;
    return days;
  }

  double get _totalRate {
    return widget.rate * _numberOfPersons * _numberOfDays;
  }

  double get _platformFee {
    return _totalRate * 0.1;
  }

  bool _isDatesSame(DateTime date1, DateTime date2) {
    return date1.year == date2.year &&
        date1.month == date2.month &&
        date1.day == date2.day;
  }

  void _confirmBooking() {
    if (_totalRate != 0) {
      final double currentRate = _totalRate - _previousTotalCost;
      final UpdatePropertyBookingDetails bookingDetails =
          UpdatePropertyBookingDetails(
        bookingId: widget.bookingId,
        totalCost: _totalRate,
        startDate:
            !_isDatesSame(widget.startingDate, _startDate!) ? _startDate : null,
        endDate: !_isDatesSame(widget.endingDate, _endDate!) ? _endDate : null,
        numberOfGuests: widget.numberOfPersons != _numberOfPersons
            ? _numberOfPersons
            : null,
        platformFee:
            _platformFee > widget.platformFee ? currentRate * 0.1 : null,
        refundAmount: currentRate < 0 ? _previousTotalCost - _totalRate : null,
      );

      final UpdateBookingBloc updateBookingBloc =
          BlocProvider.of<UpdateBookingBloc>(context);

      updateBookingBloc.add(UpdateBookingEvent.bookingUpdated(bookingDetails));
    } else {
      AppHelper.showErrorDialogue(
        context,
        "Total cost can not be zero.",
      );
    }
  }

  void _adjustStartDate(DateTime newStartDate) {
    setState(() {
      _startDate = newStartDate;
      // if (_endDate != null && _endDate!.isBefore(newStartDate)) {
      //   _endDate = newStartDate;
      // }
    });
  }

  void _adjustEndDate(DateTime newEndDate) {
    if (_startDate != null && newEndDate.isBefore(_startDate!)) {
      AppHelper.showErrorDialogue(
        context,
        "Ending date cannot be before the starting date.",
      );
      return;
    }

    setState(() {
      _endDate = newEndDate;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Update Booking Form"),
      ),
      body: BlocConsumer<UpdateBookingBloc, UpdateBookingState>(
        listener: (context, state) {
          state.whenOrNull(
            loading: () {},
            success: (response) {
              if (response.status == "success") {
                final double currentRate = _totalRate - _previousTotalCost;
                if (currentRate < 0) {
                  AppHelper.showCustomSnackBar(
                    context,
                    "The remaining amount will be transferred to your account in 5 to 10 working days.",
                  );
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (context) => HomeScreen(),
                    ),
                  );
                } else {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => PaymentScreen(
                        bookingId: widget.bookingId,
                        amount: currentRate,
                        platformFee: currentRate * 0.1,
                      ),
                    ),
                  );
                }
              } else {
                AppHelper.showErrorDialogue(
                  context,
                  "Update Booking Failed",
                );
              }
            },
            failure: (errorMessage) => AppHelper.showErrorDialogue(
              context,
              "Update Booking Failed: $errorMessage",
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
            childWidget: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Form(
                key: _formKey,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Host Name
                    Text(
                      'Host: ${widget.hostName}',
                      style: const TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 16.0),

                    SelectDateField(
                      labelText: "Starting Date",
                      hintText: "Enter starting date",
                      value: _startDate,
                      firstDate: widget.startingDate,
                      lastDate: widget.startingDate.add(Duration(days: 365)),
                      onValueChange: _adjustStartDate,
                    ),

                    const SizedBox(height: 16.0),
                    SelectDateField(
                      labelText: "Ending Date",
                      hintText: "Enter ending date",
                      value: _endDate,
                      firstDate: _startDate ??
                          widget.startingDate, // Ensure this is correct
                      lastDate: _startDate != null
                          ? _startDate!.add(Duration(days: 365))
                          : widget.startingDate.add(
                              Duration(days: 365)), // Ensure this is correct
                      onValueChange: _adjustEndDate,
                    ),
                    const SizedBox(height: 16.0),

                    // Number of Persons
                    Card(
                      elevation: 4,
                      margin: const EdgeInsets.symmetric(vertical: 8.0),
                      child: Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Text(
                              'Number of Persons:',
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            const SizedBox(width: 16.0),
                            // Decrement Button
                            IconButton(
                              icon: const Icon(Icons.remove),
                              onPressed: _decrementPersons,
                              style: IconButton.styleFrom(
                                backgroundColor: AppColors.firstColor,
                                foregroundColor: Colors.white,
                              ),
                            ),
                            const SizedBox(width: 8.0),
                            // TextFormField to display the number of persons
                            SizedBox(
                              width: 60, // Adjust the width as needed
                              child: TextFormField(
                                textAlign: TextAlign.center,
                                readOnly: true, // Make the field read-only
                                controller: TextEditingController(
                                    text: '$_numberOfPersons'),
                                decoration: const InputDecoration(
                                  border: OutlineInputBorder(),
                                  contentPadding:
                                      EdgeInsets.symmetric(vertical: 12.0),
                                ),
                                style: const TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                            const SizedBox(width: 8.0),
                            // Increment Button
                            IconButton(
                              icon: const Icon(Icons.add),
                              onPressed: _incrementPersons,
                              style: IconButton.styleFrom(
                                backgroundColor: AppColors.firstColor,
                                foregroundColor: Colors.white,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(height: 16.0),

                    BookingDetailsCard(
                      numberOfDays: _numberOfDays,
                      rate: widget.rate,
                      totalRate: _totalRate,
                      platformFee: _platformFee,
                    ),

                    const SizedBox(height: 16.0),

                    // Submit Button
                    CustomButton(
                      buttonWidth: double.infinity,
                      backgroundColor: AppColors.firstColor,
                      textColor: Colors.white,
                      labelText: "Update Booking",
                      onClick: _confirmBooking,
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
