import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:masmasafood/Components/customTextButton.dart';
import 'package:masmasafood/Components/customelevetedbutton.dart';
import 'package:masmasafood/Data/colors.dart';
import 'package:masmasafood/Data/icondata.dart';
import 'package:masmasafood/Data/images_path.dart';
import 'package:masmasafood/Data/typography.dart';
import 'package:masmasafood/View/SignIn%20SignUp%20Screens/signup_process_screen.dart';

import '../../Components/customcheckBox.dart';
import '../../Components/customtextfield.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: CustomColors.kBackgroundColor,
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(children: [
            Stack(
              children: [
                Image.asset(CustomAssets.kBackgroundImagesvg),
                Padding(
                  padding:
                      EdgeInsets.only(left: 100.w, right: 100.w, top: 47.h),
                  child: Image.asset(
                    CustomAssets.kLogoForSplashSvg,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 65.w, right: 65.w, top: 186.h),
                  child: Text(
                    'MasmasFood',
                    style: CustomTextStyle.kTextStyleForSplashScreen,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: 107.w,
                    right: 106.w,
                    top: 234.h,
                  ),
                  // ignore: prefer_const_constructors
                  child: const Text('Deliever Favorite Food'),
                )
              ],
            ),
            Padding(
              padding: EdgeInsets.only(
                left: 79.w,
                right: 79.w,
              ),
              child: Text(
                'Sign Up For Free ',
                style: CustomTextStyle.kColumTextStyleForsigninScreen
                    .copyWith(fontSize: 16, fontWeight: FontWeight.bold),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                  left: 25.w, right: 25.w, bottom: 5.h, top: 20.h),
              child: CustomTextField(
                width: 325,
                height: 57,
                color: CustomColors.kBackgroundColor,
                myWidget: TextField(
                    decoration: textFieldInputDecoration(
                        hintText: 'Anamwp . . |',
                        iconData: CustomIcon.kPersonIcon)),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 25.w, right: 25.w, bottom: 5.h),
              child: CustomTextField(
                width: 325,
                height: 57,
                color: CustomColors.kBackgroundColor,
                myWidget: TextField(
                  decoration: textFieldInputDecoration(
                    hintText: 'Email',
                    iconData: CustomIcon.kEmailIcon,
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 25.w, right: 25.w, bottom: 5.h),
              child: CustomTextField(
                width: 325,
                height: 57,
                color: CustomColors.kBackgroundColor,
                myWidget: TextField(
                  decoration: textFieldInputDecoration(
                    hintText: 'Password',
                    iconData: CustomIcon.kLockIcon,
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 50.w, bottom: 10.h),
              child: Column(children: [
                CheckBoxWidget(value: true, title: 'Keep Me Signed In'),
                SizedBox(
                  height: 8.h,
                ),
                CheckBoxWidget(
                    value: true, title: 'Email Me About Special Pricing'),
              ]),
            ),
            SizedBox(
              height: 13.h,
            ),
            CustomElevetedButton(
                title: 'Create Account',
                height: 56,
                width: 141,
                backgroundcolorOne: CustomColors.kButtonColor,
                backgroundcolorTwo: CustomColors.kButton2Color,
                onPressed: () {
                  Get.to(
                    () => const SignUpProcessScreen(),
                  );
                }),
            SizedBox(
              height: 2.h,
            ),
            CustomTextButton(
              title: 'already have an account?',
              onPressed: () {},
              isfontSizeSmall: true,
            )
          ]),
        ),
      ),
    );
  }
}
