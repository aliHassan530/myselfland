import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:myselfland/screen/bottom_bar/bottom_bar.dart';
import 'package:myselfland/utilites/constants.dart';
import 'package:myselfland/utilites/helper.dart';
import 'package:myselfland/widget/custom_button.dart';
import 'package:myselfland/widget/custom_text.dart';
import 'package:myselfland/widget/expand_tile.dart';
import 'package:shared_preferences/shared_preferences.dart';

bool subcribe = false;

saveBool() {
  SharedPreferences prefs =
      SharedPreferences.getInstance() as SharedPreferences;
  prefs.setBool("subcribe", subcribe);
}

class UnlockMySelfLand extends StatefulWidget {
  const UnlockMySelfLand({Key? key}) : super(key: key);

  @override
  State<UnlockMySelfLand> createState() => _UnlockMySelfLandState();
}

class _UnlockMySelfLandState extends State<UnlockMySelfLand> {
  String colorGroupValue = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kMainColor,
        elevation: 0,
        leading: GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: Center(
              child: Image.asset(
            "assets/arrow-left (1).png",
            height: 25,
          )),
        ),
        centerTitle: true,
        title: CustomText(
          title: "Unlock Myselfland",
          fontWeight: FontWeight.w700,
          fontSize: 16,
          color: kBlackColor,
        ),
      ),
      body: ListView(
        children: [
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 25, vertical: 20),
                  height: 190,
                  decoration: const BoxDecoration(
                      image: DecorationImage(
                    image: AssetImage("assets/premium.png"),
                    fit: BoxFit.fill,
                  )),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      CustomText(
                        title: "★ Get full access to Audio Guides",
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        color: kMainColor,
                      ),
                      CustomText(
                        title: "★ Use the De-Stress toolbox with no",
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        color: kMainColor,
                      ),
                      CustomText(
                        title: "★ Listen to all audios offline",
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        color: kMainColor,
                      ),
                      CustomText(
                        title:
                            "★ Keep growing as our audio library constantly does.",
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        color: kMainColor,
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 40.h,
                ),
                CustomText(
                  title: "Select Your Plan",
                  fontWeight: FontWeight.w700,
                  fontSize: 16,
                  color: kBlackColor,
                ),

                SizedBox(
                  height: 30.h,
                ),
                Stack(
                  children: [
                    colorGroupValue == "1".toString()
                        ? Positioned(
                            right: 0,
                            top: 0,
                            child: Image.asset(
                              "assets/fav.png",
                              height: 80,
                            ))
                        : Container(),
                    Container(
                      padding: EdgeInsets.only(bottom: 15),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          border: Border.all(
                            width: 2,
                            color: colorGroupValue == "1".toString()
                                ? kSecondaryColor
                                : kWhiteLightColor,
                          )),
                      child: Column(
                        children: [
                          RadioListTile(
                            value: '1',
                            groupValue: colorGroupValue,
                            onChanged: (val) {
                              colorGroupValue = val.toString();
                              setState(() {});
                            },
                            activeColor: kSecondaryColor,
                            title: Container(
                              margin: EdgeInsets.only(top: 20),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  CustomText(
                                    title: "Monthly",
                                    color: kBlackColor,
                                    fontWeight: FontWeight.w500,
                                    fontSize: 14,
                                  ),
                                  Row(
                                    children: [
                                      CustomText(
                                        title: "\$  ",
                                        color: kGreyDarkColor,
                                        fontWeight: FontWeight.w500,
                                        fontSize: 8,
                                      ),
                                      CustomText(
                                        title: "19",
                                        color: kBlackColor,
                                        fontWeight: FontWeight.w500,
                                        fontSize: 14,
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            visualDensity: const VisualDensity(vertical: -4),
                            subtitle: Container(
                              margin: EdgeInsets.only(top: 10),
                              child: CustomText(
                                title: "\$5/week, auto-renewed every month",
                                fontWeight: FontWeight.w400,
                                fontSize: 12,
                                color: kGreyDarkColor,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),

                SizedBox(
                  height: 20.h,
                ),
                Stack(
                  children: [
                    colorGroupValue == "2".toString()
                        ? Positioned(
                            right: 0,
                            top: 0,
                            child: Image.asset(
                              "assets/fav.png",
                              height: 80,
                            ))
                        : Container(),
                    Container(
                      padding: EdgeInsets.only(bottom: 15),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          border: Border.all(
                            width: 2,
                            color: colorGroupValue == "2".toString()
                                ? kSecondaryColor
                                : kWhiteLightColor,
                          )),
                      child: Column(
                        children: [
                          RadioListTile(
                            value: '2',
                            groupValue: colorGroupValue,
                            onChanged: (val) {
                              colorGroupValue = val.toString();
                              setState(() {});
                            },
                            activeColor: kSecondaryColor,
                            title: Container(
                              margin: EdgeInsets.only(top: 20),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  CustomText(
                                    title: "Quarterly",
                                    color: kBlackColor,
                                    fontWeight: FontWeight.w500,
                                    fontSize: 14,
                                  ),
                                  Row(
                                    children: [
                                      CustomText(
                                        title: "\$  ",
                                        color: kGreyDarkColor,
                                        fontWeight: FontWeight.w500,
                                        fontSize: 8,
                                      ),
                                      CustomText(
                                        title: "12",
                                        color: kBlackColor,
                                        fontWeight: FontWeight.w500,
                                        fontSize: 14,
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            visualDensity: const VisualDensity(vertical: -4),
                            subtitle: Container(
                              margin: EdgeInsets.only(top: 10),
                              child: CustomText(
                                title: "\$2/week, auto-renewed every month",
                                fontWeight: FontWeight.w400,
                                fontSize: 12,
                                color: kGreyDarkColor,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),

                SizedBox(
                  height: 20.h,
                ),
                Stack(
                  children: [
                    colorGroupValue == "3".toString()
                        ? Positioned(
                            right: 0,
                            top: 0,
                            child: Image.asset(
                              "assets/fav.png",
                              height: 80,
                            ))
                        : Container(),
                    Container(
                      padding: EdgeInsets.only(bottom: 15),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          border: Border.all(
                            width: 2,
                            color: colorGroupValue == "3".toString()
                                ? kSecondaryColor
                                : kWhiteLightColor,
                          )),
                      child: Column(
                        children: [
                          RadioListTile(
                            value: '3',
                            groupValue: colorGroupValue,
                            onChanged: (val) {
                              colorGroupValue = val.toString();
                              setState(() {});
                            },
                            activeColor: kSecondaryColor,
                            title: Container(
                              margin: EdgeInsets.only(top: 20),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    children: [
                                      CustomText(
                                        title: "Anually . ",
                                        color: kBlackColor,
                                        fontWeight: FontWeight.w500,
                                        fontSize: 14,
                                      ),
                                      CustomText(
                                        title: "Best Value",
                                        color: kSecondaryColor,
                                        fontWeight: FontWeight.w500,
                                        fontSize: 14,
                                      ),
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      CustomText(
                                        title: "\$  ",
                                        color: kGreyDarkColor,
                                        fontWeight: FontWeight.w500,
                                        fontSize: 8,
                                      ),
                                      CustomText(
                                        title: "25",
                                        color: kBlackColor,
                                        fontWeight: FontWeight.w500,
                                        fontSize: 14,
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            visualDensity: const VisualDensity(vertical: -4),
                            subtitle: Container(
                              margin: EdgeInsets.only(top: 10),
                              child: CustomText(
                                title: "\$2/week, auto-renewed once a year",
                                fontWeight: FontWeight.w400,
                                fontSize: 12,
                                color: kGreyDarkColor,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),

                // payment complete
                SizedBox(
                  height: 40.h,
                ),

                Column(
                  children: [
                    CustomButton(
                        onPressed: () async {
                          setState(() async {
                            if (colorGroupValue == "3" ||
                                colorGroupValue == "2" ||
                                colorGroupValue == "1") {
                              subcribe = true;
                              final prefs =
                                  await SharedPreferences.getInstance();
                              await prefs.setBool('subcribe', subcribe);

                              if (subcribe == true) {
                                Helper.showSnack(context,
                                    "Successfully Select Payment Method");
                                Helper.toScreen(
                                    context,
                                    BottomBar(
                                      val: 0,
                                    ));
                              }
                            } else {
                              Helper.showSnack(
                                  context, "Kindly Select Payment Method");
                            }
                          });
                        },
                        btnRadius: 20,
                        btnWidth: MediaQuery.of(context).size.width * 0.53,
                        btnHeight: 68,
                        textColor: kMainColor,
                        fontSize: 13,
                        fontWeight: FontWeight.w500,
                        btnColor: kSecondaryColor,
                        lineHeight: 1.8,
                        title: "Subscribe for \$25  Try 7 Days Free"),
                  ],
                ),
                SizedBox(
                  height: 20.h,
                ),
                CustomText(
                  title:
                      "You can cancel or change your\n subscription anytime.",
                  fontWeight: FontWeight.w400,
                  fontSize: 14,
                  color: kGreyDarkColor,
                  textAlign: TextAlign.center,
                  lineHeight: 1.6,
                ),
                SizedBox(
                  height: 30.h,
                ),
                CustomText(
                  title: "Terms & Conditions",
                  fontWeight: FontWeight.w500,
                  fontSize: 14,
                  color: kSecondaryColor,
                  textAlign: TextAlign.center,
                ),

                SizedBox(
                  height: 30.h,
                ),
                CustomText(
                  title:
                      "Thank you for supporting us in our efforts to grow and constantly expand our library of helpful content.  💙",
                  fontWeight: FontWeight.w400,
                  fontSize: 14,
                  lineHeight: 1.7,
                  color: kGreyDarkColor,
                  textAlign: TextAlign.center,
                ),
                SizedBox(
                  height: 40.h,
                ),
                CustomText(
                  title: "Subscription FAQ",
                  color: kBlackColor,
                  fontWeight: FontWeight.w700,
                  fontSize: 16,
                ),
              ],
            ),
          ),
          SizedBox(
            height: 10.h,
          ),
          const ExpandTile(
            title: "How to cancel or change subscription?",
            detail:
                "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sit accumsan sed vel cras ultrices ullamcorper dolor tortor. At habitant congue quis ultricies tristique vitae.",
          ),
          const ExpandTile(
            title: "I was charged, but subscription wasn’t activated",
            detail:
                "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sit accumsan sed vel cras ultrices ullamcorper dolor tortor. At habitant congue quis ultricies tristique vitae.",
          ),
          const ExpandTile(
            title: "How can I get a refund?",
            detail:
                "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sit accumsan sed vel cras ultrices ullamcorper dolor tortor. At habitant congue quis ultricies tristique vitae.",
          ),
          const ExpandTile(
            title: "App crashing, freezing or lagging",
            detail:
                "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sit accumsan sed vel cras ultrices ullamcorper dolor tortor. At habitant congue quis ultricies tristique vitae.",
          ),
        ],
      ),
    );
  }
}
