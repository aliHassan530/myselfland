import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:myselfland/utilites/constants.dart';
import 'package:myselfland/widget/custom_text.dart';

class AboutMySelfLand extends StatefulWidget {
  const AboutMySelfLand({Key? key}) : super(key: key);

  @override
  State<AboutMySelfLand> createState() => _AboutMySelfLandState();
}

class _AboutMySelfLandState extends State<AboutMySelfLand> {
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
          title: "About Myselfland",
          fontWeight: FontWeight.w700,
          fontSize: 16,
          color: kBlackColor,
        ),
      ),
      body: Container(
        margin: EdgeInsets.symmetric(horizontal: 20),
        child: ListView(
          children: [
            SizedBox(
              height: 20.h,
            ),
            CustomText(
              title:
                  "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Elit potenti tellus vel, neque. Amet turpis feugiat pulvinar sagittis pharetra sagittis aliquam. Lectus senectus id nunc fermentum ipsum sed eget maecenas ut. Iaculis massa egestas velit nisl rhoncus, scelerisque odio cursus.\n\nMorbi enim, ut sed vulputate est enim morbi eget non. Pellentesque enim nec est sed habitant at lorem feugiat. Justo arcu massa dignissim facilisi posuere nam neque. Ultrices et arcu, sapien et.\n\nVelit mauris ante malesuada arcu. Quis amet condimentum pulvinar sed augue gravida. Elit hac morbi in sit et ullamcorper adipiscing consequat. Nunc sit augue scelerisque suspendisse.\n\nCursus convallis arcu sit nunc quis eget urna. Cursus placerat et nisl ut vitae consectetur nisi. Est nunc arcu integer posuere cras lacus aenean euismod. Sed ullamcorper mi cursus duis. Egestas urna mattis auctor et. At pharetra ipsum eget facilisis et in volutpat. Dignissim sed non elementum duis massa malesuada. Sed donec eget at enim nec. ",
              fontWeight: FontWeight.w400,
              fontSize: 15,
              color: kGreyDarkColor,
            ),
          ],
        ),
      ),
    );
  }
}
