import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:masmasafood/Components/custom_container.dart';
import 'package:masmasafood/Data/icondata.dart';
import 'package:masmasafood/Data/typography.dart';
import 'package:masmasafood/View/Cart%20Shopping%20Screens/setlocation_screen2.dart';

import '../../Components/custom_arrowbutton.dart';
import '../../Data/colors.dart';
import '../../Data/images_path.dart';

class EditLocationScreen extends StatefulWidget {
  const EditLocationScreen({Key? key}) : super(key: key);

  @override
  State<EditLocationScreen> createState() => _EditLocationScreenState();
}

class _EditLocationScreenState extends State<EditLocationScreen> {
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
                  padding: EdgeInsets.only(top: 70.h, left: 25.w),
                  child: ArrowBackButton(
                    height: 45,
                    width: 45,
                    icon: CustomIcon.kArrowBackButtonIcon,
                    onPressed: () => Get.back(),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 140.h, left: 25.w, right: 86.w),
                  child: Text(
                    'Shipping',
                    style: CustomTextStyle.kStackTitleforSignupProcess.copyWith(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                        height: 1.23),
                  ),
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 5.w, vertical: 20.h),
              child: CustomContainer(
                  width: 335,
                  height: 107,
                  onPressed: () {},
                  myWidget: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 10.h,
                      ),
                      Row(children: [
                        Padding(
                          padding: EdgeInsets.only(left: 12.w),
                          child: const Text('Order Location'),
                        ),
                      ]),
                      SizedBox(
                        height: 10.h,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          SizedBox(width: 6.w),
                          SizedBox(
                            width: 33.w,
                            height: 33.h,
                            child: Image.asset(CustomAssets.kIconLocation),
                          ),
                          SizedBox(width: 10.w),
                          SizedBox(
                            width: 250.w,
                            height: 40.h,
                            child: Text(
                              '8502 Preston Rd. Inglewood, Maine 98380',
                              style: CustomTextStyle.kPaymentTextStyle.copyWith(
                                  fontWeight: FontWeight.bold, height: 1.3),
                            ),
                          ),
                        ],
                      ),
                    ],
                  )),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 5.w, vertical: 20.h),
              child: CustomContainer(
                  width: 335,
                  height: 155,
                  onPressed: () {},
                  myWidget: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 10.h,
                      ),
                      Row(children: [
                        Padding(
                          padding: EdgeInsets.only(left: 12.w),
                          child: const Text('Deliver To'),
                        ),
                      ]),
                      SizedBox(
                        height: 10.h,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          SizedBox(width: 6.w),
                          SizedBox(
                            width: 33.w,
                            height: 33.h,
                            child: Image.asset(CustomAssets.kIconLocation),
                          ),
                          SizedBox(width: 10.w),
                          SizedBox(
                            width: 256.w,
                            height: 40.h,
                            child: Text(
                              '4517 Washington Ave. Manchester, Kentucky 39495',
                              style: CustomTextStyle.kPaymentTextStyle.copyWith(
                                  fontWeight: FontWeight.bold, height: 1.3),
                            ),
                          ),
                        ],
                      ),
                      GestureDetector(
                        onTap: () {
                          Get.to(
                            () => const SetLocationScreen2(),
                          );
                        },
                        child: Padding(
                          padding: EdgeInsets.only(left: 26.w, top: 25.h),
                          child: Text(
                            'set location',
                            style: CustomTextStyle.kCustomTextButtonTextStyle
                                .copyWith(
                                    fontWeight: FontWeight.bold, height: 1.3),
                          ),
                        ),
                      )
                    ],
                  )),
            ),
          ],
        ),
      ),
    );
  }
}
