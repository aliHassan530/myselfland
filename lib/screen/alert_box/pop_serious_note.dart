import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:myselfland/utilites/constants.dart';
import 'package:myselfland/widget/custom_button.dart';
import 'package:myselfland/widget/custom_text.dart';

class PopSeriousNote extends StatefulWidget {
  @override
  _PopSeriousNoteState createState() => _PopSeriousNoteState();
}

class _PopSeriousNoteState extends State<PopSeriousNote> {
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
                      Text(
                        "Please keep in mind that this app doesn’t replace therapy. Its content is developed by professional psychologists but is meant only to provide information and additional self-help tools, not medical advice or treatment.",
                        style: TextStyle(
                          color: kGreyDarkColor,
                          fontSize: 15,
                          fontWeight: FontWeight.w400,
                          height: 1.4,
                        ),
                      ),
                      SizedBox(
                        height: 10.h,
                      ),
                      RichText(
                        text: const TextSpan(children: [
                          TextSpan(
                              text:
                                  "continuing to use the app, you accept the\n",
                              style: TextStyle(
                                  color: kGreyDarkColor, fontSize: 14)),
                          TextSpan(
                            text: "Terms",
                            style: TextStyle(
                              color: kSecondaryColor,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          TextSpan(
                              text: "  and  ",
                              style: TextStyle(
                                  color: kGreyDarkColor, fontSize: 14)),
                          TextSpan(
                            text: "Privacy Policy",
                            style: TextStyle(
                              color: kSecondaryColor,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ]),
                      ),
                      SizedBox(
                        height: 40.h,
                      ),
                      CustomButton(
                        btnHeight: 50,
                        title: "Got It",
                        textColor: kMainColor,
                        btnColor: kSecondaryColor,
                        btnRadius: 15,
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
