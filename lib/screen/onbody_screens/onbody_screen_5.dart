import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:myselfland/screen/auth/sign_in.dart';
import 'package:myselfland/utilites/constants.dart';
import 'package:myselfland/utilites/helper.dart';
import 'package:myselfland/widget/custom_button.dart';
import 'package:myselfland/widget/custom_text.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnbodyScreen_5 extends StatefulWidget {
  OnbodyScreen_5({
    this.next,
  });

  final next;

  @override
  State<OnbodyScreen_5> createState() => _OnbodyScreen_5State();
}

class _OnbodyScreen_5State extends State<OnbodyScreen_5> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: kBrownrColor,
      ),
      backgroundColor: kBrownrColor,
      body: Container(
        margin: EdgeInsets.symmetric(horizontal: 15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Image.asset(
              "assets/onboarding5! 1.png",
              height: 224,
              // fit: BoxFit.fitHeight,
            ),
            CustomText(
              title: "This app might be habit-forming with long-term use.",
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
        color: kBrownrColor,
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
                    btnWidth: MediaQuery.of(context).size.width * 0.5,
                    title: "I’ll take the risk anyway!",
                    fontSize: 14,
                    fontWeight: FontWeight.w700,
                    textColor: kBrownrColor,
                    btnColor: kMainColor,
                    onPressed: () {
                      Helper.toRemoveUntiScreen(context, SignIn());
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
