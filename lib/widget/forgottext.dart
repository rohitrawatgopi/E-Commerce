import 'package:flutter/material.dart';

class AppForgotText extends StatelessWidget {
  final String text;
  const AppForgotText({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Text(
      textAlign: TextAlign.right,
      text,
      style: TextStyle(color: Color(0xFF222222), fontSize: 14),
    );
  }
}
