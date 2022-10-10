import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:masmasafood/Components/customBottomSheet.dart';
import 'package:masmasafood/Components/custom_container.dart';
import 'package:masmasafood/Components/customTextButton.dart';
import 'package:masmasafood/Data/colors.dart';

import '../../Components/custom_arrowbutton.dart';
import '../../Data/icondata.dart';
import '../../Data/images_path.dart';
import '../../Data/typography.dart';
import 'editPayments_screen.dart';
import 'editlocation_screen.dart';

class PaymentsScreen extends StatefulWidget {
  const PaymentsScreen({Key? key}) : super(key: key);

  @override
  State<PaymentsScreen> createState() => _PaymentsScreenState();
}

class _PaymentsScreenState extends State<PaymentsScreen> {
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
                    'Confirm Order',
                    style: CustomTextStyle.kStackTitleforSignupProcess.copyWith(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                        height: 1.23),
                  ),
                ),
              ],
            ),
            CustomContainer(
                height: 108,
                width: 335,
                onPressed: () {},
                myWidget: Column(
                  children: [
                    Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: EdgeInsets.only(left: 12.w),
                            child: const Text('Deliver To'),
                          ),
                          CustomTextButton(
                              title: 'Edit',
                              onPressed: () {
                                Get.to(
                                  () => const EditLocationScreen(),
                                );
                              })
                        ]),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        SizedBox(
                            width: 33.w,
                            height: 33.h,
                            child: Image.asset(CustomAssets.kIconLocation)),
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
                  ],
                )),
            SizedBox(
              height: 20.h,
            ),
            CustomContainer(
                height: 100,
                width: 335,
                onPressed: () {},
                myWidget: Column(
                  children: [
                    Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: EdgeInsets.only(left: 12.w),
                            child: const Text('Payment Method'),
                          ),
                          CustomTextButton(
                              title: 'Edit',
                              onPressed: () {
                                Get.to(() => const EditPaymentsScreen(),
                                    transition: Transition.fadeIn);
                              })
                        ]),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        SizedBox(
                          width: 86.w,
                          height: 23.h,
                          child: Image.asset(CustomAssets.kPaypal),
                        ),
                        Text(
                          '2121 6352 8465 ****',
                          style: CustomTextStyle.kPaymentTextStyle.copyWith(
                              fontWeight: FontWeight.bold, height: 1.3),
                        ),
                      ],
                    ),
                  ],
                )),
            Padding(
              padding: EdgeInsets.only(
                top: 160.h,
                left: 15.w,
                right: 15.w,
              ),
              child: BottomSheetWidget(onPressed: () {
                //Get.to(() => const PaymentsScreen());
              }),
            ),
          ],
        ),
      ),
    );
  }
}
