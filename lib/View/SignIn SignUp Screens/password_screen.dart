// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:masmasafood/Data/icondata.dart';
import 'package:masmasafood/View/SignIn%20SignUp%20Screens/successnotification_screen.dart';

import '../../Components/custom_arrowbutton.dart';
import '../../Components/customelevetedbutton.dart';
import '../../Components/password_TextField_Widget.dart';
import '../../Data/colors.dart';
import '../../Data/images_path.dart';
import '../../Data/typography.dart';

class PasswordScreen extends StatefulWidget {
  const PasswordScreen({Key? key}) : super(key: key);

  @override
  State<PasswordScreen> createState() => _PasswordScreenState();
}

class _PasswordScreenState extends State<PasswordScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: CustomColors.kBackgroundColor,
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              Stack(
                children: [
                  Align(
                      alignment: Alignment.topRight,
                      child:
                          Image.asset(CustomAssets.kTopRightBackgroundImage)),
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
                    padding:
                        EdgeInsets.only(top: 125.h, left: 25.w, right: 89.w),
                    child: Text(
                      'Reset your password here',
                      style: CustomTextStyle.kStackTitleforSignupProcess
                          .copyWith(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              height: 1.23),
                    ),
                  ),
                  Padding(
                    padding:
                        EdgeInsets.only(top: 188.h, left: 25.w, right: 128.w),
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
                padding: EdgeInsets.only(top: 40.w, left: 14.w, right: 14.w),
                child: PasswordTextFieldWidget(
                    hintText: 'New Password', obscureText: true),
              ),
              Padding(
                padding: EdgeInsets.only(top: 20.w, left: 14.w, right: 14.w),
                child: PasswordTextFieldWidget(
                    hintText: 'Confirm Password', obscureText: false),
              ),
              Padding(
                padding: EdgeInsets.only(left: 109.w, top: 260.h, right: 109.w),
                child: CustomElevetedButton(
                    backgroundcolorOne: CustomColors.kButtonColor,
                    backgroundcolorTwo: CustomColors.kButton2Color,
                    title: 'Next',
                    height: 57,
                    width: 157,
                    onPressed: () {
                      Get.to(
                        () => const SuccessNotificationScreen(),
                      );
                    }),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
