import 'package:animations/animations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:myselfland/screen/alert_box/pop_serious_note.dart';
import 'package:myselfland/utilites/constants.dart';
import 'package:myselfland/widget/custom_button.dart';
import 'package:myselfland/widget/custom_text.dart';

class PopOption extends StatefulWidget {
  @override
  _PopOptionState createState() => _PopOptionState();
}

class _PopOptionState extends State<PopOption> {
  TextEditingController name = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
            padding: EdgeInsets.only(top: 15, bottom: 25),
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
                        title: "What option would you like to choose?",
                        fontWeight: FontWeight.w700,
                        fontSize: 16,
                        color: kBlackColor,
                        textAlign: TextAlign.center,
                      ),
                      SizedBox(
                        height: 30.h,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          SelectOption(
                            colors: kPurpleColor.withOpacity(0.2),
                            title: "Option 1",
                            img: "assets/Vector (7).png",
                          ),
                          SelectOption(
                            colors: kSkyLightColor,
                            title: "Option 2",
                            img: "assets/Vector (8).png",
                          ),
                        ],
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
                              return PopSeriousNote();
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

class SelectOption extends StatefulWidget {
  SelectOption({
    this.title,
    required this.colors,
    this.img,
  });

  final title;
  Color? colors;
  final img;

  @override
  State<SelectOption> createState() => _SelectOptionState();
}

class _SelectOptionState extends State<SelectOption> {
  bool select = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        select = !select;
        setState(() {});
      },
      child: Container(
        width: MediaQuery.of(context).size.width * 0.35,
        decoration: BoxDecoration(
          border: Border.all(
              color: select ? kSecondaryColor : kMainColor, width: 2),
          color: kWhiteLightColor,
          borderRadius: BorderRadius.circular(10),
        ),
        padding: EdgeInsets.symmetric(vertical: 25),
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(100),
                color: widget.colors ?? Colors.transparent,
              ),
              child: Image.asset(
                widget.img,
                height: 15,
              ),
            ),
            SizedBox(
              height: 15.h,
            ),
            CustomText(
              title: widget.title,
              fontWeight: FontWeight.w500,
              fontSize: 11,
              color: kGreyDarkColor,
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
