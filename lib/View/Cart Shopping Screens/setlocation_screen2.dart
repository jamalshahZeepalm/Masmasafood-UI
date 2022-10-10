// ignore_for_file: must_be_immutable, file_names

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:masmasafood/Components/custom_container.dart';
import 'package:masmasafood/Components/customtextfield.dart';
import 'package:masmasafood/Data/images_path.dart';
import 'package:masmasafood/Data/typography.dart';

import '../../Components/customelevetedbutton.dart';
import '../../Data/colors.dart';
import 'trackorderscreen.dart';

class SetLocationScreen2 extends StatefulWidget {
  const SetLocationScreen2({Key? key}) : super(key: key);

  @override
  State<SetLocationScreen2> createState() => _SetLocationScreen2State();
}

class _SetLocationScreen2State extends State<SetLocationScreen2> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: CustomColors.kBackgroundColor,
      child: Scaffold(
        body: Container(
          height: Get.height,
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage(CustomAssets.kMapBackgroundPng),
                  fit: BoxFit.cover)),
          child: Stack(children: [
            Padding(
              padding: EdgeInsets.only(top: 50.h, left: 17.w, right: 16.w),
              child: CustomTextField(
                  hintText: 'FInd Your Location',
                  width: 342,
                  height: 69,
                  icon: Icons.search,
                  isSearcBar: false,
                  color: CustomColors.kBackgroundColor),
            ),
            Align(
              alignment: Alignment.center,
              child: Image.asset(CustomAssets.kCirclePin),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Padding(
                padding: EdgeInsets.only(left: 8.w, bottom: 3.h),
                child: CustomContainer(
                    width: 342,
                    height: 181,
                    onPressed: () {},
                    myWidget: Container(
                      padding:
                          EdgeInsets.only(left: 10.w, right: 12.w, top: 12.h),
                      height: 170.w,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: CustomColors.kBackgroundColor,
                        borderRadius: BorderRadius.circular(22.r),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(2.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Your Location',
                              style: CustomTextStyle.kMapTitleTextStyle,
                            ),
                            SizedBox(
                              height: 6.h,
                            ),
                            Row(
                              children: [
                                SizedBox(
                                    width: 33.w,
                                    height: 33.h,
                                    child: Image.asset(
                                        CustomAssets.kIconLocation)),
                                SizedBox(
                                    width: 264.w,
                                    height: 55.h,
                                    child: Padding(
                                      padding: const EdgeInsets.all(7.0),
                                      child: Text(
                                        '4517 Washington Ave. Manchester, Kentucky 39495',
                                        style: CustomTextStyle
                                            .kMapBottomTextStyle
                                            .copyWith(
                                                fontWeight: FontWeight.bold,
                                                height: 1.3),
                                      ),
                                    ))
                              ],
                            ),
                            Padding(
                              padding: EdgeInsets.only(
                                  left: 10.w, right: 10.w, top: 16.h),
                              child: CustomElevetedButton(
                                  title: 'Set Location',
                                  height: 50,
                                  width: 322,
                                  backgroundcolorOne:
                                      CustomColors.kButton2Color,
                                  backgroundcolorTwo:
                                      CustomColors.kButton2Color,
                                  onPressed: () {
                                    Get.to(
                                      () => const TrackOrderScreen(),
                                    );
                                  }),
                            ),
                          ],
                        ),
                      ),
                    )),
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
