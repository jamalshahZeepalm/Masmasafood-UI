// ignore: file_names

// ignore_for_file: file_names, duplicate_ignore

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import 'package:masmasafood/Data/colors.dart';
import 'package:masmasafood/Data/typography.dart';
import 'package:masmasafood/Model/onboarding.dart';

// ignore: must_be_immutable
class OnboardingWidget extends StatelessWidget {
  OnBoarding onBoarding;

  OnboardingWidget({
    Key? key,
    required this.onBoarding,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: CustomColors.kBackgroundColor,
      child: Scaffold(
        body: ListView(
            scrollDirection: Axis.vertical,
            physics: const BouncingScrollPhysics(),
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 56.83.h,
                  ),
                  SizedBox(
                      height: 434.22.h,
                      width: 408.5.w,
                      child: SvgPicture.asset(onBoarding.image)),
                  SizedBox(
                    height: 38.95.h,
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 82.w),
                    child: Text(
                      onBoarding.title,
                      textAlign: TextAlign.center,
                      style: CustomTextStyle.kTextStyleForOnboardingScreen
                          .copyWith(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              height: 1.23),
                    ),
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 60.w, right: 30),
                    child: Text(
                      onBoarding.subTitle,
                      textAlign: TextAlign.center,
                      style: CustomTextStyle.kSubTextStyleForOnboardingScreen
                          .copyWith(
                              fontSize: 13,
                              fontWeight: FontWeight.w300,
                              height: 1.34),
                    ),
                  ),
                ],
              ),
            ]),
      ),
    );
  }
}
