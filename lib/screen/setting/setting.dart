import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:myselfland/screen/setting/about_myself_land.dart';
import 'package:myselfland/screen/setting/account_detail.dart';
import 'package:myselfland/screen/setting/download.dart';
import 'package:myselfland/screen/setting/favourite.dart';
import 'package:myselfland/screen/setting/feedback&support.dart';
import 'package:myselfland/screen/setting/my_subcription_active.dart';
import 'package:myselfland/screen/setting/unlock_myselfland.dart';
import 'package:myselfland/utilites/constants.dart';
import 'package:myselfland/utilites/helper.dart';
import 'package:myselfland/widget/custom_text.dart';

class Setting extends StatefulWidget {
  const Setting({Key? key}) : super(key: key);

  @override
  State<Setting> createState() => _SettingState();
}

class _SettingState extends State<Setting> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kMainColor,
        elevation: 0,
        automaticallyImplyLeading: false,
        centerTitle: true,
        title: CustomText(
          title: "Settings",
          fontWeight: FontWeight.w700,
          fontSize: 16,
          color: kBlackColor,
        ),
      ),
      body: Container(
        margin: EdgeInsets.symmetric(horizontal: 20),
        child: ListView(
          children: [
            SizedBox(
              height: 40.h,
            ),
            CustomText(
              title: "Me",
              fontWeight: FontWeight.w700,
              fontSize: 16,
              color: kBlackColor,
            ),
            SizedBox(
              height: 15.h,
            ),
            ListTile(
              onTap: () {
                Helper.toScreen(context, AccountDetail());
              },
              contentPadding: EdgeInsets.zero,
              title: CustomText(
                title: "Account",
                fontWeight: FontWeight.w400,
                fontSize: 15,
                color: kGreyDarkColor,
              ),
              trailing: Container(
                width: 70,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width: 60,
                      child: CustomText(
                        title: "Laura",
                        fontWeight: FontWeight.w400,
                        fontSize: 14,
                        color: kSecondaryColor,
                        maxLines: 1,
                      ),
                    ),
                    Image.asset(
                      "assets/Vector (6).png",
                      color: kGreyDarkColor,
                      height: 15,
                    ),
                  ],
                ),
              ),
            ),
            subcribe == true
                ? ListTile(
                    onTap: () {
                      Helper.toScreen(context, MySubcriptionActive());
                    },
                    contentPadding: EdgeInsets.zero,
                    title: CustomText(
                      title: "My Subscription",
                      fontWeight: FontWeight.w400,
                      fontSize: 15,
                      color: kGreyDarkColor,
                    ),
                    trailing: Image.asset(
                      "assets/Vector (6).png",
                      color: kGreyDarkColor,
                      height: 15,
                    ),
                  )
                : ListTile(
                    onTap: () {
                      Helper.toScreen(context, UnlockMySelfLand());
                    },
                    contentPadding: EdgeInsets.zero,
                    title: CustomText(
                      title: "Unlock Myselfland",
                      fontWeight: FontWeight.w400,
                      fontSize: 15,
                      color: kGreyDarkColor,
                    ),
                    trailing: Image.asset(
                      "assets/Vector (6).png",
                      color: kGreyDarkColor,
                      height: 15,
                    ),
                  ),
            ListTile(
              onTap: () {
                Helper.toScreen(context, Favourite());
              },
              contentPadding: EdgeInsets.zero,
              title: CustomText(
                title: "Favorites",
                fontWeight: FontWeight.w400,
                fontSize: 15,
                color: kGreyDarkColor,
              ),
              trailing: Image.asset(
                "assets/Vector (6).png",
                color: kGreyDarkColor,
                height: 15,
              ),
            ),
            ListTile(
              onTap: () {
                Helper.toScreen(context, DownLoad());
              },
              contentPadding: EdgeInsets.zero,
              title: CustomText(
                title: "Downloads",
                fontWeight: FontWeight.w400,
                fontSize: 15,
                color: kGreyDarkColor,
              ),
              trailing: Image.asset(
                "assets/Vector (6).png",
                color: kGreyDarkColor,
                height: 15,
              ),
            ),
            SizedBox(
              height: 40.h,
            ),
            CustomText(
              title: "The App",
              fontWeight: FontWeight.w700,
              fontSize: 16,
              color: kBlackColor,
            ),
            SizedBox(
              height: 20.h,
            ),
            ListTile(
              onTap: () {
                Helper.toScreen(context, AboutMySelfLand());
              },
              contentPadding: EdgeInsets.zero,
              title: CustomText(
                title: "About Myselfland ",
                fontWeight: FontWeight.w400,
                fontSize: 15,
                color: kGreyDarkColor,
              ),
              trailing: Image.asset(
                "assets/Vector (6).png",
                color: kGreyDarkColor,
                height: 15,
              ),
            ),
            ListTile(
              onTap: () {
                Helper.toScreen(context, FeedBackSupport());
              },
              contentPadding: EdgeInsets.zero,
              title: CustomText(
                title: "Feedback & Support ",
                fontWeight: FontWeight.w400,
                fontSize: 15,
                color: kGreyDarkColor,
              ),
              trailing: Image.asset(
                "assets/Vector (6).png",
                color: kGreyDarkColor,
                height: 15,
              ),
            ),
            ListTile(
              contentPadding: EdgeInsets.zero,
              title: CustomText(
                title: "Share your care ",
                fontWeight: FontWeight.w400,
                fontSize: 15,
                color: kGreyDarkColor,
              ),
              trailing: Image.asset(
                "assets/Vector (6).png",
                color: kGreyDarkColor,
                height: 15,
              ),
            ),
            ListTile(
              contentPadding: EdgeInsets.zero,
              title: CustomText(
                title: "Rate the app ",
                fontWeight: FontWeight.w400,
                fontSize: 15,
                color: kGreyDarkColor,
              ),
              trailing: Image.asset(
                "assets/Vector (6).png",
                color: kGreyDarkColor,
                height: 15,
              ),
            ),
            ListTile(
              contentPadding: EdgeInsets.zero,
              title: CustomText(
                title: "Privacy Policy",
                fontWeight: FontWeight.w400,
                fontSize: 15,
                color: kGreyDarkColor,
              ),
              trailing: Image.asset(
                "assets/Vector (6).png",
                color: kGreyDarkColor,
                height: 15,
              ),
            ),
            ListTile(
              contentPadding: EdgeInsets.zero,
              title: CustomText(
                title: "Terms of Service ",
                fontWeight: FontWeight.w400,
                fontSize: 15,
                color: kGreyDarkColor,
              ),
              trailing: Image.asset(
                "assets/Vector (6).png",
                color: kGreyDarkColor,
                height: 15,
              ),
            ),
            SizedBox(
              height: 40.h,
            ),
            CustomText(
              title: "Myselfland © 2022 \nv 1.1",
              fontWeight: FontWeight.w400,
              fontSize: 15,
              color: kBlackColor,
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 40.h,
            ),
          ],
        ),
      ),
    );
  }
}
