import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:myselfland/screen/auth/login.dart';
import 'package:myselfland/screen/auth/sign_up.dart';
import 'package:myselfland/screen/bottom_bar/bottom_bar.dart';
import 'package:myselfland/utilites/constants.dart';
import 'package:myselfland/utilites/helper.dart';
import 'package:myselfland/widget/custom_button.dart';
import 'package:myselfland/widget/custom_text.dart';
import 'package:myselfland/widget/custom_textfield.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SignIn extends StatefulWidget {
  const SignIn({Key? key}) : super(key: key);

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: SystemUiOverlayStyle(statusBarIconBrightness: Brightness.dark),
      child: Scaffold(
        body: Stack(
          children: [
            Align(
                alignment: Alignment.topRight,
                child: Image.asset(
                  "assets/Group (2).png",
                  color: kSecondaryColor.withOpacity(0.3),
                  height: 90,
                )),
            Container(
              child: ListView(
                children: [
                  SizedBox(
                    height: 30,
                  ),
                  Container(
                    margin: const EdgeInsets.symmetric(horizontal: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Container(
                            child: Image.asset(
                              "assets/logo.png",
                              height: 77,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 40.h,
                        ),
                        Row(
                          children: [
                            InkWell(
                              onTap: () {
                                // Navigator.pop(context);
                              },
                              child: Image.asset(
                                "assets/arrow-left (1).png",
                                height: 25,
                              ),
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            CustomText(
                              title: "Welcome to Myselfland!",
                              fontWeight: FontWeight.w700,
                              fontSize: 18,
                              color: kBlackColor,
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 12.h,
                        ),
                        CustomText(
                          title: "Sign in or create an account.",
                          fontWeight: FontWeight.w400,
                          fontSize: 14,
                          color: kGreyDarkColor,
                        ),
                        SizedBox(
                          height: 25.h,
                        ),
                        Container(
                          padding: EdgeInsets.only(right: 50),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(16),
                              border: Border.all(color: kWhiteLightColor)),
                          child: ListTile(
                            onTap: () async {
                              setState(() async {
                                continueapp = true;

                                final prefs =
                                    await SharedPreferences.getInstance();
                                await prefs.setBool('continue', continueapp);
                                if (continueapp == true) {
                                  Helper.toRemoveUntiScreen(
                                      context, BottomBar(val: 0));
                                }
                              });
                            },
                            leading: Image.asset(
                              "assets/image 4.png",
                              height: 30,
                            ),
                            title: Center(
                              child: CustomText(
                                title: "Sign in with Apple",
                                fontWeight: FontWeight.w400,
                                fontSize: 14,
                                color: kBlackColor,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 25.h,
                        ),
                        Container(
                          padding: EdgeInsets.only(right: 25),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(16),
                              border: Border.all(color: kWhiteLightColor)),
                          child: ListTile(
                            onTap: () async {
                              setState(() async {
                                continueapp = true;

                                final prefs =
                                    await SharedPreferences.getInstance();
                                await prefs.setBool('continue', continueapp);
                                if (continueapp == true) {
                                  Helper.toRemoveUntiScreen(
                                      context, BottomBar(val: 0));
                                }
                              });
                            },
                            leading: Image.asset(
                              "assets/image 3.png",
                              height: 25,
                            ),
                            title: Center(
                              child: Container(
                                margin: EdgeInsets.only(right: 20),
                                child: CustomText(
                                  title: "Sign in with Google",
                                  fontWeight: FontWeight.w400,
                                  fontSize: 14,
                                  color: kBlackColor,
                                ),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 30.h,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              width: MediaQuery.of(context).size.width * 0.2,
                              child: Divider(
                                color: kWhiteLightColor,
                                thickness: 1.5,
                              ),
                            ),
                            GestureDetector(
                              onTap: () {
                                Helper.toScreen(context, Login());
                              },
                              child: CustomText(
                                title: "or continue with email",
                                fontWeight: FontWeight.w500,
                                fontSize: 14,
                                color: kGreyDarkColor,
                              ),
                            ),
                            Container(
                              width: MediaQuery.of(context).size.width * 0.2,
                              child: const Divider(
                                color: kWhiteLightColor,
                                thickness: 1.5,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 30.h,
                        ),
                        Container(
                          height: 52,
                          child: CustomTextField(
                            cursorColor: kGreyDarkColor,
                            textFontSize: 14,
                            textColor: kGreyDarkColor,
                            isOutlineInputBorderColor: kWhiteLightColor,
                            hintText: "Email",
                            hintTextColor: kGreyDarkColor,
                            hintFontSize: 14,
                            prefixIcon: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Image.asset(
                                  "assets/mail.png",
                                  height: 18,
                                )
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 40.h,
                        ),
                        Center(
                          child: CustomButton(
                            btnWidth: MediaQuery.of(context).size.width * 0.5,
                            title: "Continue",
                            onPressed: () {
                              Helper.toScreen(context, SignUp());
                            },
                            textColor: kMainColor,
                            btnColor: kSecondaryColor,
                            btnRadius: 15,
                          ),
                        ),
                        SizedBox(
                          height: 25.h,
                        ),
                        CustomText(
                          title: "Cancel",
                          fontWeight: FontWeight.w400,
                          fontSize: 14,
                          color: kGreyDarkColor,
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
        bottomNavigationBar: BottomAppBar(
          color: kMainColor,
          elevation: 0,
          child: GestureDetector(
            onTap: () {
              // Helper.toScreen(context, JoinStepScreen());
            },
            child: Container(
              height: 70.h,
              child: Align(
                alignment: Alignment.center,
                child: RichText(
                  text: const TextSpan(children: [
                    TextSpan(
                        text:
                            "By continuing, you acknowledge that you’ve\n agreed to our  ",
                        style: TextStyle(
                            color: kGreyDarkColor,
                            fontSize: 14,
                            fontFamily: "DmSans")),
                    TextSpan(
                      text: "Terms",
                      style: TextStyle(
                        color: kSecondaryColor,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    TextSpan(
                        text: "  and  ",
                        style: TextStyle(color: kGreyDarkColor, fontSize: 14)),
                    TextSpan(
                      text: "Privacy Policy",
                      style: TextStyle(
                        color: kSecondaryColor,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ]),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
