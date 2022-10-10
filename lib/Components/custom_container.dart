// ignore_for_file: must_be_immutable, file_names

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../Data/colors.dart';

class CustomContainer extends StatelessWidget {
  Widget myWidget;
  double width;
  double height;
  VoidCallback onPressed;
  CustomContainer(
      {Key? key,
      required this.width,
      required this.height,
      required this.onPressed,
      required this.myWidget})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.w),
      child: InkWell(
        onTap: onPressed,
        child: Container(
          width: width.w,
          height: height.h,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(22.r),
            border: Border.all(color: CustomColors.kShadowColor),
            color: CustomColors.kButtonTextColor,
          ),
          child: myWidget,
        ),
      ),
    );
  }
}
