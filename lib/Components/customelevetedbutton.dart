// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:masmasafood/Data/typography.dart';

class CustomElevetedButton extends StatelessWidget {
  String title;
  double width;
  double height;
  Color backgroundcolorOne;
  Color backgroundcolorTwo;
  bool? isWhiteBackground;
  VoidCallback onPressed;

  CustomElevetedButton(
      {Key? key,
      required this.title,
      required this.height,
      required this.width,
      required this.onPressed,
      required this.backgroundcolorOne,
      this.isWhiteBackground,
      required this.backgroundcolorTwo})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: isWhiteBackground == true
          ? Container(
              width: width.w,
              height: height.h,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(15.r)),
                gradient: LinearGradient(
                  colors: [
                    backgroundcolorOne,
                    backgroundcolorTwo,
                  ],
                ),
              ),
              child: Center(
                child: Text(title,
                    style: isWhiteBackground == true
                        ? CustomTextStyle.kCustomButtonWhiteTitle
                        : CustomTextStyle.kCustomButton),
              ),
            )
          : Container(
              width: width,
              height: height,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(15.r)),
                  gradient: LinearGradient(colors: [
                    backgroundcolorOne,
                    backgroundcolorTwo,
                  ])),
              child: Center(
                child: Text(title,
                    style: isWhiteBackground == true
                        ? CustomTextStyle.kCustomButtonWhiteTitle
                        : CustomTextStyle.kCustomButton),
              ),
            ),
    );
  }
}
