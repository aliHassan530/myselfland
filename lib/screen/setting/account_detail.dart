import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:myselfland/screen/auth/change_your_password.dart';
import 'package:myselfland/screen/auth/login.dart';
import 'package:myselfland/utilites/constants.dart';
import 'package:myselfland/utilites/helper.dart';
import 'package:myselfland/widget/custom_text.dart';

class AccountDetail extends StatefulWidget {
  const AccountDetail({Key? key}) : super(key: key);

  @override
  State<AccountDetail> createState() => _AccountDetailState();
}

class _AccountDetailState extends State<AccountDetail> {
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
          title: "Account Details",
          fontWeight: FontWeight.w700,
          fontSize: 16,
          color: kBlackColor,
        ),
      ),
      body: Container(
        margin: EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SizedBox(
              height: 30,
            ),
            AccountDetailWidget(
              title: "Name",
              trialing: "Laura",
            ),
            SizedBox(
              height: 30.h,
            ),
            AccountDetailWidget(
              title: "Email",
              trialing: "laura.smith@gmail.com",
            ),
            SizedBox(
              height: 30.h,
            ),
            AccountDetailWidget(
              title: "Google",
            ),
            SizedBox(
              height: 30.h,
            ),
            AccountDetailWidget(
              title: "Apple",
              trialing: "laurasmith",
            ),
            SizedBox(
              height: 30.h,
            ),
            InkWell(
              onTap: () {
                Helper.toScreen(context, ChangeYourPassword());
              },
              child: AccountDetailWidget(
                title: "Change Your Password",
              ),
            ),
            Expanded(
                child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                SizedBox(
                  height: 20.h,
                ),
                ListTile(
                  visualDensity: VisualDensity(vertical: -4),
                  onTap: () {
                    Helper.toRemoveUntiScreen(context, Login());
                  },
                  contentPadding: EdgeInsets.zero,
                  title: CustomText(
                    title: "Sign Out",
                    fontWeight: FontWeight.w400,
                    fontSize: 15,
                    color: kGreyDarkColor.withOpacity(0.5),
                  ),
                ),
                ListTile(
                  visualDensity: VisualDensity(vertical: -4),
                  onTap: () {
                    Helper.toRemoveUntiScreen(context, Login());
                  },
                  contentPadding: EdgeInsets.zero,
                  title: CustomText(
                    title: "Delete Account",
                    fontWeight: FontWeight.w400,
                    fontSize: 15,
                    color: kGreyDarkColor.withOpacity(0.3),
                  ),
                ),
                SizedBox(
                  height: 50.h,
                ),
              ],
            ))
          ],
        ),
      ),
    );
  }
}

class AccountDetailWidget extends StatelessWidget {
  AccountDetailWidget({
    this.title,
    this.trialing,
  });

  final title;
  String? trialing;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        CustomText(
          title: title,
          fontWeight: FontWeight.w400,
          fontSize: 15,
          color: kGreyDarkColor,
        ),
        Row(
          children: [
            Container(
              child: CustomText(
                title: trialing,
                fontWeight: FontWeight.w400,
                fontSize: 15,
                color: kSecondaryColor,
                maxLines: 1,
              ),
            ),
            SizedBox(
              width: 20,
            ),
            Image.asset(
              "assets/Vector (6).png",
              color: kGreyDarkColor,
              height: 15,
            ),
          ],
        ),
      ],
    );
  }
}
