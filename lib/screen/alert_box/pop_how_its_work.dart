import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:myselfland/screen/home/search_result.dart';
import 'package:myselfland/utilites/constants.dart';
import 'package:myselfland/utilites/helper.dart';
import 'package:myselfland/widget/custom_button.dart';
import 'package:myselfland/widget/custom_text.dart';

class PopHowItsWork extends StatefulWidget {
  @override
  _PopHowItsWorkState createState() => _PopHowItsWorkState();
}

class _PopHowItsWorkState extends State<PopHowItsWork> {
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
              color: kMainColor,
              child: Container(
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
                        title: "How It Works",
                        fontWeight: FontWeight.w700,
                        fontSize: 16,
                        color: kBlackColor,
                        textAlign: TextAlign.center,
                      ),
                      SizedBox(
                        height: 30.h,
                      ),
                      const Text(
                        "Welcome to your De-Stress toolbox! Here you have a constantly updated collection of easy-to-use, practical techniques that you can use anytime to cope with stress and overwhelming emotions, release anxiety and reconnect with your body. These tools include relaxation exercises, breathing techniques, mindfulness practices, imaginary exercises and other methods from empirically-supported treatments, including CBT, DBT, ACT, EMDR, mindfulness-based therapies, physical therapy, body oriented therapy and more.If you have any questions or want to share your feedback, feel free to contact us at",
                        style: TextStyle(
                          color: kGreyDarkColor,
                          fontSize: 15,
                          fontWeight: FontWeight.w400,
                          height: 1.5,
                        ),
                      ),
                      CustomText(
                        title: "email@email.com",
                        fontWeight: FontWeight.w400,
                        fontSize: 15,
                        color: kSecondaryColor,
                      ),
                      SizedBox(
                        height: 40.h,
                      ),
                      Column(
                        children: [
                          CustomButton(
                            onPressed: () {
                              Helper.toScreen(context, SearchResult());
                            },
                            btnWidth: MediaQuery.of(context).size.width * 0.7,
                            btnHeight: 50,
                            title: "Got It",
                            textColor: kMainColor,
                            btnColor: kSecondaryColor,
                            btnRadius: 15,
                          ),
                        ],
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
