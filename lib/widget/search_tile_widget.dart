import 'package:animations/animations.dart';
import 'package:flutter/material.dart';
import 'package:myselfland/screen/alert_box/pop_how_its_work.dart';
import 'package:myselfland/utilites/constants.dart';
import 'package:myselfland/widget/custom_text.dart';

class SearchTile extends StatelessWidget {
  const SearchTile({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        border: Border.all(color: kWhiteLightColor),
      ),
      child: ListTile(
        onTap: () {
          showModal(
            context: context,
            configuration: const FadeScaleTransitionConfiguration(
                transitionDuration: Duration(milliseconds: 800)),
            builder: (BuildContext context) {
              return PopHowItsWork();
            },
          );
        },
        leading: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              "assets/search.png",
              height: 18,
            ),
          ],
        ),
        minLeadingWidth: -4,
        title: CustomText(
          title: "Search...",
          color: kGreyDarkColor.withOpacity(0.6),
          fontSize: 14,
        ),
      ),
    );
  }
}
