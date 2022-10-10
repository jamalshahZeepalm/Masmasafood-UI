// ignore_for_file: must_be_immutable, file_names

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../Data/colors.dart';
import '../Data/typography.dart';
import '../Model/wijiebar.dart';

class CustomWijieBarAndRestoWidget extends StatelessWidget {
  WijieBarAndResto wijieBarAndResto;

  CustomWijieBarAndRestoWidget({
    Key? key,
    required this.wijieBarAndResto,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 14.w),
      child: Container(
        width: 171.w,
        height: 147.h,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(22.r),
          color: CustomColors.kButtonTextColor,
        ),
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            children: [
              SizedBox(
                  width: 63.w,
                  height: 62.h,
                  child: Image.asset(wijieBarAndResto.image)),
              SizedBox(
                height: 10.h,
              ),
              Text(
                wijieBarAndResto.name,
                style: CustomTextStyle.kSlidableTitleTextStyle.copyWith(
                    fontSize: 17, fontWeight: FontWeight.bold, height: 1.28),
              ),
              SizedBox(
                height: 8.h,
              ),
              Text(
                wijieBarAndResto.price,
                style: CustomTextStyle.kSlidableSubTitleTextStyle.copyWith(
                    fontSize: 13, fontWeight: FontWeight.bold, height: 1.28),
              ),
            ],
          ),
        ),
      ),
      // ignore: dead_code
    );
  }
}
