import 'package:flutter/material.dart';

class ScaffoldWithPadding24 extends StatelessWidget {
  const ScaffoldWithPadding24({
    Key? key,
    required this.child,
    this.resizeToAvoidBottomInset = true,
    this.horizontalPadding = 24.0,
    this.verticalPadding = 0,
  }) : super(key: key);

  final Widget child;
  final bool resizeToAvoidBottomInset;
  final double horizontalPadding;
  final double verticalPadding;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: resizeToAvoidBottomInset,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: horizontalPadding,
            vertical: verticalPadding
          ),
          child: child,
        ),
      ),
    );
  }
}
