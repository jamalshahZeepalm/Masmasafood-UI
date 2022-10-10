// ignore_for_file: avoid_types_as_parameter_names, non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:masmasafood/Components/customBottomSheet.dart';
import 'package:masmasafood/Components/customSildable.dart';
import 'package:masmasafood/Data/colors.dart';
import 'package:masmasafood/Data/icondata.dart';
import 'package:masmasafood/Data/typography.dart';
import 'package:masmasafood/Model/order_details.dart';
import 'package:masmasafood/View/Cart%20Shopping%20Screens/yourorders_screen.dart';

import '../../Components/custom_arrowbutton.dart';
import '../../Data/images_path.dart';

class OrderDetailsScreen extends StatefulWidget {
  const OrderDetailsScreen({Key? key}) : super(key: key);

  @override
  State<OrderDetailsScreen> createState() => _OrderDetailsScreenState();
}

class _OrderDetailsScreenState extends State<OrderDetailsScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: CustomColors.kBackgroundColor,
      child: Scaffold(
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                Align(
                    alignment: Alignment.topRight,
                    child: Image.asset(CustomAssets.kTopRightBackgroundImage)),
                Padding(
                  padding: EdgeInsets.only(top: 120.h, left: 25.w),
                  child: ArrowBackButton(
                    height: 45,
                    width: 45,
                    icon: CustomIcon.kArrowBackButtonIcon,
                    onPressed: () => Get.back(),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 170.h, left: 25.w),
                  child: Text(
                    'Order details',
                    style: CustomTextStyle.kStackTitleforSignupProcess.copyWith(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                        height: 1.23),
                  ),
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.only(
                left: 14.w,
                right: 14.w,
              ),
              child: Container(
                height: 380.h,
                color: CustomColors.kBackgroundColor,
                child: ListView.separated(
                    scrollDirection: Axis.vertical,
                    physics: const BouncingScrollPhysics(),
                    itemBuilder: (context, index) {
                      return CustomSildableWidget(
                          orderDetails: myOrderList[index]);
                    },
                    separatorBuilder: (BuildContext, int) {
                      return SizedBox(
                        height: 10.h,
                      );
                    },
                    itemCount: myOrderList.length),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                left: 14.w,
                right: 14.w,
                top: 2.h,
              ),
              child: BottomSheetWidget(onPressed: () {
                Get.to(
                  () => const YourOrdersScreen(),
                );
              }),
            ),
          ],
        ),
      ),
    );
  }
}
