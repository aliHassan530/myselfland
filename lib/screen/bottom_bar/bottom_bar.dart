import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:myselfland/screen/home/audio_guide.dart';
import 'package:myselfland/screen/home/chat_board.dart';
import 'package:myselfland/screen/home/home_screen.dart';
import 'package:myselfland/screen/home/stress_de.dart';
import 'package:myselfland/screen/setting/setting.dart';
import 'package:myselfland/utilites/constants.dart';

import '../../widget/custom_text.dart';

class BottomBar extends StatefulWidget {
  BottomBar({
    required this.val,
  });

  final int val;

  @override
  _BottomBarState createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  List iconList = [
    HomeScreen(),
    AudioGuide(),
    DeStressScreen(),
    ChatBoard(),
    Setting(),
  ];

  late int currentindex = widget.val as int;

  start() {
    setState(() {
      currentindex = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: SystemUiOverlayStyle(systemNavigationBarColor: kMainColor),
      child: Scaffold(
        extendBody: false,
        backgroundColor: kMainColor,
        resizeToAvoidBottomInset: false,
        body: iconList[currentindex],
        bottomNavigationBar: BottomAppBar(
          elevation: 15,
          color: Colors.transparent,
          shape: const CircularNotchedRectangle(),
          clipBehavior: Clip.antiAlias,
          notchMargin: 5.0,
          child: Container(
            height: 75,
            child: ClipRRect(
              child: BottomNavigationBar(
                backgroundColor: kMainColor,
                type: BottomNavigationBarType.fixed,
                showSelectedLabels: false,
                showUnselectedLabels: false,
                currentIndex: widget.val,
                onTap: (index) {
                  setState(() {
                    currentindex = index;
                    print(currentindex);
                  });
                },
                items: [
                  BottomNavigationBarItem(
                    label: "",
                    icon: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          "assets/home.png",
                          height: 21,
                          color: currentindex == 0
                              ? kSecondaryColor
                              : kBlackColor.withOpacity(0.2),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        CustomText(
                          title: "Home",
                          fontSize: 10,
                          fontWeight: currentindex == 0
                              ? FontWeight.w700
                              : FontWeight.w400,
                          maxLines: 1,
                          color: currentindex == 0
                              ? kSecondaryColor
                              : kBlackColor.withOpacity(0.2),
                        ),
                      ],
                    ),
                  ),
                  BottomNavigationBarItem(
                    label: "",
                    icon: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          "assets/ph_path-light.png",
                          height: 21,
                          color: currentindex == 1
                              ? kSecondaryColor
                              : kBlackColor.withOpacity(0.2),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        CustomText(
                          title: "Guides",
                          fontSize: 10,
                          maxLines: 1,
                          fontWeight: currentindex == 1
                              ? FontWeight.w700
                              : FontWeight.w400,
                          color: currentindex == 1
                              ? kSecondaryColor
                              : kBlackColor.withOpacity(0.2),
                        ),
                      ],
                    ),
                  ),
                  BottomNavigationBarItem(
                    label: "",
                    icon: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Image.asset(
                          "assets/Vector (11).png",
                          height: 21,
                          color: currentindex == 2
                              ? kSecondaryColor
                              : kBlackColor.withOpacity(0.2),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        CustomText(
                          title: "De-Stress",
                          fontSize: 10,
                          maxLines: 1,
                          fontWeight: currentindex == 2
                              ? FontWeight.w700
                              : FontWeight.w400,
                          color: currentindex == 2
                              ? kSecondaryColor
                              : kBlackColor.withOpacity(0.2),
                        ),
                      ],
                    ),
                  ),
                  BottomNavigationBarItem(
                    label: "",
                    icon: Column(
                      children: [
                        Image.asset(
                          "assets/fluent_weather-duststorm-20-regular.png",
                          height: 21,
                          color: currentindex == 3
                              ? kSecondaryColor
                              : kBlackColor.withOpacity(0.2),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        CustomText(
                          title: "Emotions",
                          fontSize: 10,
                          maxLines: 1,
                          fontWeight: currentindex == 3
                              ? FontWeight.w700
                              : FontWeight.w400,
                          color: currentindex == 3
                              ? kSecondaryColor
                              : kBlackColor.withOpacity(0.2),
                        ),
                      ],
                    ),
                  ),
                  BottomNavigationBarItem(
                    label: "Settings",
                    icon: Column(
                      children: [
                        Image.asset(
                          "assets/settings.png",
                          height: 21,
                          color: currentindex == 4
                              ? kSecondaryColor
                              : kBlackColor.withOpacity(0.2),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        CustomText(
                          title: "Settings",
                          fontSize: 10,
                          fontWeight: currentindex == 1
                              ? FontWeight.w700
                              : FontWeight.w400,
                          maxLines: 1,
                          color: currentindex == 4
                              ? kSecondaryColor
                              : kBlackColor.withOpacity(0.2),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
