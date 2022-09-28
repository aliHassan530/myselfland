import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:myselfland/screen/onbody_screens/onbody_screen_1.dart';
import 'package:myselfland/screen/onbody_screens/onbody_screen_2.dart';
import 'package:myselfland/screen/onbody_screens/onbody_screen_3.dart';
import 'package:myselfland/screen/onbody_screens/onbody_screen_4.dart';
import 'package:myselfland/screen/onbody_screens/onbody_screen_5.dart';

class OnBodyScreen extends StatefulWidget {
  @override
  _OnBodyScreenState createState() => _OnBodyScreenState();
}

class _OnBodyScreenState extends State<OnBodyScreen> {
  PageController controller = PageController();
  ScrollController scrollController = PageController();

  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: SystemUiOverlayStyle(
          statusBarBrightness: Brightness.light,
          statusBarIconBrightness: Brightness.light),
      child: Scaffold(
        body: Container(
          height: MediaQuery.of(context).size.height * 0.99,
          // color: KGreyColor,
          child: PageView(
            controller: controller,
            physics: NeverScrollableScrollPhysics(),
            children: [
              OnbodyScreen_1(
                next: controller,
              ),
              OnbodyScreen_2(
                next: controller,
              ),
              OnbodyScreen_3(
                next: controller,
              ),
              OnbodyScreen_4(
                next: controller,
              ),
              OnbodyScreen_5(
                next: controller,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
