import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:masmasafood/route/persistenttabview.dart';

import '../../Components/customelevetedbutton.dart';
import '../../Data/colors.dart';
import '../../Data/images_path.dart';
import '../../Data/typography.dart';

class SuccessNotificationScreen extends StatefulWidget {
  const SuccessNotificationScreen({Key? key}) : super(key: key);

  @override
  State<SuccessNotificationScreen> createState() =>
      _SuccessNotificationScreenState();
}

class _SuccessNotificationScreenState extends State<SuccessNotificationScreen> {
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
                    'Password reset succesful',
                    style: CustomTextStyle.kSubTitleTextStyleForCongratsScreen
                        .copyWith(fontWeight: FontWeight.bold),
                  ),
                ),
                const Spacer(),
                Padding(
                  padding:
                      EdgeInsets.only(left: 109.w, bottom: 60.h, right: 109.w),
                  child: CustomElevetedButton(
                      title: 'Back',
                      height: 57,
                      width: 157,
                      backgroundcolorOne: CustomColors.kButtonColor,
                      backgroundcolorTwo: CustomColors.kButton2Color,
                      onPressed: () {
                        Get.offAll(
                          () => const PersistentTabViewScreen(),
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
