import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:myselfland/utilites/constants.dart';
import 'package:myselfland/widget/custom_button.dart';
import 'package:myselfland/widget/custom_text.dart';
import 'package:myselfland/widget/custom_textfield.dart';

class ChangeYourPassword extends StatefulWidget {
  const ChangeYourPassword({Key? key}) : super(key: key);

  @override
  State<ChangeYourPassword> createState() => _ChangeYourPasswordState();
}

class _ChangeYourPasswordState extends State<ChangeYourPassword> {
  TextEditingController password = TextEditingController();
  TextEditingController confirmPassword = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: ListView(
          children: [
            Align(
                alignment: Alignment.topRight,
                child: Image.asset(
                  "assets/Group (2).png",
                  color: kSecondaryColor.withOpacity(0.3),
                  height: 80,
                )),
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
                      InkWell(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: Image.asset(
                          "assets/arrow-left (1).png",
                          height: 25,
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      CustomText(
                        title: "Change Your Password",
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
                    title:
                        "You’re almost there! Please enter a new\n password below.",
                    fontWeight: FontWeight.w400,
                    fontSize: 14,
                    color: kGreyDarkColor,
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
                    height: 20.h,
                  ),
                  Container(
                    height: 52,
                    child: CustomTextField(
                      controller: confirmPassword,
                      cursorColor: kGreyDarkColor,
                      textFontSize: 14,
                      textColor: kGreyDarkColor,
                      isOutlineInputBorderColor: kWhiteLightColor,
                      hintText: "Confirm password",
                      obscureText: true,
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
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomAppBar(
          color: kMainColor,
          elevation: 0,
          child: Container(
            height: 120,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Center(
                  child: CustomButton(
                    btnWidth: MediaQuery.of(context).size.width * 0.5,
                    title: "Continue",
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
          )),
    );
  }
}
