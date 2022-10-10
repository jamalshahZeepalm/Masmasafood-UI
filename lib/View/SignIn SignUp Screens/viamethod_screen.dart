// ignore_for_file: file_names, must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:masmasafood/View/SignIn%20SignUp%20Screens/password_screen.dart';

import '../../Components/custom_arrowbutton.dart';
import '../../Components/customelevetedbutton.dart';
import '../../Components/forgotpassword_widget.dart';
import '../../Data/colors.dart';
import '../../Data/icondata.dart';
import '../../Data/images_path.dart';
import '../../Data/typography.dart';

class ViaMethodScreen extends StatefulWidget {
  const ViaMethodScreen({Key? key}) : super(key: key);

  @override
  State<ViaMethodScreen> createState() => _ViaMethodScreenState();
}

class _ViaMethodScreenState extends State<ViaMethodScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: CustomColors.kBackgroundColor,
      child: Scaffold(
        body: Column(
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
                    'Forgot password?',
                    style: CustomTextStyle.kStackTitleforSignupProcess.copyWith(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        height: 1.23),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 167.h, left: 25.w, right: 60.w),
                  child: Text(
                    'Select which contact details should we use to reset your password',
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
              padding: EdgeInsets.symmetric(horizontal: 14.w, vertical: 20.h),
              child: ForgotPasswordWidget(
                  title: 'Via sms:',
                  firstTitle: '••••',
                  middleTitle: '••••',
                  endTitle: '4255',
                  width: 347,
                  height: 105,
                  check: true),
            ),
            Padding(
              padding: EdgeInsets.only(left: 14.w, bottom: 20.h, right: 14.w),
              child: ForgotPasswordWidget(
                  title: 'Via sms:',
                  firstTitle: '••••',
                  endTitle: '@gmail.com',
                  width: 347,
                  height: 105,
                  check: false),
            ),
            Padding(
              padding: EdgeInsets.only(left: 109.w, top: 180.h, right: 109.w),
              child: CustomElevetedButton(
                  title: 'Next',
                  height: 57,
                  width: 157,
                  backgroundcolorOne: CustomColors.kButtonColor,
                  backgroundcolorTwo: CustomColors.kButton2Color,
                  onPressed: () {
                    Get.to(
                      () => const PasswordScreen(),
                    );
                  }),
            ),
          ],
        ),
      ),
    );
  }
}
