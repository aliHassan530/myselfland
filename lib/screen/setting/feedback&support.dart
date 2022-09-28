import 'package:animations/animations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:myselfland/screen/alert_box/pop_name.dart';
import 'package:myselfland/utilites/constants.dart';
import 'package:myselfland/widget/custom_button.dart';
import 'package:myselfland/widget/custom_text.dart';
import 'package:myselfland/widget/expand_tile.dart';

class FeedBackSupport extends StatefulWidget {
  const FeedBackSupport({Key? key}) : super(key: key);

  @override
  State<FeedBackSupport> createState() => _FeedBackSupportState();
}

class _FeedBackSupportState extends State<FeedBackSupport> {
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
          title: "Feedback & Support",
          fontWeight: FontWeight.w700,
          fontSize: 16,
          color: kBlackColor,
        ),
      ),
      body: Container(
        child: ListView(
          children: [
            SizedBox(
              height: 20.h,
            ),
            const ExpandTile(
              title: "How to cancel or change subscription?",
              detail:
                  "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sit accumsan sed vel cras ultrices ullamcorper dolor tortor. At habitant congue quis ultricies tristique vitae.",
            ),
            SizedBox(
              height: 20.h,
            ),
            const ExpandTile(
              title: "I was charged, but subscription wasn’t activated",
              detail:
                  "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sit accumsan sed vel cras ultrices ullamcorper dolor tortor. At habitant congue quis ultricies tristique vitae.",
            ),
            SizedBox(
              height: 20.h,
            ),
            const ExpandTile(
              title: "How can I get a refund?",
              detail:
                  "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sit accumsan sed vel cras ultrices ullamcorper dolor tortor. At habitant congue quis ultricies tristique vitae.",
            ),
            SizedBox(
              height: 20.h,
            ),
            const ExpandTile(
              title: "App crashing, freezing or lagging",
              detail:
                  "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sit accumsan sed vel cras ultrices ullamcorper dolor tortor. At habitant congue quis ultricies tristique vitae.",
            ),
            SizedBox(
              height: 20.h,
            ),
            const ExpandTile(
              title: "I can’t download audio",
              detail:
                  "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sit accumsan sed vel cras ultrices ullamcorper dolor tortor. At habitant congue quis ultricies tristique vitae.",
            ),
            SizedBox(
              height: 70.h,
            ),
            CustomText(
              title:
                  "Need further assistance or want to share your feedback? Please contact us at ",
              fontWeight: FontWeight.w400,
              fontSize: 15,
              color: kGreyDarkColor,
              lineHeight: 1.7,
              textAlign: TextAlign.center,
            ),
            CustomText(
              title: "email@email.com",
              fontWeight: FontWeight.w400,
              fontSize: 15,
              lineHeight: 1.7,
              color: kSecondaryColor,
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 25.h,
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomAppBar(
          color: kMainColor,
          elevation: 0,
          child: Container(
            height: 80,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                SizedBox(
                  height: 10.h,
                ),
                Center(
                  child: CustomButton(
                    onPressed: () {
                      showModal(
                        context: context,
                        configuration: const FadeScaleTransitionConfiguration(
                            transitionDuration: Duration(milliseconds: 800)),
                        builder: (BuildContext context) {
                          return PopName();
                        },
                      );
                    },
                    btnWidth: MediaQuery.of(context).size.width * 0.5,
                    title: "Contact Us",
                    textColor: kMainColor,
                    btnColor: kSecondaryColor,
                    btnRadius: 15,
                  ),
                ),
              ],
            ),
          )),
    );
  }
}
