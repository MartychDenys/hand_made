import 'package:flutter/material.dart';

class ShowSnackBar {
  static void show(BuildContext context, [String? text]) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(text ?? 'Tapped'),
        duration: const Duration(seconds: 1),
      ),
    );
  }
}
