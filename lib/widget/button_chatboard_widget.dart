import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:myselfland/utilites/constants.dart';
import 'package:myselfland/widget/custom_text.dart';

class ButtonChatBoard extends StatelessWidget {
  const ButtonChatBoard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            ChatButton(
              title: "Hatred",
              textColor: kRedColor,
              bgColor: kRedColor.withOpacity(0.2),
            ),
            ChatButton(
              title: "Anger",
              textColor: kRedColor,
              bgColor: kRedColor.withOpacity(0.2),
            ),
            ChatButton(
              title: "Fury",
              textColor: kRedColor,
              bgColor: kRedColor.withOpacity(0.2),
            ),
            ChatButton(
              title: "Rage",
              textColor: kRedColor,
              bgColor: kRedColor.withOpacity(0.2),
            ),
          ],
        ),
        SizedBox(
          height: 15.h,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            ChatButton(
              title: "Upset",
              textColor: kSecondaryColor,
              bgColor: kSecondaryColor.withOpacity(0.2),
            ),
            ChatButton(
              title: "Regretful",
              textColor: kSecondaryColor,
              bgColor: kSecondaryColor.withOpacity(0.2),
            ),
            ChatButton(
              title: "Depressed",
              textColor: kSecondaryColor,
              bgColor: kSecondaryColor.withOpacity(0.2),
            ),
            ChatButton(
              title: "Hurt",
              textColor: kSecondaryColor,
              bgColor: kSecondaryColor.withOpacity(0.2),
            ),
          ],
        ),
        SizedBox(
          height: 15.h,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            ChatButton(
              title: "Scared",
              textColor: kDarkBlueColor,
              bgColor: kDarkBlueColor.withOpacity(0.2),
            ),
            ChatButton(
              title: "Anxious",
              textColor: kDarkBlueColor,
              bgColor: kDarkBlueColor.withOpacity(0.2),
            ),
            ChatButton(
              title: "Terrified",
              textColor: kDarkBlueColor,
              bgColor: kDarkBlueColor.withOpacity(0.2),
            ),
            ChatButton(
              title: "Alamred",
              textColor: kDarkBlueColor,
              bgColor: kDarkBlueColor.withOpacity(0.2),
            ),
          ],
        ),
        SizedBox(
          height: 15.h,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            ChatButton(
              title: "Thrilled",
              textColor: kGreenColor,
              bgColor: kGreenColor.withOpacity(0.1),
            ),
            ChatButton(
              title: "Curious",
              textColor: kGreenColor,
              bgColor: kGreenColor.withOpacity(0.1),
            ),
            ChatButton(
              title: "Delighted",
              textColor: kGreenColor,
              bgColor: kGreenColor.withOpacity(0.1),
            ),
            ChatButton(
              title: "Confident",
              textColor: kGreenColor,
              bgColor: kGreenColor.withOpacity(0.1),
            ),
          ],
        ),
        SizedBox(
          height: 15.h,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            ChatButton(
              title: "Grateful",
              textColor: kOrangeDarkColor,
              bgColor: kOrangeDarkColor.withOpacity(0.1),
            ),
            ChatButton(
              title: "Happy",
              textColor: kOrangeDarkColor,
              bgColor: kOrangeDarkColor.withOpacity(0.1),
            ),
            ChatButton(
              title: "Relieved",
              textColor: kOrangeDarkColor,
              bgColor: kOrangeDarkColor.withOpacity(0.1),
            ),
            ChatButton(
              title: "Content",
              textColor: kOrangeDarkColor,
              bgColor: kOrangeDarkColor.withOpacity(0.1),
            ),
          ],
        ),
      ],
    );
  }
}

class ChatButton extends StatefulWidget {
  ChatButton({
    this.title,
    this.bgColor,
    this.textColor,
  });

  String? title;
  Color? bgColor;
  Color? textColor;

  @override
  State<ChatButton> createState() => _ChatButtonState();
}

class _ChatButtonState extends State<ChatButton> {
  bool select = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          select = !select;
        });
      },
      child: Container(
        width: MediaQuery.of(context).size.width * 0.21,
        padding: EdgeInsets.symmetric(horizontal: 12, vertical: 14),
        decoration: BoxDecoration(
          color: select == true
              ? kSecondaryColor
              : widget.bgColor ?? Colors.transparent,
          borderRadius: BorderRadius.circular(7),
          border:
              Border.all(color: select == true ? kSecondaryColor : kMainColor),
        ),
        child: Center(
          child: CustomText(
            title: widget.title,
            fontWeight: FontWeight.w400,
            fontSize: 12,
            maxLines: 1,
            color: select == true
                ? kMainColor
                : widget.textColor ?? Colors.transparent,
          ),
        ),
      ),
    );
  }
}
