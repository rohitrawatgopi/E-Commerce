import 'package:flutter/material.dart';
import 'package:myshop/style/text.dart';

class AppTitle extends StatelessWidget {
  final String title;
  const AppTitle({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 14, top: 14),
      child: Text(title, style: AppFontStyle.Font34BlackBold),
    );
  }
}
