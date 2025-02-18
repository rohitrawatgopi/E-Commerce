import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:myshop/constant/image.dart';
import 'package:myshop/style/text.dart';
import 'package:myshop/widget/navigatonBar.dart';

class FindingResultScreen extends StatefulWidget {
  const FindingResultScreen({super.key});

  @override
  State<FindingResultScreen> createState() => _FindingResultScreenState();
}

class _FindingResultScreenState extends State<FindingResultScreen> {
  @override
  void initState() {
    // TODO: implement initState
    Future.delayed(Duration(seconds: 2), () {
      Navigator.push(context,
          MaterialPageRoute(builder: (context) => BottomNavigatonBarScreen()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion(
      value: SystemUiOverlayStyle(systemNavigationBarColor: Color(0xffF9F9F9)),
      child: Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              AppImages.searchImage,
              height: 62,
              width: 62,
            ),
            Text(
              textAlign: TextAlign.center,
              "Finding similar results...",
              style: AppFontStyle.Font34BlackBold,
            )
          ],
        ),
      ),
    );
  }
}
