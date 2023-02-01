import 'package:flutter/material.dart';

class CustomElevatedButton extends StatelessWidget {
  const CustomElevatedButton({
    Key? key,
    required this.buttonText,
    this.onPressed,
    this.minimalButtonHeight = 40,
  }) : super(key: key);

  final String buttonText;
  final Function()? onPressed;
  final double minimalButtonHeight;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        minimumSize: Size.fromHeight(minimalButtonHeight),
      ),
      onPressed: onPressed,
      child: Text(buttonText),
    );
  }
}
