import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:myselfland/utilites/constants.dart';
import 'package:myselfland/widget/custom_text.dart';

class JourneyAudionPlaying extends StatefulWidget {
  const JourneyAudionPlaying({Key? key}) : super(key: key);

  @override
  State<JourneyAudionPlaying> createState() => _JourneyAudionPlayingState();
}

class _JourneyAudionPlayingState extends State<JourneyAudionPlaying> {
  final audioPlayer = AudioPlayer();
  bool isPlaying = false;

  Duration duration = Duration();
  Duration position = Duration();

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
    return SafeArea(
      child: Scaffold(
        backgroundColor: kGreyLight,
        appBar: AppBar(
          systemOverlayStyle:
              SystemUiOverlayStyle(statusBarIconBrightness: Brightness.light),
          backgroundColor: kGreyLight,
          elevation: 0,
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
                  SizedBox(
                    height: 20.h,
                  ),
                  Center(
                    child: Container(
                      padding:
                          EdgeInsets.symmetric(horizontal: 15, vertical: 20),
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
                    title: "From reacting to consciously\n responding",
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
                  padding: const EdgeInsets.only(
                      left: 15, right: 25, bottom: 35, top: 15),
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(15),
                      topRight: Radius.circular(15),
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
                        height: 20.h,
                      ),
                      Container(
                        margin: EdgeInsets.symmetric(horizontal: 15),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              height: 30,
                              width: 30,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(100),
                                color: kWhiteLightColor,
                              ),
                              child: Center(
                                  child: Image.asset(
                                "assets/arrow-left (2).png",
                                height: 15,
                              )),
                            ),
                            CustomText(
                              title: "Flowing with Thoughts",
                              color: kBlackColor,
                              fontWeight: FontWeight.w500,
                              fontSize: 16,
                            ),
                            Container(
                              height: 30,
                              width: 30,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(100),
                                color: kWhiteLightColor,
                              ),
                              child: Center(
                                  child: Image.asset(
                                "assets/arrow-right.png",
                                height: 15,
                              )),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 25.h,
                      ),
                      Container(
                        margin: EdgeInsets.symmetric(horizontal: 35),
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
                                height: 20,
                              ),
                            ),
                            Container(
                              height: 50,
                              width: 50,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(100),
                                color: kSecondaryColor,
                              ),
                              child: InkWell(
                                  onTap: () async {
                                    if (isPlaying) {
                                      await audioPlayer.pause();
                                    } else {
                                      String? Url =
                                          'https://luan.xyz/files/audio/nasa_on_a_mission.mp3';
                                      await audioPlayer.play(Url);
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
                                height: 20,
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 20.h,
                      ),
                      Container(
                          width: 300,
                          child: Slider(
                              inactiveColor: kWhiteLightColor,
                              activeColor: kSecondaryColor,
                              value: position.inSeconds.toDouble(),
                              max: duration.inSeconds.toDouble(),
                              onChanged: (val) {
                                seekToNext(val.toInt());
                              })),
                      Container(
                        margin: EdgeInsets.symmetric(horizontal: 30),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("${duration.inSeconds}"),
                            Text("${duration.inSeconds - position.inSeconds}"),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 20.h,
                      ),
                      Container(
                        padding: EdgeInsets.symmetric(horizontal: 45),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Image.asset(
                              "assets/share-2.png",
                              height: 20.h,
                            ),
                            Image.asset(
                              "assets/heart (1).png",
                              height: 20.h,
                            ),
                            Image.asset(
                              "assets/download.png",
                              height: 20.h,
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
}
