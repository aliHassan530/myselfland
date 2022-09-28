import 'package:expansion_tile_card/expansion_tile_card.dart';
import 'package:flutter/material.dart';
import 'package:myselfland/utilites/constants.dart';
import 'package:myselfland/widget/custom_text.dart';

class ExpandTile extends StatelessWidget {
  const ExpandTile({
    this.title,
    this.detail,
  });

  final title;
  final detail;

  @override
  Widget build(BuildContext context) {
    return ExpansionTileCard(
      contentPadding: EdgeInsets.symmetric(horizontal: 20),
      baseColor: kMainColor,
      expandedColor: kSkyLightColor,
      title: CustomText(
        title: title,
        fontSize: 14,
        fontWeight: FontWeight.w500,
      ),
      expandedTextColor: kSecondaryColor,
      animateTrailing: true,
      children: [
        Container(
            padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
            child: Text(
              detail,
              style: TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 14,
                color: kGreyDarkColor,
                height: 1.5,
              ),
            )),
      ],
    );
  }
}
