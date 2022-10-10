// ignore_for_file: file_names, must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/route_manager.dart';
import 'package:masmasafood/Components/pincode_widget.dart';
import 'package:masmasafood/Data/icondata.dart';
import 'package:masmasafood/View/SignIn%20SignUp%20Screens/viamethod_screen.dart';

import '../../Components/custom_arrowbutton.dart';
import '../../Components/customelevetedbutton.dart';
import '../../Data/colors.dart';
import '../../Data/images_path.dart';

import '../../Data/typography.dart';

class VerificationCodeScreen extends StatefulWidget {
  const VerificationCodeScreen({Key? key}) : super(key: key);

  @override
  State<VerificationCodeScreen> createState() => _VerificationCodeScreenState();
}

class _VerificationCodeScreenState extends State<VerificationCodeScreen> {
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
                        EdgeInsets.only(top: 125.h, left: 25.w, right: 86.w),
                    child: Text(
                      'Enter 4-digit Verification code',
                      style: CustomTextStyle.kStackTitleforSignupProcess
                          .copyWith(
                              fontSize: 22,
                              fontWeight: FontWeight.bold,
                              height: 1.23),
                    ),
                  ),
                  Padding(
                    padding:
                        EdgeInsets.only(top: 200.h, left: 25.w, right: 60.w),
                    child: Text(
                      'Code send to +6282045**** . This code will expired in 01:30',
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
                child: PinCodeTextFieldWidget(width: 347, height: 103),
              ),
              Padding(
                padding: EdgeInsets.only(left: 109.w, top: 300.h, right: 109.w),
                child: CustomElevetedButton(
                    title: 'Next',
                    height: 57,
                    width: 157,
                    backgroundcolorOne: CustomColors.kButtonColor,
                    backgroundcolorTwo: CustomColors.kButton2Color,
                    onPressed: () {
                      Get.to(
                        () => const ViaMethodScreen(),
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
