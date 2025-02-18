import 'package:flutter/material.dart';
import 'package:myshop/style/text.dart';
import 'package:myshop/widget/backbtn.dart';

// ignore: must_be_immutable
class CustomAppBar extends StatelessWidget {
  final String title;
  bool isSearch;
  CustomAppBar({super.key, required this.title, this.isSearch = false});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      centerTitle: true,
      leading: AppBackButton(),
      title: Text(
        title,
        style: AppFontStyle.Font18Black800,
      ),
      actions: [isSearch ? Icon(Icons.search) : SizedBox()],
    );
  }
}
