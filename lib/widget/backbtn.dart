import 'package:flutter/material.dart';

class AppBackButton extends StatelessWidget {
  const AppBackButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 14, bottom: 11),
      width: 375,
      height: 44,
      child: Icon(Icons.arrow_back_ios),
      alignment: Alignment.bottomLeft,
    );
  }
}
