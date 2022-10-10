import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';
import 'package:masmasafood/Components/customelevetedbutton.dart';
import 'package:masmasafood/Data/icondata.dart';
import 'package:masmasafood/Data/images_path.dart';
import 'package:masmasafood/Data/typography.dart';
import 'package:masmasafood/View/SignIn%20SignUp%20Screens/uploadphoto_screen.dart';

import '../../Components/custom_container.dart';
import '../../Components/custom_arrowbutton.dart';
import '../../Data/colors.dart';

class PaymentMethodScreen extends StatefulWidget {
  const PaymentMethodScreen({Key? key}) : super(key: key);

  @override
  State<PaymentMethodScreen> createState() => _PaymentMethodScreen();
}

class _PaymentMethodScreen extends State<PaymentMethodScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
        color: CustomColors.kBackgroundColor,
        child: Scaffold(
          body: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
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
                  padding: EdgeInsets.only(top: 120.h, left: 25.w, right: 86.w),
                  child: Text(
                    'Payment Method',
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
              padding: EdgeInsets.only(
                  top: 20.h, left: 20.w, right: 20.w, bottom: 17.h),
              child: CustomContainer(
                width: 335,
                height: 80,
                myWidget: paymentMethod(imageUrl: CustomAssets.kPaypalIconSvg),
                onPressed: () {},
              ),
            ),
            Padding(
                padding: EdgeInsets.only(
                    top: 20.h, left: 20.w, right: 20.w, bottom: 17.h),
                child: CustomContainer(
                  width: 335,
                  height: 80,
                  myWidget: paymentMethod(imageUrl: CustomAssets.kVisaIconSvg),
                  onPressed: () {},
                )),
            Padding(
              padding: EdgeInsets.only(
                  top: 20.h, left: 20.w, right: 20.w, bottom: 17.h),
              child: CustomContainer(
                width: 335,
                height: 80,
                onPressed: () {},
                myWidget: paymentMethod(imageUrl: CustomAssets.kPayonerIconSvg),
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
                      () => const UploadImageScreen(),
                    );
                  }),
            ),
          ]),
        ));
  }
}
