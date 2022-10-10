// ignore_for_file: must_be_immutable, camel_case_types, file_names

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../Data/colors.dart';
import '../Data/typography.dart';
import '../Model/popularrestaurant.dart';

class customPopularRestrurantWidget extends StatelessWidget {
  PopularRestaurant popularRestaurant;
  customPopularRestrurantWidget({Key? key, required this.popularRestaurant})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 184.w,
      height: 147.h,
      decoration: BoxDecoration(
        color: CustomColors.kButtonTextColor,
        borderRadius: BorderRadius.circular(22.r),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(children: [
          SizedBox(
            width: 96.w,
            height: 73.h,
            child: Image.asset(popularRestaurant.image),
          ),
          SizedBox(
            height: 15.h,
          ),
          Text(
            popularRestaurant.title,
            style: CustomTextStyle.kHomeCardTitleTextStyle
                .copyWith(fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 6.h,
          ),
          Text(
            popularRestaurant.subTitle,
            style: CustomTextStyle.kHomeSubTitleTextStyle,
          ),
        ]),
      ),
    );
  }
}
