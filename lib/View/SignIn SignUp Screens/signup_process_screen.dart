import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:masmasafood/Components/customelevetedbutton.dart';
import 'package:masmasafood/Components/customtextfield.dart';
import 'package:masmasafood/Data/icondata.dart';
import 'package:masmasafood/Data/images_path.dart';
import 'package:masmasafood/Data/typography.dart';
import 'package:masmasafood/View/SignIn%20SignUp%20Screens/paymentmethod_screen.dart';

import '../../Components/custom_arrowbutton.dart';
import '../../Data/colors.dart';

class SignUpProcessScreen extends StatefulWidget {
  const SignUpProcessScreen({Key? key}) : super(key: key);

  @override
  State<SignUpProcessScreen> createState() => _SignUpProcessScreenState();
}

class _SignUpProcessScreenState extends State<SignUpProcessScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
        color: CustomColors.kBackgroundColor,
        child: Scaffold(
          resizeToAvoidBottomInset: true,
          body: SingleChildScrollView(
            child: Column(children: [
              Stack(
                children: [
                  Align(
                      alignment: Alignment.topRight,
                      child:
                          Image.asset(CustomAssets.kTopRightBackgroundImage)),
                  Padding(
                    padding: EdgeInsets.only(top: 55.h, left: 25.w),
                    child: ArrowBackButton(
                      height: 45,
                      width: 45,
                      icon: CustomIcon.kArrowBackButtonIcon,
                      onPressed: () => Get.back(),
                    ),
                  ),
                  Padding(
                    padding:
                        EdgeInsets.only(top: 110.h, left: 25.w, right: 86.w),
                    child: Text(
                      'Fill in your bio to get started',
                      style: CustomTextStyle.kStackTitleforSignupProcess
                          .copyWith(
                              fontSize: 25,
                              fontWeight: FontWeight.bold,
                              height: 1.23),
                    ),
                  ),
                  Padding(
                    padding:
                        EdgeInsets.only(top: 195.h, left: 25.w, right: 60.w),
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
                padding: EdgeInsets.only(
                    top: 20.h, left: 15.w, right: 15.w, bottom: 10.h),
                child: CustomTextField(
                  width: 325,
                  height: 57,
                  color: CustomColors.kBackgroundColor,
                  myWidget: TextField(
                    decoration: textFieldInputDecoration(
                        hintText: 'First Name', iconData: null),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 15.w, right: 15.w, bottom: 10.h),
                child: CustomTextField(
                  width: 325,
                  height: 57,
                  color: CustomColors.kBackgroundColor,
                  myWidget: TextField(
                    decoration: textFieldInputDecoration(
                        hintText: 'Last Name', iconData: null),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 15.w, right: 15.w, bottom: 10.h),
                child: CustomTextField(
                  width: 325,
                  height: 57,
                  color: CustomColors.kBackgroundColor,
                  myWidget: TextField(
                    decoration: textFieldInputDecoration(
                        hintText: 'Mobile Number', iconData: null),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 109.w, right: 109.w, top: 180.h),
                child: CustomElevetedButton(
                    title: 'Next',
                    height: 57,
                    width: 157,
                    backgroundcolorOne: CustomColors.kButtonColor,
                    backgroundcolorTwo: CustomColors.kButton2Color,
                    onPressed: () {
                      Get.to(
                        () => const PaymentMethodScreen(),
                      );
                    }),
              ),
            ]),
          ),
        ));
  }
}
