import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:gap/gap.dart';
import 'package:myshop/style/text.dart';

class CustomDressWidgetVertical extends StatelessWidget {
  final String imagSrc;
  const CustomDressWidgetVertical({super.key, required this.imagSrc});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 135,
      child: Stack(
        children: [
          Container(
            width: double.infinity,
            height: 115,
            decoration: BoxDecoration(
              color: Colors.white,
            ),
            child: Row(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.only(topLeft: Radius.circular(12)),
                  child: Image.asset(
                    imagSrc,
                    height: 115,
                    width: 104,
                    fit: BoxFit.cover,
                  ),
                ),
                Gap(12),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Pullover",
                      style: AppFontStyle.Font16Black500,
                    ),
                    Text("Mango"),
                    Row(
                      children: [
                        RatingBarIndicator(
                            itemCount: 5,
                            itemSize: 14,
                            rating: 4.3,
                            itemBuilder: (context, index) {
                              return Icon(
                                Icons.star,
                                color: Colors.amber,
                              );
                            }),
                        Text("(3)")
                      ],
                    ),
                    Text("\$${15}")
                  ],
                ),
              ],
            ),
          ),
          Positioned(
              bottom: -1,
              right: -5,
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      minimumSize: Size(0, 40), shape: CircleBorder()),
                  onPressed: () {},
                  child: Icon(
                    Icons.favorite_border_outlined,
                    color: Colors.grey,
                    size: 24,
                  ))),
        ],
      ),
    );
  }
}
