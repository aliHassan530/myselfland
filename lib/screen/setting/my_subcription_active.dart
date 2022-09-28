import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:myselfland/utilites/constants.dart';
import 'package:myselfland/widget/custom_text.dart';
import 'package:myselfland/widget/expand_tile.dart';

class MySubcriptionActive extends StatefulWidget {
  const MySubcriptionActive({Key? key}) : super(key: key);

  @override
  State<MySubcriptionActive> createState() => _MySubcriptionActiveState();
}

class _MySubcriptionActiveState extends State<MySubcriptionActive> {
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
          title: "My Subscription",
          fontWeight: FontWeight.w700,
          fontSize: 16,
          color: kBlackColor,
        ),
      ),
      body: Container(
        child: ListView(
          children: [
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 15),
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
                          title: "Your subcription is active until  09.07.2023",
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          color: kMainColor,
                        ),
                        CustomText(
                          title: "Subscription plan: Monthly",
                          fontSize: 14,
                          fontWeight: FontWeight.w700,
                          color: kMainColor,
                        ),
                        Row(
                          children: [
                            Container(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 15, vertical: 10),
                              decoration: BoxDecoration(
                                color: kMainColor,
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: CustomText(
                                title: "Manage Subscription",
                                fontSize: 13,
                                fontWeight: FontWeight.w700,
                                color: kSecondaryColor,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                  CustomText(
                    title: "Terms of Service",
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    color: kSecondaryColor,
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                ],
              ),
            ),
            const ExpandTile(
              title: "Scelerisque sed quis imperdiet?",
              detail:
                  "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nisl neque aliquet amet, semper facilisis ultricies. Sed tempus lacus amet amet turpis congue. Sit laoreet iaculis.",
            ),
            const ExpandTile(
              title:
                  "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ipsum?",
              detail:
                  "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nisl neque aliquet amet, semper facilisis ultricies. Sed tempus lacus amet amet turpis congue. Sit laoreet iaculis.",
            ),
            const ExpandTile(
              title: "Et consectetur arcu?",
              detail:
                  "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nisl neque aliquet amet, semper facilisis ultricies. Sed tempus lacus amet amet turpis congue. Sit laoreet iaculis.",
            ),
            const ExpandTile(
              title: "Eu id ac tellus fermentum sit odio?",
              detail:
                  "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nisl neque aliquet amet, semper facilisis ultricies. Sed tempus lacus amet amet turpis congue. Sit laoreet iaculis.",
            ),
            SizedBox(
              height: 40.h,
            ),
            CustomText(
              title:
                  "If you have any questions about\n your subscription, please contact us at",
              fontWeight: FontWeight.w400,
              fontSize: 15,
              lineHeight: 1.7,
              color: kGreyDarkColor,
              textAlign: TextAlign.center,
            ),
            CustomText(
              title: "email@email.com",
              fontWeight: FontWeight.w400,
              fontSize: 15,
              lineHeight: 1.7,
              color: kSecondaryColor,
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 25.h,
            ),
          ],
        ),
      ),
    );
  }
}
