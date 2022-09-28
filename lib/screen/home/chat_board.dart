import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:myselfland/model/chat_board_model.dart';
import 'package:myselfland/screen/home/audio_guide.dart';
import 'package:myselfland/utilites/constants.dart';
import 'package:myselfland/widget/button_chatboard_widget.dart';
import 'package:myselfland/widget/custom_text.dart';
import 'package:myselfland/widget/custom_textfield.dart';
import 'package:myselfland/widget/msg_widget.dart';

class ChatBoard extends StatefulWidget {
  const ChatBoard({Key? key}) : super(key: key);

  @override
  State<ChatBoard> createState() => _ChatBoardState();
}

class _ChatBoardState extends State<ChatBoard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kMainColor,
        elevation: 0,
        automaticallyImplyLeading: false,
        title: CustomText(
          title: "Explore & Navigate Your Emotions",
          fontWeight: FontWeight.w700,
          fontSize: 14,
          color: kBlackColor,
        ),
        centerTitle: true,
        actions: [
          Container(
            margin: EdgeInsets.only(right: 18),
            child: Row(
              children: [
                Image.asset(
                  "assets/help-circle.png",
                  height: 25,
                ),
              ],
            ),
          ),
        ],
      ),
      body: ListView(
        children: [
          Container(
            margin: EdgeInsets.symmetric(horizontal: 15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                LeftBubble(
                  msg: "Good morning Laura! How do you feel today?",
                ),
                RightBubble(
                  msg: "I am so so.",
                ),
                LeftBubble(
                  msg: "Name emotions that you are experiencing.",
                ),
                SizedBox(
                  height: 30.h,
                ),
                ButtonChatBoard(),
                SizedBox(
                  height: 30.h,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width * 0.72,
                      height: 52,
                      child: CustomTextField(
                        // controller: name,
                        cursorColor: kGreyDarkColor,
                        textFontSize: 12,
                        textColor: kGreyDarkColor,
                        isOutlineInputBorderColor: kWhiteLightColor,
                        hintText: "Regretful, depressed, hurt",
                        hintTextColor: kGreyDarkColor,
                        hintFontSize: 12,
                      ),
                    ),
                    Container(
                      height: 43,
                      width: 43,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: kSecondaryColor,
                      ),
                      child: Center(
                          child: Image.asset(
                        "assets/send.png",
                        height: 18.33,
                      )),
                    )
                  ],
                ),
                RightBubble(
                  msg: "Regretful, depressed, hurt",
                ),
                LeftBubble(
                  msg: "Lorem ipsum dolor sit amt consectetur adipiscin elit.",
                ),
                AudionBubble(
                  intervaltime: "0:00",
                  time: " 1:42",
                ),
                LeftBubble(
                  msg:
                      "Do you notice any of the described cognitive distortions? Select the options that you find suitable. ",
                ),
                SizedBox(
                  height: 25.h,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SelectButton(
                      title: "Catastrophizing",
                      color: kWhiteColor,
                    ),
                    SelectButton(
                      color: kWhiteColor,
                      title: "All-or-nothing thinking",
                    ),
                  ],
                ),
                SizedBox(
                  height: 15.h,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SelectButton(
                      color: kWhiteColor,
                      title: "Mental Filtering",
                    ),
                    SelectButton(
                      color: kWhiteColor,
                      title: "Shoulding",
                    ),
                    SelectButton(
                      color: kWhiteColor,
                      title: "Blaming",
                    ),
                  ],
                ),
                RightBubble(
                  msg: "Catastrophizing",
                ),
                LeftBubble(
                  msg:
                      "The following guides can give you a helpful perspective and help you better understand and handle your emotions:",
                ),
                SizedBox(
                  height: 20.h,
                ),
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            height: 240,
            child: ListView.builder(
              physics: ClampingScrollPhysics(),
              shrinkWrap: true,
              padding: EdgeInsets.only(left: 15),
              scrollDirection: Axis.horizontal,
              itemCount: chatBoardList.length,
              itemBuilder: (context, index) {
                return ChatBoardProductWidget(
                  chat: chatBoard[index],
                  ind: index,
                );
              },
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                RightBubble(
                  msg: "Tell me more",
                ),
                SizedBox(
                  height: 20.h,
                ),
                CustomText(
                  title: "You are feeling...",
                  fontWeight: FontWeight.w700,
                  fontSize: 14,
                  color: kBlackColor,
                ),
                SizedBox(
                  height: 20.h,
                ),
                SelectLisTileChatBoardWidget(
                  title: "I’m too overwhelmed with emotions",
                  color: kDarkBlueColor.withOpacity(0.2),
                  img: "assets/lucide_zap.png",
                ),
                SizedBox(
                  height: 20.h,
                ),
                SelectLisTileChatBoardWidget(
                  title:
                      "I’m so depressed that I can’t feel anything, feeling numb",
                  color: kOrangeDarkColor.withOpacity(0.2),
                  img: "assets/Vector (10).png",
                ),
                SizedBox(
                  height: 20.h,
                ),
                SelectLisTileChatBoardWidget(
                  title: "I don’t know how to define what I’m feeling",
                  color: kSecondaryColor.withOpacity(0.2),
                  img: "assets/help-circle (1).png",
                ),
                SizedBox(
                  height: 30.h,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width * 0.73,
                      height: 52,
                      child: CustomTextField(
                        // controller: name,
                        cursorColor: kGreyDarkColor,
                        textFontSize: 12,
                        textColor: kGreyDarkColor,
                        isOutlineInputBorderColor: kWhiteLightColor,
                        hintText: "Your reply...",
                        hintTextColor: kGreyDarkColor,
                        hintFontSize: 12,
                      ),
                    ),
                    Container(
                      height: 43,
                      width: 43,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: kSecondaryColor,
                      ),
                      child: Center(
                          child: Image.asset(
                        "assets/send.png",
                        height: 18.33,
                      )),
                    )
                  ],
                ),
                SizedBox(
                  height: 30.h,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class ChatBoardProductWidget extends StatefulWidget {
  final ChatBoardModel? chat;
  final ind;

  const ChatBoardProductWidget({Key? key, this.chat, this.ind})
      : super(key: key);

  @override
  State<ChatBoardProductWidget> createState() => _ChatBoardProductWidgetState();
}

class _ChatBoardProductWidgetState extends State<ChatBoardProductWidget> {
  Color selectedColour(int pos) {
    Color? c;
    if (pos % 3 == 0) c = kPinkLightColor;
    if (pos % 3 == 1) c = kOrangeLightColor;
    if (pos % 3 == 2) c = kSkyLightColor;
    return c!;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(
        horizontal: 5,
      ),
      width: MediaQuery.of(context).size.width * 0.43,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Stack(
            children: [
              Container(
                width: MediaQuery.of(context).size.width * 0.4,
                padding: EdgeInsets.symmetric(vertical: 20, horizontal: 15),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: selectedColour(widget.ind),
                ),
                child: Image.asset(
                  widget.chat!.img,
                  height: 90,
                ),
              ),
              widget.chat!.quality == null
                  ? Container()
                  : Positioned(
                      right: 15,
                      top: 10,
                      child: Container(
                        padding:
                            EdgeInsets.symmetric(vertical: 5, horizontal: 5),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: kBlackColor.withOpacity(0.2),
                        ),
                        child: CustomText(
                          title: widget.chat!.quality,
                          fontWeight: FontWeight.w500,
                          fontSize: 10,
                          color: kMainColor,
                          textAlign: TextAlign.center,
                        ),
                      ),
                    )
            ],
          ),
          SizedBox(
            height: 7.h,
          ),
          CustomText(
            title: widget.chat!.title,
            fontWeight: FontWeight.w500,
            fontSize: 14,
            color: kBlackColor,
            textAlign: TextAlign.center,
          ),
          SizedBox(
            height: 7.h,
          ),
          CustomText(
            title: widget.chat!.subtitle,
            fontWeight: FontWeight.w400,
            fontSize: 11,
            color: kGreyDarkColor,
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}

class SelectLisTileChatBoardWidget extends StatefulWidget {
  SelectLisTileChatBoardWidget({
    this.color,
    this.img,
    this.title,
  });

  final color;
  final img;
  final title;

  @override
  State<SelectLisTileChatBoardWidget> createState() =>
      _SelectLisTileChatBoardWidgetState();
}

class _SelectLisTileChatBoardWidgetState
    extends State<SelectLisTileChatBoardWidget> {
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
        decoration: BoxDecoration(
            border: Border.all(
                width: 2, color: select ? kSecondaryColor : kMainColor),
            borderRadius: BorderRadius.circular(10),
            color: kWhiteColor),
        child: ListTile(
          leading: Container(
            padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(100),
              color: widget.color ?? Colors.transparent,
            ),
            child: Image.asset(
              widget.img,
              height: 15,
            ),
          ),
          title: CustomText(
            title: widget.title,
            fontSize: 13,
            fontWeight: FontWeight.w500,
            color: kBlackColor,
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }
}
