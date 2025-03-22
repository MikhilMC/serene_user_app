import 'package:flutter/material.dart';

import 'package:serene_user_app/app_constants/app_colors.dart';
import 'package:serene_user_app/app_modules/booking_module/widget/booking_details_card.dart';
import 'package:serene_user_app/app_modules/payment_module/view/payment_screen.dart';
import 'package:serene_user_app/app_widgets/custom_button.dart';
import 'package:serene_user_app/app_widgets/select_date_field.dart';

class BookingScreen extends StatefulWidget {
  final String hostName;
  final double rate;

  const BookingScreen({
    super.key,
    required this.hostName,
    required this.rate,
  });

  @override
  State<BookingScreen> createState() => _BookingScreenState();
}

class _BookingScreenState extends State<BookingScreen> {
  final _formKey = GlobalKey<FormState>();
  DateTime? _startDate;
  DateTime? _endDate;
  int _numberOfPersons = 1;

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
    if (_startDate == null || _endDate == null) return 0;
    final days = _endDate!.difference(_startDate!).inDays;
    return days;
  }

  double get _totalRate {
    return widget.rate * _numberOfPersons * _numberOfDays;
  }

  double get _platformFee {
    return _totalRate * 0.1;
  }

  void _confirmBooking() {
    if (_totalRate != 0) {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => PaymentScreen(
            amount: _totalRate,
            platformFee: _platformFee,
          ),
        ),
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
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text("Ending date cannot be before the starting date."),
        ),
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
        title: Text(
          "Add Booking Form",
        ),
      ),
      body: Padding(
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
                firstDate: DateTime.now(), // Ensure this is correct
                lastDate: DateTime.now()
                    .add(Duration(days: 365)), // Ensure this is correct
                onValueChange: _adjustStartDate,
              ),

              const SizedBox(height: 16.0),
              SelectDateField(
                labelText: "Ending Date",
                hintText: "Enter ending date",
                value: _endDate,
                firstDate:
                    _startDate ?? DateTime.now(), // Ensure this is correct
                lastDate: _startDate != null
                    ? _startDate!.add(Duration(days: 365))
                    : DateTime.now()
                        .add(Duration(days: 365)), // Ensure this is correct
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
                          controller:
                              TextEditingController(text: '$_numberOfPersons'),
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

              // Booking Details Card
              BookingDetailsCard(
                numberOfDays: _numberOfDays,
                rate: widget.rate,
                totalRate: _totalRate,
                platformFee: _platformFee,
              ),

              // Submit Button
              CustomButton(
                buttonWidth: double.infinity,
                backgroundColor: AppColors.firstColor,
                textColor: Colors.white,
                labelText: "Add Booking",
                onClick: _confirmBooking,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
