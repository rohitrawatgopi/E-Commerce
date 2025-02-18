// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class AppDressButton extends StatelessWidget {
  final VoidCallback onPressed;
  Color? color;
  AppDressButton({Key? key, required this.onPressed, this.color = Colors.red})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Container(
        height: 25,
        width: 39,
        margin: EdgeInsets.all(8),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12), color: color),
        child: Center(
          child: Text(
            "-20%",
            style: TextStyle(
                fontSize: 11,
                fontWeight: FontWeight.w600,
                fontFamily: "FontMain1",
                color: Colors.white),
          ),
        ),
      ),
    );
  }
}
