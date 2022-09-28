import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:myselfland/model/JourneyAudioModel.dart';
import 'package:myselfland/screen/setting/unlock_myselfland.dart';
import 'package:myselfland/utilites/constants.dart';
import 'package:myselfland/utilites/helper.dart';
import 'package:myselfland/widget/custom_button.dart';
import 'package:myselfland/widget/custom_text.dart';

class JourneyLocked extends StatefulWidget {
  const JourneyLocked({Key? key}) : super(key: key);

  @override
  State<JourneyLocked> createState() => _JourneyLockedState();
}

class _JourneyLockedState extends State<JourneyLocked> {
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
            height: MediaQuery.of(context).size.height * 0.5,
            padding: EdgeInsets.symmetric(horizontal: 25),
            child: ListView(
              children: [
                Center(
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 15, vertical: 25),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: kBlackColor.withOpacity(0.1),
                    ),
                    child: Image.asset(
                      "assets/Wormies Staying Home.png",
                      height: 90.h,
                    ),
                  ),
                ),
                SizedBox(
                  height: 20.h,
                ),
                CustomText(
                  title: "Living the Moment of Now",
                  color: kMainColor,
                  fontWeight: FontWeight.w700,
                  fontSize: 16,
                  textAlign: TextAlign.center,
                ),
                SizedBox(
                  height: 10.h,
                ),
                CustomText(
                  title: "Why depression and anxiety\nare connected",
                  color: kMainColor.withOpacity(0.7),
                  fontWeight: FontWeight.w400,
                  fontSize: 14,
                  lineHeight: 1.5,
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
                  height: 15.h,
                ),
                CustomText(
                  title:
                      "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi nisl, eu nisi est id eu commo eu. Duis mattis potenti auctor lectus sit vivamis.",
                  color: kMainColor.withOpacity(0.7),
                  fontWeight: FontWeight.w400,
                  fontSize: 14,
                  lineHeight: 1.5,
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
                height: MediaQuery.of(context).size.height * 0.3,
                decoration: BoxDecoration(
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(25),
                    topRight: Radius.circular(25),
                  ),
                  color: kMainColor,
                ),
                child: ListView(
                  children: [
                    SizedBox(
                      height: 20.h,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset("assets/Line 4.png",
                            color: kBlackColor, width: 50),
                      ],
                    ),
                    SizedBox(
                      height: 20.h,
                    ),
                    ListView.builder(
                      shrinkWrap: true,
                      physics: ClampingScrollPhysics(),
                      itemCount: journeyAudioModelList.length,
                      itemBuilder: (context, index) {
                        return JourneyLockedMusic(
                          musicSong: journeyAudioModel[index],
                        );
                      },
                    ),
                    SizedBox(
                      height: 30.h,
                    ),
                    subcribe == true
                        ? Container()
                        : Center(
                            child: CustomButton(
                              onPressed: () {
                                Helper.toScreen(context, UnlockMySelfLand());
                              },
                              btnWidth: MediaQuery.of(context).size.width * 0.6,
                              title: "Get a 7-day free trial",
                              textColor: kMainColor,
                              btnColor: kSecondaryColor,
                              btnRadius: 15,
                            ),
                          ),
                    SizedBox(
                      height: 30.h,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
      bottomNavigationBar: BottomAppBar(
          color: kMainColor,
          elevation: 0,
          child: Container(
              height: 55,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Container(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Center(
                          child: Container(
                            width: MediaQuery.of(context).size.width * 0.6,
                            padding: EdgeInsets.symmetric(vertical: 15),
                            color: kMainColor,
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
                                  "assets/trash-2.png",
                                  height: 23.h,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ))),
    );
  }
}

class JourneyLockedMusic extends StatefulWidget {
  final JourneyAudioModel? musicSong;

  const JourneyLockedMusic({
    Key? key,
    this.musicSong,
  }) : super(key: key);

  @override
  State<JourneyLockedMusic> createState() => _JourneyLockedMusicState();
}

class _JourneyLockedMusicState extends State<JourneyLockedMusic> {
  final audioPlayer = AudioPlayer();
  bool isPlaying = false;

  initState() {
    super.initState();
    audioPlayer.onPlayerStateChanged.listen((state) {
      setState(() {
        isPlaying = state == PlayerState.PLAYING;
      });
    });
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    audioPlayer.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListTile(
        // onTap: () {
        //   subcribe == true
        //       ? Helper.toScreen(context, JourneyAudionPlaying())
        //       : Helper.toScreen(context, SingleAudioLocked());
        // },
        leading: Container(
          height: 52,
          width: 52,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            color: kGreyLight,
          ),
          child: Center(
              child: Image.asset(
            "assets/headphones.png",
            height: 23,
            color: kMainColor,
          )),
        ),
        title: CustomText(
          title: widget.musicSong?.title,
          color: kBlackColor,
          fontSize: 14,
          fontWeight: FontWeight.w400,
        ),
        subtitle: CustomText(
          title: widget.musicSong?.subtitle,
          color: kGreyDarkColor,
          fontSize: 14,
          fontWeight: FontWeight.w400,
        ),
        trailing: Container(
          height: 30,
          width: 30,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(100),
            color: kSecondaryColor,
          ),
          child: subcribe == true
              ? InkWell(
                  onTap: () async {
                    if (isPlaying) {
                      await audioPlayer.pause();
                    } else {
                      await audioPlayer.play(widget.musicSong?.url);
                    }
                    setState(() {
                      isPlaying = true;
                    });
                  },
                  child: Icon(
                    isPlaying ? Icons.pause : Icons.play_arrow,
                    size: 25,
                    color: Colors.white,
                  ))
              : Container(
                  height: 30,
                  width: 30,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100),
                    color: kWhiteLightColor,
                  ),
                  child: Center(
                      child: Image.asset(
                    "assets/lock (1).png",
                    height: 15,
                  )),
                ),
        ),
      ),
    );
  }
}
