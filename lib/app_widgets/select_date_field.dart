import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class SelectDateField extends StatefulWidget {
  final DateTime? value;
  final DateTime firstDate;
  final DateTime lastDate;
  final Function(DateTime) onValueChange;
  final String labelText;
  final String hintText;

  const SelectDateField({
    super.key,
    required this.value,
    required this.firstDate,
    required this.lastDate,
    required this.onValueChange,
    required this.labelText,
    required this.hintText,
  });

  @override
  State<SelectDateField> createState() => _SelectDateFieldState();
}

class _SelectDateFieldState extends State<SelectDateField> {
  Future<void> _selectDate() async {
    try {
      final DateTime? picked = await showDatePicker(
        context: context,
        firstDate: widget.firstDate,
        lastDate: widget.lastDate,
      );

      if (picked != null && picked != widget.value) {
        widget.onValueChange(picked);
      }
    } catch (e) {
      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text("Error: ${e.toString()}"),
          ),
        );
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        // print("Date field tapped"); // Debugging
        _selectDate();
      },
      child: InputDecorator(
        decoration: InputDecoration(
          border: OutlineInputBorder(),
          suffixIcon: Icon(Icons.calendar_today),
          hintText: widget.hintText,
          labelText: widget.labelText,
        ),
        child: Text(
          widget.value == null
              ? widget.hintText
              : DateFormat('dd-MM-yyyy').format(widget.value!),
          style: const TextStyle(fontSize: 16),
        ),
      ),
    );
  }
}
