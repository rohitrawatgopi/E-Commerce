import 'package:flutter/material.dart';

class AppTextForm extends StatelessWidget {
  final TextEditingController controller;
  final String hintText;
  final TextInputType textInputType;
  final String? Function(String?)? validator;
  final void Function(String)? onChanged;
  final TextStyle? labelStyle;
  final Widget? surrfix;

  const AppTextForm(this.labelStyle, this.surrfix,
      {super.key,
      required this.controller,
      required this.hintText,
      required this.textInputType,
      required this.validator,
      required this.onChanged});

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.only(top: 13),
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Color(0xff000000).withOpacity(.15),
              offset: Offset(0, 2),
              spreadRadius: 0,
              blurRadius: 4,
            ),
          ],
          color: const Color(0xFFFFFFFFF),
        ),
        margin: EdgeInsets.symmetric(horizontal: 15),
        width: double.infinity,
        child: TextFormField(
          validator: validator,
          controller: controller,
          onChanged: onChanged,
          keyboardType: textInputType,
          style: TextStyle(
              color: Color(
                0xFF2D2D2D,
              ),
              fontSize: 14),
          cursorHeight: 20,
          autovalidateMode: AutovalidateMode.onUserInteraction,
          decoration: InputDecoration(
            filled: true,
            fillColor: Colors.white,
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide.none,
              borderRadius: BorderRadius.circular(4),
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide.none,
              borderRadius: BorderRadius.circular(4),
            ),
            errorBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.red),
              borderRadius: BorderRadius.circular(4),
            ),
            border: InputBorder.none,
            contentPadding: EdgeInsets.only(left: 12),
            suffixIcon: surrfix,
            labelText: hintText,
            labelStyle: labelStyle ??
                TextStyle(
                  /// common decoration

                  fontWeight: FontWeight.w500,
                  fontSize: 14,
                  color: Color(0xFF9B9B9B),

                  /// by default decoration .......
                ),
          ),
        ));
  }
}
