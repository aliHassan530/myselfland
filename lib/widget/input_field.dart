import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:myselfland/utilites/constants.dart';

class InputField extends StatefulWidget {
  InputField({
    this.txt,
    this.number,
    this.check,
    this.control,
    this.prefix,
  });

  final txt;
  final number;
  final control;
  Widget? prefix;

  final check;

  @override
  State<InputField> createState() => _InputFieldState();
}

class _InputFieldState extends State<InputField> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: kMainColor, borderRadius: BorderRadius.circular(5)),
      child: TextField(
        keyboardType: widget.number,
        style: TextStyle(
          color: kBlackColor,
          fontWeight: FontWeight.w500,
          fontSize: 16,
        ),
        // style: hintStyle,
        obscureText: widget.check,
        cursorColor: kBlackColor,
        decoration: InputDecoration(
          contentPadding: EdgeInsets.symmetric(vertical: 15.h, horizontal: 15),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(5),
            borderSide: BorderSide(
              color: kSecondaryColor,
            ),
          ),
          prefixIcon: widget.prefix,
          hintText: widget.txt,
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(5),
            borderSide: const BorderSide(
              color: kWhiteLightColor,
            ),
          ),
          hintStyle: TextStyle(
              fontWeight: FontWeight.w400,
              fontSize: 16,
              color: kGreyLight.withOpacity(0.3)),
          border: InputBorder.none,
        ),
      ),
    );
  }
}
