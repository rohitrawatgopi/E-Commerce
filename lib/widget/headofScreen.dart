import 'package:flutter/material.dart';
import 'package:myshop/style/text.dart';

class HeadOfDress extends StatelessWidget {
  final String head1;
  final String head2;
  const HeadOfDress({super.key, required this.head1, required this.head2});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        RichText(
          text: TextSpan(
            children: [
              TextSpan(text: head1, style: AppFontStyle.headBlack5),
              TextSpan(text: head2, style: AppFontStyle.Font12Grey200)
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            "view all",
            style: AppFontStyle.Font16BlackNormal,
          ),
        ),
      ],
    );
  }
}
