import 'package:flutter/material.dart';
import 'package:flutter_animation_progress_bar/flutter_animation_progress_bar.dart';
import 'package:myselfland/utilites/constants.dart';
import 'package:myselfland/widget/custom_text.dart';

class LeftBubble extends StatefulWidget {
  var msg;

  LeftBubble({
    this.msg,
  });

  @override
  _LeftBubbleState createState() => _LeftBubbleState();
}

class _LeftBubbleState extends State<LeftBubble> {
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: EdgeInsets.only(top: 30),
            width: MediaQuery.of(context).size.width * 0.6,
            padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 10),
            decoration: const BoxDecoration(
              color: kWhiteColor,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(0),
                topRight: Radius.circular(10),
                bottomLeft: Radius.circular(10),
                bottomRight: Radius.circular(10),
              ),
            ),
            child: Container(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Expanded(
                    child: Text(
                      widget.msg,
                      style: TextStyle(
                        fontSize: 13,
                        color: kGreyDarkColor,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class RightBubble extends StatefulWidget {
  var msg;

  RightBubble({
    this.msg,
  });

  @override
  _RightBubbleState createState() => _RightBubbleState();
}

class _RightBubbleState extends State<RightBubble> {
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerRight,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Container(
            margin: EdgeInsets.only(top: 30),
            padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 15),
            decoration: BoxDecoration(
              color: kSecondaryColor,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(10),
                topRight: Radius.circular(0),
                bottomLeft: Radius.circular(10),
                bottomRight: Radius.circular(10),
              ),
            ),
            child: Container(
              width: MediaQuery.of(context).size.width * 0.38,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Expanded(
                    child: Text(
                      widget.msg,
                      style: TextStyle(
                        fontSize: 13,
                        color: kMainColor,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class AudionBubble extends StatefulWidget {
  // var msg;
  var time;
  var intervaltime;

  AudionBubble({
    // this.msg,
    this.time,
    this.intervaltime,
  });

  @override
  _AudionBubbleState createState() => _AudionBubbleState();
}

class _AudionBubbleState extends State<AudionBubble> {
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: const EdgeInsets.only(top: 30),
            width: MediaQuery.of(context).size.width * 0.6,
            padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 10),
            decoration: const BoxDecoration(
              color: kWhiteColor,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(0),
                topRight: Radius.circular(10),
                bottomLeft: Radius.circular(10),
                bottomRight: Radius.circular(10),
              ),
            ),
            child: Container(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.asset(
                    "assets/pause.png",
                    height: 15,
                  ),
                  CustomText(
                    title: "${widget.time}/${widget.intervaltime}",
                    fontSize: 11,
                    color: kGreyDarkColor,
                  ),
                  Expanded(
                    child: Container(
                      margin: EdgeInsets.only(top: 5, left: 5),
                      child: FAProgressBar(
                        currentValue: 100,
                        size: 5,
                        progressColor: kSecondaryColor,
                        backgroundColor: kGreyDarkColor,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
