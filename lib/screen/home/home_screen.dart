import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:myselfland/model/Audio_Model.dart';
import 'package:myselfland/model/de_stress_model.dart';
import 'package:myselfland/model/featured_model.dart';
import 'package:myselfland/utilites/constants.dart';
import 'package:myselfland/widget/audio_guide_widget.dart';
import 'package:myselfland/widget/custom_text.dart';
import 'package:myselfland/widget/de_stress_widget.dart';
import 'package:myselfland/widget/feature_widget.dart';
import 'package:myselfland/widget/search_tile_widget.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  String? titleHome = "Feel at home and get warm!";
  TextEditingController search = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: ListView(
          children: [
            const SizedBox(
              height: 15,
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CustomText(
                        title: "Welcome,",
                        fontWeight: FontWeight.w500,
                        fontSize: 14,
                        color: kGreyDarkColor,
                      ),
                      Image.asset(
                        "assets/heart.png",
                        height: 25,
                      ),
                    ],
                  ),
                  CustomText(
                    title: "Laura,",
                    fontWeight: FontWeight.w600,
                    fontSize: 18,
                    color: kBlackColor,
                  ),
                  SizedBox(
                    height: 33.h,
                  ),
                  CustomText(
                    title: titleHome,
                    fontWeight: FontWeight.w700,
                    fontSize: 16,
                    color: kBlackColor,
                  ),
                  Stack(
                    children: [
                      Container(
                        height: 120,
                        width: MediaQuery.of(context).size.width,
                        decoration: BoxDecoration(
                          image: const DecorationImage(
                              image: AssetImage(
                                "assets/bot.png",
                              ),
                              fit: BoxFit.fill),
                        ),
                        child: Container(
                          margin: EdgeInsets.only(top: 40, left: 20),
                          child: CustomText(
                            title: "Explore & Navigate\nYour Emotions",
                            fontWeight: FontWeight.w700,
                            fontSize: 14,
                            color: kMainColor,
                          ),
                        ),
                      ),
                      Positioned(
                        right: -20,
                        top: 8,
                        child: Container(
                          child: Image.asset(
                            "assets/navigate-emotions 2.png",
                            height: 110,
                          ),
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 18.h,
                  ),
                  SearchTile(),
                  SizedBox(
                    height: 31.h,
                  ),
                  CustomText(
                    title: "Featured",
                    fontWeight: FontWeight.w700,
                    fontSize: 16,
                    color: kBlackColor,
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20.h,
            ),
            Container(
              height: 240,
              child: ListView.builder(
                  physics: ClampingScrollPhysics(),
                  shrinkWrap: true,
                  padding: EdgeInsets.only(left: 20),
                  scrollDirection: Axis.horizontal,
                  itemCount: featureList.length,
                  itemBuilder: (context, index) {
                    return FeaturedWidget(
                      feature: featureShow[index],
                      ind: index,
                    );
                  }),
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CustomText(
                    title: "Audio Guides",
                    fontWeight: FontWeight.w700,
                    fontSize: 16,
                    color: kBlackColor,
                  ),
                  CustomText(
                    title: "See All",
                    fontWeight: FontWeight.w700,
                    fontSize: 14,
                    color: kSecondaryColor,
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20.h,
            ),
            Container(
              height: 240,
              child: ListView.builder(
                  physics: ClampingScrollPhysics(),
                  shrinkWrap: true,
                  padding: EdgeInsets.only(left: 20),
                  scrollDirection: Axis.horizontal,
                  itemCount: audioList.length,
                  itemBuilder: (context, index) {
                    return AudioGuideWidget(
                      audio: audio[index],
                      ind: index,
                    );
                  }),
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CustomText(
                    title: "De-Stress",
                    fontWeight: FontWeight.w700,
                    fontSize: 16,
                    color: kBlackColor,
                  ),
                  CustomText(
                    title: "See All",
                    fontWeight: FontWeight.w700,
                    fontSize: 14,
                    color: kSecondaryColor,
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20.h,
            ),
            Container(
              height: 240,
              child: ListView.builder(
                  physics: ClampingScrollPhysics(),
                  shrinkWrap: true,
                  padding: EdgeInsets.only(left: 20),
                  scrollDirection: Axis.horizontal,
                  itemCount: deStressList.length,
                  itemBuilder: (context, index) {
                    return DeStressHomeWidget(
                      audio: deStress[index],
                      ind: index,
                    );
                  }),
            ),
          ],
        ),
      ),
    );
  }
}
