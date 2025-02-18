import 'package:flutter/material.dart';
import 'package:myshop/constant/image.dart';
import 'package:myshop/style/text.dart';

class MybagScreen extends StatelessWidget {
  const MybagScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [Icon(Icons.search)],
      ),
      body: Column(
        children: [
          Text(
            "MyBag",
            style: AppFontStyle.Font34BlackBold,
          ),
          Container(
            height: 80,
            width: double.infinity,
            child: Row(
              children: [
                Image.asset(AppImages.image2Image),
                Column(
                  children: [
                    Text(
                      "Pullover ",
                      style: AppFontStyle.Font16Black500,
                    ),
                    RichText(
                        text: TextSpan(children: [
                      TextSpan(
                          text: "Color:",
                          style: AppFontStyle.Font14GreynNormal),
                      TextSpan(text: "Black    "),
                      TextSpan(
                          text: "Size:", style: AppFontStyle.Font14GreynNormal),
                      TextSpan(text: "L"),
                    ])),
                    Row(
                      children: [
                        ElevatedButton(
                            style:
                                ElevatedButton.styleFrom(shape: CircleBorder()),
                            onPressed: () {},
                            child: Text("-")),
                        Text("1"),
                        ElevatedButton(
                            style:
                                ElevatedButton.styleFrom(shape: CircleBorder()),
                            onPressed: () {},
                            child: Text("+")),
                        Text("51\$")
                      ],
                    )
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
