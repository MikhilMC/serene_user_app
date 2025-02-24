import 'package:flutter/material.dart';

import 'package:serene_user_app/app_constants/app_colors.dart';
import 'package:serene_user_app/app_modules/home_screen_module/view/home_screen.dart';
import 'package:serene_user_app/app_modules/payment_module/view/payment_screen.dart';
import 'package:serene_user_app/app_widgets/custom_button.dart';
import 'package:serene_user_app/app_widgets/select_date_field.dart';

class BookingScreen extends StatefulWidget {
  final String hostName;
  final double rate;
  final bool isUpdateBooking;
  final int? bookingId;
  final int? numberOfPersons;
  final DateTime? startingDate;
  final DateTime? endingDate;
  const BookingScreen({
    super.key,
    required this.hostName,
    required this.rate,
    required this.isUpdateBooking,
    this.bookingId,
    this.numberOfPersons,
    this.startingDate,
    this.endingDate,
  });

  @override
  State<BookingScreen> createState() => _BookingScreenState();
}

class _BookingScreenState extends State<BookingScreen> {
  final _formKey = GlobalKey<FormState>();
  DateTime? _startDate;
  DateTime? _endDate;
  int _numberOfPersons = 1;

  @override
  void initState() {
    super.initState();
    if (widget.isUpdateBooking &&
        widget.startingDate != null &&
        widget.endingDate != null &&
        widget.numberOfPersons != null) {
      setState(() {
        _startDate = widget.startingDate;
        _endDate = widget.endingDate;
        _numberOfPersons = widget.numberOfPersons!;
      });
    }
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
    if (_startDate == null || _endDate == null) return 0;
    final days = _endDate!.difference(_startDate!).inDays;
    return days;
  }

  double get _totalRate {
    if (_startDate == null || _endDate == null) return 0.0;
    final days = _endDate!.difference(_startDate!).inDays;
    return widget.rate * _numberOfPersons * days;
  }

  void _confirmBooking() {
    if (_totalRate != 0) {
      if (!widget.isUpdateBooking) {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => PaymentScreen(
              amount: _totalRate,
            ),
          ),
        );
      } else {
        final double currentRate = _totalRate -
            (widget.rate *
                widget.numberOfPersons! *
                (widget.endingDate!.difference(widget.startingDate!)).inDays);
        if (currentRate < 0) {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: Text(
                "The remaining amount will be transferred to your account in 5 to 10 working days.",
              ),
            ),
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
                amount: _totalRate -
                    (widget.numberOfPersons! * widget.rate * _numberOfDays),
              ),
            ),
          );
        }
      }
    }
  }

  void _adjustStartDate(DateTime newStartDate) {
    if (newStartDate.isBefore(DateTime.now())) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text("Starting date cannot be earlier than today."),
        ),
      );
      return;
    }

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
          '${widget.isUpdateBooking ? "Update" : "Add"} Booking Form',
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
                firstDate: widget.startingDate != null
                    ? _startDate!
                    : DateTime.now(), // Ensure this is correct
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
                lastDate: DateTime.now()
                    .add(Duration(days: 365)), // Ensure this is correct
                onValueChange: _adjustEndDate,
              ),
              const SizedBox(height: 16.0),

              // Number of Persons
              Row(
                children: [
                  const Text(
                    'Number of Persons:',
                    style: TextStyle(
                      fontSize: 16,
                    ),
                  ),
                  const SizedBox(width: 16.0),
                  IconButton(
                    icon: const Icon(Icons.remove),
                    onPressed: _decrementPersons,
                  ),
                  Text(
                    '$_numberOfPersons',
                    style: const TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  IconButton(
                    icon: const Icon(Icons.add),
                    onPressed: _incrementPersons,
                  ),
                ],
              ),
              const SizedBox(height: 16.0),

              // Number of days
              Text(
                'Number of days: $_numberOfDays',
                style: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
              const SizedBox(height: 24.0),

              // Rate per day per person
              Text(
                'Rate per day for a single person: ₹${widget.rate.toStringAsFixed(2)}',
                style: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
              const SizedBox(height: 24.0),

              // Total Rate
              Text(
                'Total Rate: ₹${_totalRate.toStringAsFixed(2)}',
                style: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.green,
                ),
              ),
              const SizedBox(height: 24.0),

              // Submit Button
              CustomButton(
                buttonWidth: double.infinity,
                backgroundColor: AppColors.firstColor,
                textColor: Colors.white,
                labelText:
                    "${widget.isUpdateBooking ? "Update" : "Add"} Booking",
                onClick: _confirmBooking,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
