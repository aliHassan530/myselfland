import 'package:animations/animations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:myselfland/screen/alert_box/pop_option.dart';
import 'package:myselfland/utilites/constants.dart';
import 'package:myselfland/widget/custom_button.dart';
import 'package:myselfland/widget/custom_text.dart';
import 'package:myselfland/widget/custom_textfield.dart';

class PopName extends StatefulWidget {
  @override
  _PopNameState createState() => _PopNameState();
}

class _PopNameState extends State<PopName> {
  TextEditingController name = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
            padding: EdgeInsets.only(top: 25, bottom: 25),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: kMainColor,
            ),
            margin: EdgeInsets.symmetric(horizontal: 15),
            child: Material(
              child: Container(
                  color: kMainColor,
                  padding: EdgeInsets.symmetric(horizontal: 15),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          GestureDetector(
                              onTap: () {
                                Navigator.pop(context);
                              },
                              child: Image.asset(
                                "assets/x.png",
                                height: 20,
                              )),
                        ],
                      ),
                      SizedBox(
                        height: 20.h,
                      ),
                      CustomText(
                        title: "What’s your name?",
                        fontWeight: FontWeight.w700,
                        fontSize: 16,
                        color: kBlackColor,
                        textAlign: TextAlign.center,
                      ),
                      SizedBox(
                        height: 30.h,
                      ),
                      Container(
                        height: 52,
                        child: CustomTextField(
                          controller: name,
                          cursorColor: kGreyDarkColor,
                          textFontSize: 14,
                          textColor: kGreyDarkColor,
                          isOutlineInputBorderColor: kWhiteLightColor,
                          hintText: "Your name",
                          hintTextColor: kGreyDarkColor,
                          hintFontSize: 14,
                        ),
                      ),
                      SizedBox(
                        height: 40.h,
                      ),
                      CustomButton(
                        onPressed: () {
                          showModal(
                            context: context,
                            configuration:
                                const FadeScaleTransitionConfiguration(
                                    transitionDuration:
                                        Duration(milliseconds: 800)),
                            builder: (BuildContext context) {
                              return PopOption();
                            },
                          );
                        },
                        btnHeight: 50,
                        title: "Submit",
                        textColor: kMainColor,
                        btnColor: kSecondaryColor,
                        btnRadius: 15,
                      ),
                      SizedBox(
                        height: 25.h,
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: CustomText(
                          title: "Close",
                          fontWeight: FontWeight.w400,
                          fontSize: 14,
                          color: kGreyDarkColor,
                          textAlign: TextAlign.center,
                        ),
                      ),
                      SizedBox(
                        height: 25.h,
                      ),
                    ],
                  )),
            )),
      ],
    );
  }
}
