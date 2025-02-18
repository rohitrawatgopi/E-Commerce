// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:myshop/style/text.dart';

class AppPrimaryButton extends StatelessWidget {
  final String buttonName;
  final VoidCallback callback;
  const AppPrimaryButton({
    Key? key,
    required this.buttonName,
    required this.callback,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.all(16),
        height: 48,
        width: 343,
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(backgroundColor: Color(0xFFDB3022)),
          onPressed: callback,
          child: Text(buttonName, style: AppFontStyle.Font14WhiteNormal),
        ));
  }
}
