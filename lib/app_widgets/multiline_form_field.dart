// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'package:flutter/material.dart';

class MultilineFormField extends StatelessWidget {
  const MultilineFormField({
    super.key,
    required this.feedbackController,
    required this.hintText,
    required this.labelText,
    this.validatorFunction,
    this.prefixIcon,
  });

  final TextEditingController feedbackController;
  final String hintText;
  final String labelText;
  final String? Function(String?)? validatorFunction;
  final Icon? prefixIcon;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: feedbackController,
      maxLines: 5,
      decoration: InputDecoration(
        hintText: hintText,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        labelText: labelText,
        prefixIcon: prefixIcon,
      ),
      validator: validatorFunction,
    );
  }
}
