import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class SelectDateField extends StatefulWidget {
  final DateTime? value;
  final DateTime firstDate;
  final DateTime lastDate;
  final Function(DateTime) onValueChange;
  final String labelText;
  final String hintText;
  final String? Function(DateTime?)? validator;

  const SelectDateField({
    super.key,
    required this.value,
    required this.firstDate,
    required this.lastDate,
    required this.onValueChange,
    required this.labelText,
    required this.hintText,
    this.validator,
  });

  @override
  State<SelectDateField> createState() => _SelectDateFieldState();
}

class _SelectDateFieldState extends State<SelectDateField> {
  Future<void> _selectDate() async {
    try {
      final DateTime? picked = await showDatePicker(
        context: context,
        initialDate: widget.value ?? DateTime.now(),
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
    return FormField<DateTime>(
      initialValue: widget.value,
      validator: widget.validator,
      builder: (FormFieldState<DateTime> state) {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            InkWell(
              onTap: _selectDate,
              child: InputDecorator(
                decoration: InputDecoration(
                  border: const OutlineInputBorder(),
                  suffixIcon: const Icon(Icons.calendar_today),
                  hintText: widget.hintText,
                  labelText: widget.labelText,
                  errorText: state.errorText,
                ),
                child: Text(
                  widget.value == null
                      ? widget.hintText
                      : DateFormat('dd-MM-yyyy').format(widget.value!),
                  style: const TextStyle(fontSize: 16),
                ),
              ),
            ),
            if (state.hasError)
              Padding(
                padding: const EdgeInsets.only(left: 8, top: 4),
                child: Text(
                  state.errorText!,
                  style: TextStyle(
                    color: Theme.of(context).colorScheme.error,
                    fontSize: 12,
                  ),
                ),
              ),
          ],
        );
      },
    );
  }
}
