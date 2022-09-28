import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:myselfland/model/audio_guide_de_stress_model.dart';
import 'package:myselfland/screen/audio_play.dart/journey_locked.dart';
import 'package:myselfland/screen/audio_play.dart/single_audio_locked.dart';
import 'package:myselfland/screen/audio_play.dart/single_audio_playing.dart';
import 'package:myselfland/screen/home/audio_guide.dart';
import 'package:myselfland/screen/setting/unlock_myselfland.dart';
import 'package:myselfland/utilites/constants.dart';
import 'package:myselfland/utilites/helper.dart';
import 'package:myselfland/widget/custom_text.dart';
import 'package:myselfland/widget/search_tile_widget.dart';

class DeStressScreen extends StatefulWidget {
  const DeStressScreen({Key? key}) : super(key: key);

  @override
  State<DeStressScreen> createState() => _DeStressScreenState();
}

class _DeStressScreenState extends State<DeStressScreen> {
  TextEditingController search = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: kMainColor,
        elevation: 0,
        centerTitle: true,
        title: CustomText(
          title: "De-Stress",
          fontWeight: FontWeight.w700,
          fontSize: 16,
          color: kBlackColor,
        ),
        actions: [
          Container(
            margin: EdgeInsets.only(right: 20),
            child: Row(
              children: [
                Image.asset(
                  "assets/help-circle.png",
                  height: 25,
                ),
                SizedBox(
                  width: 25,
                ),
                Image.asset(
                  "assets/heart.png",
                  height: 25,
                ),
              ],
            ),
          ),
        ],
      ),
      body: Container(
        child: ListView(
          children: [
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                children: [
                  SizedBox(
                    height: 10.h,
                  ),
                  SearchTile(),
                  SizedBox(
                    height: 20.h,
                  ),
                ],
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: 45,
                  child: ListView(
                    shrinkWrap: true,
                    padding: EdgeInsets.only(left: 20),
                    physics: ClampingScrollPhysics(),
                    scrollDirection: Axis.horizontal,
                    children: [
                      SelectButton(
                        title: "All",
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      SelectButton(
                        title: "Stress",
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      SelectButton(
                        title: "Anxiety",
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      SelectButton(
                        title: "Depressino",
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 10.h,
                ),
                Container(
                  height: 40,
                  child: ListView(
                    padding: EdgeInsets.only(left: 20),
                    shrinkWrap: true,
                    physics: ClampingScrollPhysics(),
                    scrollDirection: Axis.horizontal,
                    children: [
                      SelectButton(
                        title: "Burn-Out",
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      SelectButton(
                        title: "Gratitude",
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      SelectButton(
                        title: "Intense Emotions",
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 20.h,
                ),
              ],
            ),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 20),
              child: GridView.builder(
                shrinkWrap: true,
                physics: ClampingScrollPhysics(),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    mainAxisSpacing: 12,
                    crossAxisSpacing: 14,
                    childAspectRatio: 0.65),
                itemCount: audioGuideStressList.length,
                itemBuilder: (context, index) {
                  return DeStressWidget(
                    audio: audioGuideStress[index],
                    ind: index,
                  );
                },
              ),
            ),
            SizedBox(
              height: 30.h,
            ),
          ],
        ),
      ),
    );
  }
}

class DeStressWidget extends StatefulWidget {
  final AudioGuideStressModel? audio;
  final ind;

  const DeStressWidget({Key? key, this.audio, this.ind}) : super(key: key);

  @override
  State<DeStressWidget> createState() => _DeStressWidgetState();
}

class _DeStressWidgetState extends State<DeStressWidget> {
  Color selectedColour(int pos) {
    Color? c;
    if (pos % 7 == 0) c = Color(0xFFF7E9FF);
    if (pos % 7 == 1) c = Color(0xFFFFEFCF);
    if (pos % 7 == 2) c = Color(0xFFE9F3FF);
    if (pos % 7 == 3) c = Color(0xFFE9EFFF);
    if (pos % 7 == 4) c = Color(0xFFEBF9E3);
    if (pos % 7 == 5) c = Color(0xFFFFE9E9);
    if (pos % 7 == 6) c = Color(0xFFFBECFF);
    if (pos % 7 == 7) c = Color(0xFFFFF5E9);
    return c!;
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        if (widget.ind == 0) {
          if (subcribe == true) {
            Helper.toScreen(context, SingleAudionPlaying());
          } else {
            Helper.toScreen(context, SingleAudioLocked());
          }
        } else {
          Helper.toScreen(context, JourneyLocked());
        }
      },
      child: Container(
        // width: MediaQuery.of(context).size.width * 0.42,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Stack(
              children: [
                Container(
                  width: MediaQuery.of(context).size.width * 0.45,
                  padding: EdgeInsets.symmetric(vertical: 30, horizontal: 15),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: selectedColour(widget.ind),
                  ),
                  child: Image.asset(
                    widget.audio!.img,
                    height: 90,
                  ),
                ),
                widget.audio!.quality == null
                    ? Container()
                    : Positioned(
                        right: 0,
                        top: 0,
                        child: Container(
                          margin: EdgeInsets.only(right: 20, top: 15),
                          padding:
                              EdgeInsets.symmetric(vertical: 5, horizontal: 5),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            color: kBlackColor.withOpacity(0.2),
                          ),
                          child: CustomText(
                            title: widget.audio!.quality,
                            fontWeight: FontWeight.w500,
                            fontSize: 10,
                            color: kMainColor,
                            textAlign: TextAlign.center,
                          ),
                        ),
                      )
              ],
            ),
            SizedBox(
              height: 10.h,
            ),
            CustomText(
              title: widget.audio!.title,
              fontWeight: FontWeight.w500,
              fontSize: 13,
              color: kBlackColor,
              textAlign: TextAlign.center,
              maxLines: 2,
            ),
            SizedBox(
              height: 7.h,
            ),
            CustomText(
              title: widget.audio!.subtitle,
              fontWeight: FontWeight.w400,
              fontSize: 11,
              maxLines: 2,
              color: kGreyDarkColor,
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
