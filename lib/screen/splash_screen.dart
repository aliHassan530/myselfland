import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:myselfland/screen/auth/login.dart';
import 'package:myselfland/screen/bottom_bar/bottom_bar.dart';
import 'package:myselfland/screen/onbody_screens/onbody_screen.dart';
import 'package:myselfland/screen/setting/unlock_myselfland.dart';
import 'package:myselfland/utilites/constants.dart';
import 'package:myselfland/utilites/helper.dart';
import 'package:myselfland/widget/custom_text.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(Duration(seconds: 3), () {
      getSubcribtion();
      getValidationData().whenComplete(() => continueapp == true
          ? Helper.toRemoveUntiScreen(context, BottomBar(val: 0))
          : Helper.toRemoveUntiScreen(context, OnBodyScreen()));
    });

    print("subcribe${subcribe}");
    SystemChrome.setEnabledSystemUIOverlays([SystemUiOverlay.top]);
  }

  Future getValidationData() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();

    setState(() {
      continueapp = prefs.getBool("continue")!;
    });
    print(continueapp);
  }

  Future getSubcribtion() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();

    setState(() {
      subcribe = prefs.getBool("subcribe")!;
    });
    print(subcribe);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kSecondaryColor,
      body: Stack(
        children: [
          Container(
            height: double.infinity,
            width: double.infinity,
            child: Image.asset(
              "assets/1. splash.png",
              fit: BoxFit.fill,
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                "assets/Logo-white 1.png",
                height: 100,
              ),
              SizedBox(
                height: 20,
              ),
              CustomText(
                title: "All your feelings matter",
                color: kMainColor,
                textAlign: TextAlign.center,
                fontSize: 16,
                fontWeight: FontWeight.w400,
              )
            ],
          ),
        ],
      ),
    );
  }
}
