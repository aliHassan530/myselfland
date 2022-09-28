import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:myselfland/screen/auth/login.dart';
import 'package:myselfland/utilites/constants.dart';
import 'package:myselfland/utilites/helper.dart';
import 'package:myselfland/widget/custom_button.dart';
import 'package:myselfland/widget/custom_text.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnbodyScreen_2 extends StatefulWidget {
  OnbodyScreen_2({
    this.next,
  });

  final next;

  @override
  State<OnbodyScreen_2> createState() => _OnbodyScreen_2State();
}

class _OnbodyScreen_2State extends State<OnbodyScreen_2> {
  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: SystemUiOverlayStyle(
        statusBarIconBrightness: Brightness.light,
      ),
      child: Scaffold(
        backgroundColor: kGreyLight,
        appBar: AppBar(
          systemOverlayStyle:
              SystemUiOverlayStyle(statusBarIconBrightness: Brightness.light),
          elevation: 0,
          backgroundColor: kGreyLight,
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
          margin: EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Image.asset(
                "assets/onboarding2 1.png",
                // height:230,
                height: 230.h,
                fit: BoxFit.fitHeight,
              ),
              CustomText(
                title:
                    "Myselfland Audio Guides might critically reduce your level of self-criticism and increase your self-awareness.",
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
          color: kGreyLight,
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
                      btnWidth: MediaQuery.of(context).size.width * 0.32,
                      title: "What Else?",
                      fontSize: 16,
                      fontWeight: FontWeight.w700,
                      textColor: kGreyLight,
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
      ),
    );
  }
}
