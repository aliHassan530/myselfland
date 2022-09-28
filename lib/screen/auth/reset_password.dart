import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:myselfland/utilites/constants.dart';
import 'package:myselfland/widget/custom_button.dart';
import 'package:myselfland/widget/custom_text.dart';
import 'package:myselfland/widget/custom_textfield.dart';

class ResetPassword extends StatefulWidget {
  const ResetPassword({Key? key}) : super(key: key);

  @override
  State<ResetPassword> createState() => _ResetPasswordState();
}

class _ResetPasswordState extends State<ResetPassword> {
  TextEditingController email = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                          InkWell(
                            onTap: () {
                              Navigator.pop(context);
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
                            title: "Forgot Your Password?",
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
                            "Don’t worry, we’re here to help! Please\n enter the email associated with your\n account and we’ll send you a recovery link.",
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
                          controller: email,
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
          child: Container(
            height: 120,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Center(
                  child: CustomButton(
                    btnWidth: MediaQuery.of(context).size.width * 0.5,
                    title: "Reset Password",
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
