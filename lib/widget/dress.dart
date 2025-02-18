import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:myshop/widget/customdressbtw.dart';

class DressWidget extends StatelessWidget {
  final String imageSrc;
  const DressWidget({super.key, required this.imageSrc});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 155,
      margin: EdgeInsets.only(right: 10),
      child: Stack(
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 200,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(2),
                  image: DecorationImage(
                    image: AssetImage(imageSrc),
                    fit: BoxFit.cover,
                  ),
                ),
                child: Align(
                    alignment: Alignment.topLeft,
                    child: AppDressButton(onPressed: () {})),
              ),
              RatingBarIndicator(
                rating: 2,
                itemCount: 5,
                itemSize: 19.0,
                physics: const BouncingScrollPhysics(),
                itemBuilder: (context, _) => const Icon(
                  Icons.star,
                  color: Colors.amber,
                ),
              ),
              const Text(
                "Dorothy Perkins",
                style: TextStyle(
                  color: Color(0xFF9B9B9B),
                  fontSize: 13,
                  fontFamily: "FontMain1",
                ),
              ),
              const Text(
                "Evening Dress",
                style: TextStyle(
                    color: Color(0xFF222222),
                    fontSize: 16,
                    fontFamily: "FontMain1",
                    fontWeight: FontWeight.w800),
              ),
              RichText(
                text: const TextSpan(
                  children: [
                    TextSpan(
                      text: "15\$  ",
                      style: TextStyle(
                          color: Color(0xff9B9B9B),
                          fontWeight: FontWeight.w600,
                          fontSize: 14),
                    ),
                    TextSpan(
                      text: " 20\$",
                      style: TextStyle(
                          color: Color(0xFFDB3022),
                          decoration: TextDecoration.lineThrough,
                          fontWeight: FontWeight.w600,
                          fontSize: 14),
                    ),
                  ],
                ),
              ),
            ],
          ),
          Positioned(
            top: 176,
            right: -15,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                shape: CircleBorder(),
                padding: EdgeInsets.all(2), // Adjust size
                // Background color
              ),
              onPressed: () {},
              child: Icon(
                Icons.favorite_outline,
                size: 30, // Icon size
                // Icon color
                color: Colors.grey,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
