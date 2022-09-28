import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:myselfland/utilites/constants.dart';
import 'package:myselfland/widget/custom_text.dart';

class SingleAudionPlaying extends StatefulWidget {
  const SingleAudionPlaying({Key? key}) : super(key: key);

  @override
  State<SingleAudionPlaying> createState() => _SingleAudionPlayingState();
}

class _SingleAudionPlayingState extends State<SingleAudionPlaying> {
  final audioPlayer = AudioPlayer();
  bool isPlaying = false;

  Duration duration = Duration();
  Duration position = Duration();
  String? Url = 'https://luan.xyz/files/audio/nasa_on_a_mission.mp3';

  void initState() {
    // TODO: implement initState
    super.initState();
    audioPlayer.onPlayerStateChanged.listen((state) {
      setState(() {
        isPlaying = state == PlayerState.PLAYING;
      });
    });
    audioPlayer.onDurationChanged.listen((newDuration) {
      setState(() {
        duration = newDuration;
      });
    });
    audioPlayer.onAudioPositionChanged.listen((newPostion) {
      setState(() {
        position = newPostion;
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
                      height: 120.h,
                    ),
                  ),
                ),
                SizedBox(
                  height: 20.h,
                ),
                CustomText(
                  title: "Catastrophizing",
                  color: kMainColor,
                  fontWeight: FontWeight.w700,
                  fontSize: 16,
                  textAlign: TextAlign.center,
                ),
                SizedBox(
                  height: 10.h,
                ),
                CustomText(
                  title: "How to stop expecting the\nworst",
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
                    EdgeInsets.only(left: 15, right: 15, bottom: 65.h, top: 15),
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
                      height: 25.h,
                    ),
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 45),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          InkWell(
                            onTap: () {
                              setState(() {
                                seekToNext(position.inSeconds - 15);
                              });
                            },
                            child: Image.asset(
                              "assets/carbon_rewind-10.png",
                              height: 30,
                            ),
                          ),
                          Container(
                            height: 52,
                            width: 52,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(100),
                              color: kSecondaryColor,
                            ),
                            child: InkWell(
                                onTap: () async {
                                  if (isPlaying) {
                                    await audioPlayer.pause();
                                  } else {
                                    await audioPlayer.play(Url!);
                                  }
                                  setState(() {
                                    isPlaying = true;
                                  });
                                },
                                child: Icon(
                                  isPlaying ? Icons.pause : Icons.play_arrow,
                                  size: 35,
                                  color: Colors.white,
                                )),
                          ),
                          InkWell(
                            onTap: () {
                              setState(() {
                                seekToNext(position.inSeconds + 15);
                              });
                            },
                            child: Image.asset(
                              "assets/carbon_rewind-10 (1).png",
                              height: 30,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 40.h,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Container(
                            width: MediaQuery.of(context).size.width * 0.91,
                            height: 20,
                            child: Slider(
                                inactiveColor: kWhiteLightColor,
                                activeColor: kSecondaryColor,
                                value: position.inSeconds.toDouble(),
                                max: duration.inSeconds.toDouble(),
                                onChanged: (val) {
                                  seekToNext(val.toInt());
                                })),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            formatTime(duration),
                            style:
                                TextStyle(color: kGreyDarkColor, fontSize: 13),
                          ),
                          Text(
                            formatTime(duration - position),
                            style:
                                TextStyle(color: kGreyDarkColor, fontSize: 13),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 30.h,
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 7),
                      padding: EdgeInsets.symmetric(horizontal: 50),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Image.asset(
                            "assets/share-2.png",
                            height: 22.h,
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

  stopPlay() {
    audioPlayer.stop();
  }

  seekToNext(int sec) {
    if (sec < duration.inSeconds && sec > 0) {
      Duration newPos = Duration(seconds: sec);
      audioPlayer.seek(newPos);
    }
  }

  nexttoSec(int sec) {
    // To seek the audio to a new position
    Duration newPos = Duration(seconds: sec);
    // audioPlayer.setPlaybackRate(newPos.inSeconds);
  }

  String formatTime(Duration duration) {
    String twoDigits(int n) => n.toString().padLeft(2, '0');
    final hours = twoDigits(duration.inHours);
    final minutes = twoDigits(duration.inMinutes.remainder(60));
    final seconds = twoDigits(duration.inSeconds.remainder(60));
    return [
      if (duration.inHours > 0) hours,
      minutes,
      seconds,
    ].join(':');
  }
}
