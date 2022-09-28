import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:myselfland/model/de_stress_model.dart';
import 'package:myselfland/screen/audio_play.dart/journey_locked.dart';
import 'package:myselfland/screen/audio_play.dart/single_audio_locked.dart';
import 'package:myselfland/screen/audio_play.dart/single_audio_playing.dart';
import 'package:myselfland/screen/setting/unlock_myselfland.dart';
import 'package:myselfland/utilites/constants.dart';
import 'package:myselfland/utilites/helper.dart';
import 'package:myselfland/widget/custom_text.dart';

class DeStressHomeWidget extends StatefulWidget {
  final DeStressModel? audio;
  final ind;

  DeStressHomeWidget({Key? key, this.audio, this.ind}) : super(key: key);

  @override
  State<DeStressHomeWidget> createState() => _DeStressHomeWidgetState();
}

class _DeStressHomeWidgetState extends State<DeStressHomeWidget> {
  Color selectedColour(int pos) {
    Color? c;

    if (pos % 3 == 0) c = Color(0xffE8FEFF);
    if (pos % 3 == 1) c = Color(0xFFFFEDFA);
    if (pos % 3 == 2) c = Color(0xFFE9E9FF);
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
                Container(
                  padding:
                      EdgeInsets.only(left: 15, right: 15, bottom: 5, top: 10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: selectedColour(widget.ind),
                  ),
                  child: Image.asset(
                    widget.audio!.img,
                    height: 96,
                    width: 100,
                    fit: BoxFit.fill,
                  ),
                ),
                SizedBox(
                  height: 14.h,
                ),
                CustomText(
                  title: widget.audio!.title,
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
        ],
      ),
    );
  }
}
