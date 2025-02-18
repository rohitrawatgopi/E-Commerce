import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:myshop/constant/image.dart';
import 'package:myshop/feature/onboarding/ui/searchphoto.dart';
import 'package:myshop/style/text.dart';
import 'package:myshop/widget/backbtn.dart';
import 'package:myshop/widget/loginbtn.dart';

class VisualSearchScreen extends StatelessWidget {
  const VisualSearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion(
      value: SystemUiOverlayStyle(systemNavigationBarColor: Color(0xffF9F9F9)),
      child: Scaffold(
        appBar: AppBar(
          leading: AppBackButton(),
          title: Text("Visual Search", style: AppFontStyle.Font18Black800),
          centerTitle: true,
        ),
        body: Container(
          height: double.infinity,
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Text(
                    textAlign: TextAlign.start,
                    "Search for an outfit by taking a photo or uploading an image",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 24,
                        fontFamily: "FontMain1",
                        fontWeight: FontWeight.w600)),
              ),
              AppPrimaryButton(
                  buttonName: "TAKE A PHOTO",
                  callback: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => SearchPhotoScreen()));
                  }),
              Container(
                  margin: EdgeInsets.symmetric(horizontal: 16),
                  padding: EdgeInsets.only(top: 9),
                  width: 343,
                  height: 43,
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.white),
                      borderRadius: BorderRadius.circular(24)),
                  child: Text(
                    textAlign: TextAlign.center,
                    "UPLOAD AN IMAGE",
                    style: AppFontStyle.Font14WhiteNormal,
                  )),
            ],
          ),
          decoration: BoxDecoration(
              image: DecorationImage(image: AssetImage(AppImages.image1Image))),
        ),
      ),
    );
  }
}
