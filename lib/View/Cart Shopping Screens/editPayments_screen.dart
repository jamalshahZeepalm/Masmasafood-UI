// ignore_for_file: must_be_immutable, file_names

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:masmasafood/Components/custom_container.dart';
import 'package:masmasafood/Data/colors.dart';
import 'package:masmasafood/Data/typography.dart';

import '../../Components/custom_arrowbutton.dart';
import '../../Data/icondata.dart';
import '../../Data/images_path.dart';

class EditPaymentsScreen extends StatefulWidget {
  const EditPaymentsScreen({Key? key}) : super(key: key);

  @override
  State<EditPaymentsScreen> createState() => _EditPaymentsScreenState();
}

class _EditPaymentsScreenState extends State<EditPaymentsScreen> {
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
                  padding: EdgeInsets.only(top: 120.h, left: 25.w, right: 86.w),
                  child: Text(
                    'Payment ',
                    style: CustomTextStyle.kStackTitleforSignupProcess.copyWith(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                        height: 1.23),
                  ),
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.only(top: 20.h, left: 20.w, right: 20.w),
              child: CustomContainer(
                width: 335,
                height: 73,
                onPressed: () {},
                myWidget: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    SizedBox(
                      width: 86.w,
                      height: 23.h,
                      child: Image.asset(CustomAssets.kPaypal),
                    ),
                    SizedBox(
                      width: 180.w,
                      child: const TextField(
                        decoration: InputDecoration(
                            hintText: '2121 6352 8465 ****',
                            enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide.none)),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 20.h, left: 20.w, right: 20.w),
              child: CustomContainer(
                width: 335,
                height: 73,
                onPressed: () {},
                myWidget: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(22.r),
                    color: Colors.grey.withOpacity(0.3),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      SizedBox(
                        width: 86.w,
                        height: 23.h,
                        child: Image.asset(
                          CustomAssets.kVisa,
                        ),
                      ),
                      SizedBox(
                        width: 180.w,
                        child: const TextField(
                          decoration: InputDecoration(
                              hintText: '2125 6352 8465 ****',
                              enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide.none)),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 20.h, left: 20.w, right: 20.w),
              child: CustomContainer(
                width: 335,
                height: 73,
                onPressed: () {},
                myWidget: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(22.r),
                    color: Colors.grey.withOpacity(0.3),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      SizedBox(
                        width: 83.w,
                        height: 32.h,
                        child: Image.asset(
                          CustomAssets.kPayoneer,
                        ),
                      ),
                      SizedBox(
                        width: 180.w,
                        child: const TextField(
                          decoration: InputDecoration(
                              hintText: '2121 6352 8465 ****',
                              enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide.none)),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
