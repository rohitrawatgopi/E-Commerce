import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:myshop/constant/image.dart';
import 'package:myshop/feature/onboarding/ui/findingresult.dart';
import 'package:myshop/style/text.dart';

class SearchPhotoScreen extends StatelessWidget {
  const SearchPhotoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion(
      value: SystemUiOverlayStyle(systemNavigationBarColor: Color(0xffF9F9F9)),
      child: Scaffold(
        appBar: AppBar(
          leading: BackButton(),
          title: Text(
            " Search Taking a photo",
            style: AppFontStyle.Font18Black600,
          ),
        ),
        body: Column(
          children: [
            Expanded(
              flex: 4,
              child: Container(
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage(
                          AppImages.image2Image,
                        ),
                        fit: BoxFit.cover)),
              ),
            ),
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Image.asset(
                    AppImages.vectorImage,
                    height: 24,
                    width: 24,
                  ),
                  InkWell(
                    onDoubleTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => FindingResultScreen()));
                    },
                    child: Image.asset(
                      AppImages.cameraImage,
                      height: 50,
                      width: 50,
                    ),
                  ),
                  Image.asset(
                    AppImages.reversImage,
                    height: 24,
                    width: 24,
                  ),
                ],
              ),
              flex: 1,
            )
          ],
        ),
      ),
    );
  }
}
