import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:myselfland/model/featured_model.dart';
import 'package:myselfland/screen/audio_play.dart/journey_locked.dart';
import 'package:myselfland/screen/audio_play.dart/single_audio_locked.dart';
import 'package:myselfland/screen/audio_play.dart/single_audio_playing.dart';
import 'package:myselfland/screen/setting/unlock_myselfland.dart';
import 'package:myselfland/utilites/constants.dart';
import 'package:myselfland/utilites/helper.dart';
import 'package:myselfland/widget/custom_text.dart';

class FeaturedWidget extends StatefulWidget {
  final FeatureModel? feature;
  final ind;

  const FeaturedWidget({Key? key, this.feature, this.ind}) : super(key: key);

  @override
  State<FeaturedWidget> createState() => _FeaturedWidgetState();
}

class _FeaturedWidgetState extends State<FeaturedWidget> {
  Color selectedColour(int pos) {
    Color? c;
    if (pos % 4 == 0) c = Color(0xFFF7E9FF);
    if (pos % 4 == 1) c = Color(0xffFFEFCF);
    if (pos % 4 == 2) c = Color(0xffE9EFFF);
    if (pos % 4 == 3) c = Color(0xffE3FBF9);
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
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: EdgeInsets.only(right: 20),
            width: MediaQuery.of(context).size.width * 0.32,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Stack(
                  children: [
                    Container(
                      padding: EdgeInsets.only(
                          left: 15, right: 15, bottom: 5, top: 10),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: selectedColour(widget.ind),
                      ),
                      child: Image.asset(
                        widget.feature!.img,
                        height: 96,
                        width: 100,
                        fit: BoxFit.fill,
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    widget.feature!.quality == null
                        ? Container()
                        : Positioned(
                            right: 15,
                            top: 10,
                            child: Container(
                              padding: EdgeInsets.symmetric(
                                  vertical: 5, horizontal: 5),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                                color: kBlackColor.withOpacity(0.2),
                              ),
                              child: CustomText(
                                title: widget.feature!.quality,
                                fontWeight: FontWeight.w500,
                                fontSize: 12,
                                color: kMainColor,
                                textAlign: TextAlign.center,
                              ),
                            ),
                          ),
                  ],
                ),
                SizedBox(
                  height: 14.h,
                ),
                CustomText(
                  title: widget.feature!.title,
                  fontWeight: FontWeight.w500,
                  fontSize: 14,
                  maxLines: 2,
                  color: kBlackColor,
                  textAlign: TextAlign.center,
                ),
                SizedBox(
                  height: 7.h,
                ),
                CustomText(
                  title: widget.feature!.subtitle,
                  fontWeight: FontWeight.w400,
                  fontSize: 11,
                  maxLines: 2,
                  color: kGreyDarkColor,
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
