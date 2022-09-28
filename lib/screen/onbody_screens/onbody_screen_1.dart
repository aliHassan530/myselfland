import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:myselfland/screen/auth/login.dart';
import 'package:myselfland/utilites/constants.dart';
import 'package:myselfland/utilites/helper.dart';
import 'package:myselfland/widget/custom_button.dart';
import 'package:myselfland/widget/custom_text.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnbodyScreen_1 extends StatefulWidget {
  OnbodyScreen_1({
    this.next,
  });

  final next;

  @override
  State<OnbodyScreen_1> createState() => _OnbodyScreen_1State();
}

class _OnbodyScreen_1State extends State<OnbodyScreen_1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPurpleColor,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: kPurpleColor,
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
              "assets/onboarding1 1.png",
              height: 184.h,
              fit: BoxFit.fitHeight,
            ),
            CustomText(
              title:
                  "This app is designed to help you stay in contact with your feelings and safely navigate various emotional issues. But we have to warn you about its potential side effects!",
              color: kMainColor,
              fontWeight: FontWeight.w400,
              fontSize: 17,
              textAlign: TextAlign.center,
            )
          ],
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        elevation: 0,
        color: kPurpleColor,
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
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  CustomButton(
                    btnHeight: 40,
                    btnRadius: 12,
                    btnWidth: MediaQuery.of(context).size.width * 0.3,
                    title: "Tell Me!",
                    fontSize: 16,
                    fontWeight: FontWeight.w700,
                    textColor: kPurpleColor,
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
