import 'package:flutter/material.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField({
    Key? key,
    required this.controller,
    required this.labelText,
    this.validator,
    this.autofocus = false,
  }) : super(key: key);

  final TextEditingController controller;
  final String labelText;
  final bool autofocus;
  final String? Function(String?)? validator;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      autofocus: autofocus,
      controller: controller,
      decoration: InputDecoration(
        labelText: labelText,
      ),
      validator: validator,
    );
  }
}
