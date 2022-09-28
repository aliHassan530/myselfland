import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:myselfland/screen/setting/unlock_myselfland.dart';
import 'package:myselfland/utilites/constants.dart';
import 'package:myselfland/utilites/helper.dart';
import 'package:myselfland/widget/custom_button.dart';
import 'package:myselfland/widget/custom_text.dart';

class SingleAudioLocked extends StatefulWidget {
  const SingleAudioLocked({Key? key}) : super(key: key);

  @override
  State<SingleAudioLocked> createState() => _SingleAudioLockedState();
}

class _SingleAudioLockedState extends State<SingleAudioLocked> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kGreyLight,
      appBar: AppBar(
        backgroundColor: kGreyLight,
        elevation: 0,
        systemOverlayStyle:
            SystemUiOverlayStyle(statusBarIconBrightness: Brightness.light),
        leading: InkWell(
          onTap: () {
            Navigator.pop(context);
          },
          child: Center(
              child: Image.asset(
            "assets/arrow-left (1).png",
            height: 25,
            color: kMainColor,
          )),
        ),
      ),
      body: Stack(
        children: [
          Container(
            padding: EdgeInsets.symmetric(horizontal: 25),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                SizedBox(
                  height: 20.h,
                ),
                Center(
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 15, vertical: 20),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: kBlackColor.withOpacity(0.1),
                    ),
                    child: Image.asset(
                      "assets/Thoughts 1.png",
                      height: 156.h,
                      fit: BoxFit.fitHeight,
                    ),
                  ),
                ),
                SizedBox(
                  height: 40.h,
                ),
                CustomText(
                  title: "Catastrophizing",
                  color: kMainColor.withOpacity(0.9),
                  fontWeight: FontWeight.w700,
                  fontSize: 16,
                  textAlign: TextAlign.center,
                ),
                SizedBox(
                  height: 20.h,
                ),
                CustomText(
                  title: "From reacting to consciously\n responding",
                  color: kMainColor.withOpacity(0.7),
                  fontWeight: FontWeight.w400,
                  fontSize: 14,
                  textAlign: TextAlign.center,
                ),
                SizedBox(
                  height: 20.h,
                ),
                CustomText(
                  title: "12 min · Voiced with love by Amy",
                  color: kMainColor,
                  fontWeight: FontWeight.w400,
                  fontSize: 14,
                  textAlign: TextAlign.center,
                ),
                SizedBox(
                  height: 20.h,
                ),
                CustomText(
                  title:
                      "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi nisl, eu nisi est id eu commo eu. Duis mattis potenti auctor lectus sit vivamis.",
                  color: kMainColor.withOpacity(0.7),
                  fontWeight: FontWeight.w400,
                  fontSize: 14,
                  textAlign: TextAlign.center,
                ),
                SizedBox(
                  height: 20.h,
                ),
              ],
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                padding:
                    EdgeInsets.only(left: 15, right: 25, bottom: 75, top: 15),
                decoration: BoxDecoration(
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(25),
                    topRight: Radius.circular(25),
                  ),
                  color: kMainColor,
                ),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset("assets/Line 4.png",
                            color: kBlackColor, width: 50),
                      ],
                    ),
                    SizedBox(
                      height: 30.h,
                    ),
                    Center(
                      child: CustomButton(
                        onPressed: () {
                          Helper.toScreen(context, UnlockMySelfLand());
                        },
                        btnWidth: MediaQuery.of(context).size.width * 0.5,
                        title: "Get a 7-day free trial",
                        textColor: kMainColor,
                        btnColor: kSecondaryColor,
                        btnRadius: 15,
                      ),
                    ),
                    SizedBox(
                      height: 40.h,
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 7),
                      width: MediaQuery.of(context).size.width * 0.5,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Image.asset(
                            "assets/share-2.png",
                            height: 23.h,
                          ),
                          Image.asset(
                            "assets/heart (1).png",
                            height: 23.h,
                          ),
                          Image.asset(
                            "assets/download.png",
                            height: 23.h,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
