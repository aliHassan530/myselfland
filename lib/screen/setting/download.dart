import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:myselfland/model/favourite_model.dart';
import 'package:myselfland/model/search_model.dart';
import 'package:myselfland/screen/audio_play.dart/journey_locked.dart';
import 'package:myselfland/screen/audio_play.dart/single_audio_locked.dart';
import 'package:myselfland/screen/audio_play.dart/single_audio_playing.dart';
import 'package:myselfland/screen/setting/unlock_myselfland.dart';
import 'package:myselfland/utilites/constants.dart';
import 'package:myselfland/utilites/helper.dart';
import 'package:myselfland/widget/custom_text.dart';

class DownLoad extends StatefulWidget {
  const DownLoad({Key? key}) : super(key: key);

  @override
  State<DownLoad> createState() => _DownLoadState();
}

class _DownLoadState extends State<DownLoad> {
  TextEditingController search = TextEditingController();

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
          title: "Downloads",
          fontWeight: FontWeight.w700,
          fontSize: 16,
          color: kBlackColor,
        ),
      ),
      body: Container(
        margin: EdgeInsets.symmetric(horizontal: 15),
        child: ListView(
          children: [
            SizedBox(
              height: 20.h,
            ),
            GridView.builder(
              shrinkWrap: true,
              physics: ClampingScrollPhysics(),
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisSpacing: 20,
                  crossAxisSpacing: 12,
                  childAspectRatio: 0.67),
              itemCount: searchList.length,
              itemBuilder: (context, index) {
                return ShowGridViewWidget(
                  favourit: favourite[index],
                  ind: index,
                );
              },
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

class ShowGridViewWidget extends StatefulWidget {
  final FavouriteModel? favourit;
  final ind;

  const ShowGridViewWidget({Key? key, this.favourit, this.ind})
      : super(key: key);

  @override
  State<ShowGridViewWidget> createState() => _ShowGridViewWidgetState();
}

class _ShowGridViewWidgetState extends State<ShowGridViewWidget> {
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
                    widget.favourit!.img,
                    height: 90,
                  ),
                ),
                widget.favourit!.quality == null
                    ? Container()
                    : Positioned(
                        right: 0,
                        child: Container(
                          margin: EdgeInsets.only(right: 30, top: 15),
                          padding:
                              EdgeInsets.symmetric(vertical: 5, horizontal: 5),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            color: kBlackColor.withOpacity(0.2),
                          ),
                          child: CustomText(
                            title: widget.favourit!.quality,
                            fontWeight: FontWeight.w500,
                            fontSize: 11,
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
              title: widget.favourit!.title,
              fontWeight: FontWeight.w500,
              fontSize: 13,
              color: kBlackColor,
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 7.h,
            ),
            CustomText(
              title: widget.favourit!.subtitle,
              fontWeight: FontWeight.w400,
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
