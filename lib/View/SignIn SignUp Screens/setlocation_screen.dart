// ignore: file_names
// ignore_for_file: file_names, duplicate_ignore, must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:masmasafood/Data/icondata.dart';
import 'package:masmasafood/View/SignIn%20SignUp%20Screens/signupsuccessnotification_screen.dart';

import '../../Components/custom_container.dart';
import '../../Components/custom_arrowbutton.dart';
import '../../Components/customelevetedbutton.dart';
import '../../Data/colors.dart';
import '../../Data/images_path.dart';
import '../../Data/typography.dart';

class SetLocationScreen extends StatefulWidget {
  const SetLocationScreen({Key? key}) : super(key: key);

  @override
  State<SetLocationScreen> createState() => _SetLocationScreenState();
}

class _SetLocationScreenState extends State<SetLocationScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: CustomColors.kBackgroundColor,
      child: Scaffold(
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                Align(
                    alignment: Alignment.topRight,
                    child: Image.asset(CustomAssets.kTopRightBackgroundImage)),
                Padding(
                  padding: EdgeInsets.only(top: 60.h, left: 25.w),
                  child: ArrowBackButton(
                    height: 45,
                    width: 45,
                    icon: CustomIcon.kArrowBackButtonIcon,
                    onPressed: () => Get.back(),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 125.h, left: 25.w, right: 86.w),
                  child: Text(
                    'Set Your Location ',
                    style: CustomTextStyle.kStackTitleforSignupProcess.copyWith(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                        height: 1.23),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 168.h, left: 25.w, right: 60.w),
                  child: Text(
                    'This data will be displayed in your account profile for security',
                    style: CustomTextStyle.kStackSubTitleforSignupProcess
                        .copyWith(
                            fontSize: 12,
                            fontWeight: FontWeight.bold,
                            height: 1.23),
                  ),
                )
              ],
            ),
            Padding(
              padding: EdgeInsets.only(top: 20.h, left: 17.w, right: 17.w),
              child: CustomContainer(
                width: 345,
                height: 150,
                onPressed: () {},
                myWidget: Column(children: [
                  Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(top: 20.h, left: 11.w),
                        child: SizedBox(
                          width: 33.w,
                          height: 33.h,
                          child: SvgPicture.asset(CustomAssets.kPinMarkIconSvg),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 15.h, left: 14.w),
                        child: SizedBox(
                          width: 98.w,
                          height: 20.h,
                          child: Text(
                            'Your Location',
                            style: CustomTextStyle.kSetLocationTitle
                                .copyWith(fontWeight: FontWeight.bold),
                          ),
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 13.h,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10),
                    child: Container(
                      width: 322.w,
                      height: 57.h,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20.r),
                        color: CustomColors.kSetLocationColor,
                      ),
                      child: Center(
                        child: Text(
                          'Set Location',
                          style: CustomTextStyle.kSetLocationTextStyle,
                        ),
                      ),
                    ),
                  )
                ]),
              ),
            ),
            const Spacer(),
            Padding(
              padding: EdgeInsets.only(left: 109.w, bottom: 60.h, right: 109.w),
              child: CustomElevetedButton(
                  title: 'Next',
                  height: 57,
                  width: 157,
                  backgroundcolorOne: CustomColors.kButtonColor,
                  backgroundcolorTwo: CustomColors.kButton2Color,
                  onPressed: () {
                    Get.to(
                      () => const SignUpSuccessNotifyScreen(),
                    );
                  }),
            ),
          ],
        ),
      ),
    );
  }
}
