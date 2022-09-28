import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:myselfland/screen/auth/reset_password.dart';
import 'package:myselfland/screen/bottom_bar/bottom_bar.dart';
import 'package:myselfland/utilites/constants.dart';
import 'package:myselfland/utilites/helper.dart';
import 'package:myselfland/widget/custom_button.dart';
import 'package:myselfland/widget/custom_text.dart';
import 'package:myselfland/widget/custom_textfield.dart';
import 'package:shared_preferences/shared_preferences.dart';

bool continueapp = false;

saveBool() {
  SharedPreferences prefs =
      SharedPreferences.getInstance() as SharedPreferences;
  prefs.setBool("continueapp", continueapp);
}

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  TextEditingController password = TextEditingController();
  TextEditingController confirmPassword = TextEditingController();

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
                    margin: EdgeInsets.symmetric(horizontal: 20),
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
                            Image.asset(
                              "assets/arrow-left (1).png",
                              height: 25,
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            CustomText(
                              title: "Login",
                              fontWeight: FontWeight.w700,
                              fontSize: 18,
                              color: kBlackColor,
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 12.h,
                        ),
                        Text(
                          "Welcome back to Myselfland! Please enter\nyour password below.",
                          style: TextStyle(
                              fontWeight: FontWeight.w400,
                              fontSize: 14,
                              color: kGreyDarkColor,
                              height: 1.5),
                        ),
                        SizedBox(
                          height: 30.h,
                        ),
                        Container(
                          height: 52,
                          child: CustomTextField(
                            controller: password,
                            obscureText: true,
                            cursorColor: kGreyDarkColor,
                            textFontSize: 14,
                            textColor: kGreyDarkColor,
                            isOutlineInputBorderColor: kWhiteLightColor,
                            hintText: "Password",
                            hintTextColor: kGreyDarkColor,
                            hintFontSize: 14,
                            prefixIcon: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Image.asset(
                                  "assets/lock.png",
                                  height: 18,
                                )
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 10.h,
                        ),
                        GestureDetector(
                          onTap: () {
                            Helper.toScreen(context, ResetPassword());
                          },
                          child: CustomText(
                            title: "Forgot your password?",
                            fontWeight: FontWeight.w500,
                            fontSize: 14,
                            color: kSecondaryColor,
                            textAlign: TextAlign.end,
                          ),
                        ),
                        SizedBox(
                          height: 50.h,
                        ),
                        Center(
                          child: CustomButton(
                            onPressed: () async {
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
                            btnWidth: MediaQuery.of(context).size.width * 0.5,
                            title: "Log in",
                            textColor: kMainColor,
                            fontWeight: FontWeight.w500,
                            btnColor: kSecondaryColor,
                            btnRadius: 15,
                          ),
                        ),
                        SizedBox(
                          height: 30.h,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              width: MediaQuery.of(context).size.width * 0.35,
                              child: Divider(
                                color: kWhiteLightColor,
                                thickness: 1.3,
                              ),
                            ),
                            CustomText(
                              title: "or",
                              fontWeight: FontWeight.w400,
                              fontSize: 14,
                              color: kGreyDarkColor,
                            ),
                            Container(
                              width: MediaQuery.of(context).size.width * 0.35,
                              child: const Divider(
                                thickness: 1.3,
                                color: kWhiteLightColor,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 30.h,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            InkWell(
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
                              child: Container(
                                height: 51,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  border: Border.all(color: kWhiteLightColor),
                                ),
                                width: MediaQuery.of(context).size.width * 0.3,
                                child: Center(
                                    child: Image.asset(
                                  "assets/image 3.png",
                                  height: 25,
                                )),
                              ),
                            ),
                            InkWell(
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
                              child: Container(
                                height: 51,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  border: Border.all(color: kWhiteLightColor),
                                ),
                                width: MediaQuery.of(context).size.width * 0.3,
                                child: Center(
                                    child: Image.asset(
                                  "assets/image 4.png",
                                  height: 30,
                                )),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 59.h,
                        ),
                        CustomText(
                          title: "Cancel",
                          fontWeight: FontWeight.w400,
                          fontSize: 14,
                          color: kGreyDarkColor,
                          textAlign: TextAlign.center,
                        ),
                        SizedBox(
                          height: 30.h,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
