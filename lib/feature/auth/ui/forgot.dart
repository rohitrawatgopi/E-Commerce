import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:gap/gap.dart';
import 'package:myshop/constant/image.dart';
import 'package:myshop/style/text.dart';
import 'package:myshop/widget/backbtn.dart';
import 'package:myshop/widget/head.dart';
import 'package:myshop/widget/loginbtn.dart';
import 'package:myshop/widget/textform.dart';

class ForgotPasswordScreen extends StatelessWidget {
  ForgotPasswordScreen({super.key});
  final TextEditingController _emailController = TextEditingController();
  final GlobalKey<FormState> _key = GlobalKey<FormState>();
  
  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion(
      value: SystemUiOverlayStyle(systemNavigationBarColor: Color(0xffF9F9F9)),
      child: Scaffold(
        appBar: AppBar(
          leading: InkWell(
              child: AppBackButton(),
              onTap: () {
                Navigator.pop(context);
              }),
        ),
        body: Form(
          key: _key,
          child: Column(
            children: [
              AppTitle(
                title: "Forgot password",
              ),
              Gap(32),
              Padding(
                padding: const EdgeInsets.only(left: 14),
                child: Text(
                  textAlign: TextAlign.start,
                  "Please, enter your email address. You will receive a link to create a new password via email.",
                  style: AppFontStyle.Font16BlackNormal,
                ),
              ),
              Gap(12),
              AppTextForm(
                  null,
                  _emailController.text.length > 6
                      ? Image.asset(
                          AppImages.cameraImage,
                          height: 20,
                          width: 20,
                          scale: 4.5,
                        )
                      : SizedBox(),
                  controller: _emailController,
                  hintText: "Email",
                  textInputType: TextInputType.emailAddress, validator: (val) {
                if (val == null || val.isEmpty) {
                  return "Enter your email";
                } else if (!val.contains("@gmail.com")) {
                  return "Not a valid email address. Should be your@email.com";
                }
                return null;
              }, onChanged: (val) {}),
              Gap(42),
              AppPrimaryButton(
                  buttonName: "SEND",
                  callback: () {
                    if (_key.currentState!.validate()) {}
                  })
            ],
          ),
        ),
      ),
    );
  }
}
