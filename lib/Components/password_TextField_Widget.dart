// ignore_for_file: must_be_immutable, file_names

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:masmasafood/Data/colors.dart';
import 'package:masmasafood/Data/typography.dart';

class PasswordTextFieldWidget extends StatefulWidget {
  String hintText;
  bool obscureText;
  PasswordTextFieldWidget(
      {Key? key, required this.hintText, required this.obscureText})
      : super(
          key: key,
        );

  @override
  State<PasswordTextFieldWidget> createState() =>
      _PasswordTextFieldWidgetState();
}

class _PasswordTextFieldWidgetState extends State<PasswordTextFieldWidget> {
  @override
  Widget build(BuildContext context) {
    return widget.obscureText
        ? TextField(
            obscureText: widget.obscureText,
            decoration: InputDecoration(
                fillColor: CustomColors.kButtonTextColor,
                filled: true,
                hintText: widget.hintText,
                hintStyle: CustomTextStyle.kHintTextStyle,
                suffixIcon: InkWell(
                  onTap: () {
                    setState(() {
                      widget.obscureText = !widget.obscureText;
                    });
                  },
                  child: Icon(
                      widget.obscureText
                          ? Icons.visibility
                          : Icons.visibility_off,
                      color: CustomColors.ktogelColor),
                ),
                enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(15.r)),
                    borderSide: BorderSide(color: CustomColors.kShadowColor)),
                focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(15.r)),
                    borderSide:
                        BorderSide(color: CustomColors.kButtonTextColor))),
          )
        : TextField(
            obscureText: widget.obscureText,
            decoration: InputDecoration(
                fillColor: CustomColors.kButtonTextColor,
                filled: true,
                hintText: widget.hintText,
                hintStyle: CustomTextStyle.kHintTextStyle,
                suffixIcon: InkWell(
                  onTap: () {
                    setState(() {
                      widget.obscureText = !widget.obscureText;
                    });
                  },
                  child: Icon(
                      widget.obscureText
                          ? Icons.visibility
                          : Icons.visibility_off,
                      color: CustomColors.ktogel2Color),
                ),
                enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(15.r)),
                    borderSide: BorderSide(color: CustomColors.kShadowColor)),
                focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(15.r)),
                    borderSide:
                        BorderSide(color: CustomColors.kButtonTextColor))),
          );
  }
}
