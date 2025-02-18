import 'package:flutter/material.dart';

class DressButton extends StatelessWidget {
  final Color? backgroundColor;

  const DressButton({super.key, required this.backgroundColor});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {},
      style: ElevatedButton.styleFrom(
        backgroundColor: backgroundColor,
      ),
      child: const Text(
        '-2s0%',
        style: TextStyle(
            fontSize: 5,
            fontWeight: FontWeight.w600,
            fontFamily: "FontMain1",
            color: Colors.white),
      ),
    );
  }
}
