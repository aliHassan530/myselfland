import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:myselfland/screen/auth/login.dart';
import 'package:myselfland/utilites/constants.dart';
import 'package:myselfland/utilites/helper.dart';
import 'package:myselfland/widget/custom_button.dart';
import 'package:myselfland/widget/custom_text.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnbodyScreen_3 extends StatefulWidget {
  OnbodyScreen_3({
    this.next,
  });

  final next;

  @override
  State<OnbodyScreen_3> createState() => _OnbodyScreen_3State();
}

class _OnbodyScreen_3State extends State<OnbodyScreen_3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBlueLightColor,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: kBlueLightColor,
        actions: [
          Container(
            margin: EdgeInsets.only(right: 15, top: 15),
            child: GestureDetector(
              onTap: () {
                Helper.toRemoveUntiScreen(context, Login());
              },
              child: CustomText(
                title: "Skip",
                fontSize: 17,
                fontWeight: FontWeight.w400,
                color: kMainColor,
              ),
            ),
          ),
        ],
      ),
      body: Container(
        margin: EdgeInsets.symmetric(horizontal: 15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Image.asset(
              "assets/onboarding3 1.png",
              height: 205,
            ),
            CustomText(
              title:
                  "De-Stress exercises and self-regulatory tools can lead to a sharp drop in stress levels and increase energy for your activities, causing irreversible positive changes in your life.",
              color: kMainColor,
              fontWeight: FontWeight.w400,
              fontSize: 17,
              lineHeight: 1.6,
              textAlign: TextAlign.center,
            )
          ],
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        elevation: 0,
        color: kBlueLightColor,
        child: Container(
          margin: const EdgeInsets.symmetric(horizontal: 15),
          height: 125.h,
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    child: SmoothPageIndicator(
                      controller: widget.next,
                      count: 5,
                      axisDirection: Axis.horizontal,
                      effect: ExpandingDotsEffect(
                        dotHeight: 5,
                        dotWidth: 5,
                        strokeWidth: 12,
                        activeDotColor: kMainColor,
                        dotColor: kMainColor,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 40.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: () {
                      widget.next.previousPage(
                        duration: Duration(milliseconds: 200),
                        curve: Curves.linear,
                      );
                    },
                    child: Row(
                      children: [
                        Image.asset(
                          "assets/arrow-left.png",
                          height: 20,
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        CustomText(
                          title: "Back",
                          color: kMainColor,
                          fontSize: 17,
                          fontWeight: FontWeight.w700,
                        )
                      ],
                    ),
                  ),
                  CustomButton(
                    btnHeight: 40,
                    btnRadius: 12,
                    btnWidth: MediaQuery.of(context).size.width * 0.3,
                    title: "Is that All?",
                    fontSize: 16,
                    fontWeight: FontWeight.w700,
                    textColor: kBlueLightColor,
                    btnColor: kMainColor,
                    onPressed: () {
                      widget.next.nextPage(
                          duration: Duration(milliseconds: 1),
                          curve: Curves.linear);
                    },
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
