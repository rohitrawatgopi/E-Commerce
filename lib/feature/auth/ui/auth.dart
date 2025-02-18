import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:gap/gap.dart';
import 'package:myshop/constant/image.dart';
import 'package:myshop/feature/auth/ui/forgot.dart';
import 'package:myshop/feature/onboarding/ui/visual.dart';
import 'package:myshop/widget/backbtn.dart';
import 'package:myshop/widget/forgottext.dart';
import 'package:myshop/widget/head.dart';
import 'package:myshop/widget/iconbt.dart';
import 'package:myshop/widget/loginbtn.dart';
import 'package:myshop/widget/textform.dart';

class AuthScreen extends StatefulWidget {
  AuthScreen({super.key});

  @override
  State<AuthScreen> createState() => _AuthScreenState();
}

class _AuthScreenState extends State<AuthScreen> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _nameController = TextEditingController();
  bool isLogin = false;
  final GlobalKey<FormState> _key = GlobalKey<FormState>();

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    _nameController.dispose();
    super.dispose(); // Ensure proper cleanup
  }

  @override
  Widget build(BuildContext context) {
    final Size mq = MediaQuery.of(context).size;

    return GestureDetector(
      onTap: () => FocusScope.of(context)
          .unfocus(), // Dismiss keyboard when tapping outside
      child: AnnotatedRegion<SystemUiOverlayStyle>(
        value:
            SystemUiOverlayStyle(systemNavigationBarColor: Color(0xFF222222)),
        child: Scaffold(
          resizeToAvoidBottomInset: false,
          appBar: AppBar(
              leading: isLogin
                  ? InkWell(
                      onTap: () {
                        isLogin = !isLogin;
                        setState(() {});
                      },
                      child: AppBackButton())
                  : Text("")),
          body: SafeArea(
            child: SingleChildScrollView(
              child: Form(
                key: _key,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    isLogin
                        ? AppTitle(title: "Login")
                        : AppTitle(title: "Sign up"),
                    Gap(100),
                    if (!isLogin)
                      AppTextForm(
                        null,
                        _nameController.text.length >= 6
                            ? Image(
                                image: AssetImage(AppImages.checkImage),
                                height: 10,
                                width: 10,
                              )
                            : null,
                        controller: _nameController,
                        hintText: "Name",
                        textInputType: TextInputType.text,
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please enter your name';
                          } else if (value.length < 6) {
                            return "Please Enter At least 6 characters";
                          }
                          return null;
                        },
                        onChanged: (s) {
                          setState(() {}); // Reactively update UI
                        },
                      ),
                    Gap(10),
                    AppTextForm(
                      null,
                      null,
                      controller: _emailController,
                      hintText: "Email",
                      textInputType: TextInputType.emailAddress,
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter your email';
                        } else if (!value.contains("@gmail.com")) {
                          return "Enter valid email address";
                        }
                        return null;
                      },
                      onChanged: (d) {},
                    ),
                    Gap(10),
                    AppTextForm(
                      null,
                      null,
                      controller: _passwordController,
                      hintText: "Password",
                      textInputType: TextInputType.emailAddress,
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter Password';
                        } else if (value.length < 6) {
                          return "Password must be greater than 6 characters";
                        }
                        return null;
                      },
                      onChanged: (d) {},
                    ),
                    Gap(14),
                    Container(
                        margin: !isLogin
                            ? EdgeInsets.only(left: mq.width * 0.45)
                            : EdgeInsets.only(
                                left: mq.width * 0.5), // Responsive margin
                        child: isLogin
                            ? Row(
                                children: [
                                  InkWell(
                                    onTap: () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  ForgotPasswordScreen()));
                                    },
                                    child: AppForgotText(
                                        text: "Forgot your password?"),
                                  ),
                                  Image.asset(
                                    AppImages.forwardArrow,
                                    width: 20,
                                    height: 20,
                                  ),
                                ],
                              )
                            : Row(
                                children: [
                                  InkWell(
                                    onTap: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) =>
                                              ForgotPasswordScreen(),
                                        ),
                                      );
                                    },
                                    child: InkWell(
                                      onTap: () => setState(() {
                                        isLogin = !isLogin;
                                      }),
                                      child: AppForgotText(
                                          text: "Already have an account?"),
                                    ),
                                  ),
                                  Gap(3),
                                  Image.asset(
                                    AppImages.forwardArrow,
                                    width: 20,
                                    height: 20,
                                  ),
                                ],
                              )),
                    isLogin
                        ? AppPrimaryButton(
                            buttonName: "Login",
                            callback: () {
                              if (_key.currentState!.validate()) {
                                // Implement login functionality here
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            VisualSearchScreen()));
                              }
                            },
                          )
                        : AppPrimaryButton(
                            buttonName: "SIGN UP",
                            callback: () {
                              if (_key.currentState!.validate()) {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            VisualSearchScreen()));
                              }
                            },
                          ),
                    Gap(80),
                    Container(
                      margin: EdgeInsets.only(
                          left: mq.width * 0.2), // Responsive margin
                      child: InkWell(
                        onTap: () {
                          setState(() {
                            isLogin = !isLogin;
                          });
                        },
                        child: Text(
                          textAlign: TextAlign.center,
                          "Or sign up with social account",
                          style:
                              TextStyle(color: Color(0xFF222222), fontSize: 14),
                        ),
                      ),
                    ),
                    Gap(14),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        IconBtn(onPressed: () {}, image: AppImages.googleImage),
                        Gap(14),
                        IconBtn(
                            onPressed: () {}, image: AppImages.facebookImage),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
