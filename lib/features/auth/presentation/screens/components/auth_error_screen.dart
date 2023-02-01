import 'package:flutter/material.dart';

class AuthErrorScreen extends StatelessWidget {
  const AuthErrorScreen({
    Key? key,
    required this.error,
  }) : super(key: key);

  final String error;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(error.toString()),
      ],
    );
  }
}
