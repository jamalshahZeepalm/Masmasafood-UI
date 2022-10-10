// ignore: file_names
// ignore_for_file: file_names, duplicate_ignore

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:masmasafood/Components/customelevetedbutton.dart';
import 'package:masmasafood/View/SignIn%20SignUp%20Screens/verificationcode_screen.dart';

import '../../Data/colors.dart';
import '../../Data/images_path.dart';
import '../../Data/typography.dart';

class SignUpSuccessNotifyScreen extends StatefulWidget {
  const SignUpSuccessNotifyScreen({Key? key}) : super(key: key);

  @override
  State<SignUpSuccessNotifyScreen> createState() =>
      _SignUpSuccessNotifyScreenState();
}

class _SignUpSuccessNotifyScreenState extends State<SignUpSuccessNotifyScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: CustomColors.kBackgroundColor,
      child: Scaffold(
        body: Stack(
          children: [
            Image.asset(CustomAssets.kBackgroundImagesvg),
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding:
                      EdgeInsets.only(top: 227.h, right: 101.w, left: 101.w),
                  child: Image.asset(
                    CustomAssets.kCongratsIconSvg,
                  ),
                ),
                Padding(
                  padding:
                      EdgeInsets.only(left: 115.w, right: 114.w, top: 30.h),
                  child: SizedBox(
                    width: 146.w,
                    height: 39.h,
                    child: Text(
                      'Congrats!',
                      style: CustomTextStyle.kTitleTextStyleForCongratsScreen
                          .copyWith(fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 32.w, right: 32.w, top: 12.h),
                  // ignore: prefer_const_constructors
                  child: Text(
                    'Your Profile Is Ready To Use',
                    style: CustomTextStyle.kSubTitleTextStyleForCongratsScreen
                        .copyWith(fontWeight: FontWeight.bold),
                  ),
                ),
                const Spacer(),
                Padding(
                  padding:
                      EdgeInsets.only(left: 109.w, bottom: 60.h, right: 109.w),
                  child: CustomElevetedButton(
                      title: 'Next',
                      height: 57,
                      width: 157,
                      backgroundcolorOne: CustomColors.kButtonColor,
                      backgroundcolorTwo: CustomColors.kButton2Color,
                      onPressed: () {
                        Get.to(
                          () => const VerificationCodeScreen(),
                        );
                      }),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
