// ignore_for_file: must_be_immutable, avoid_types_as_parameter_names, non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:masmasafood/Components/customelevetedbutton.dart';
import 'package:masmasafood/Components/orderDetail_widget.dart';
import 'package:masmasafood/View/Cart%20Shopping%20Screens/payments_screen.dart';

import 'package:masmasafood/View/DashBoard/notificationScreen.dart';

import '../../Components/customFilterButton.dart';
import '../../Components/customNotifcationButton.dart';
import '../../Components/customtextfield.dart';
import '../../Data/colors.dart';
import '../../Data/images_path.dart';
import '../../Data/typography.dart';
import '../../Model/order_details.dart';

class YourOrdersScreen extends StatefulWidget {
  const YourOrdersScreen({Key? key}) : super(key: key);

  @override
  State<YourOrdersScreen> createState() => _YourOrdersScreenState();
}

class _YourOrdersScreenState extends State<YourOrdersScreen> {
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
                    padding:
                        EdgeInsets.only(top: 100.h, left: 31.w, right: 111.w),
                    child: Text(
                      'Find Your Favorite Food',
                      style: CustomTextStyle.kStackTitleforHomePage
                          .copyWith(fontWeight: FontWeight.bold, height: 1.3),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 100.h, left: 291.w),
                    child: CustomNotificationButton(
                      icon: Icons.notifications_outlined,
                      onPressed: () {
                        Get.to(
                          () => const NotificationScreen(),
                        );
                      },
                    ),
                  ),
                ],
              ),
              Padding(
                padding: EdgeInsets.only(left: 10.w, right: 10.w),
                child: Row(
                  children: [
                    CustomTextField(
                      hintText: 'What do you want to order?',
                      width: 267,
                      height: 50,
                      color: CustomColors.kCustomHomeSearchBarColor,
                      icon: Icons.search,
                      isSearcBar: false,
                    ),
                    SizedBox(
                      width: 9.w,
                    ),
                    CustomFilterButton(
                      onPressed: () {},
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 450.h,
                child: ListView.separated(
                  scrollDirection: Axis.vertical,
                  physics: const BouncingScrollPhysics(),
                  itemCount: 4,
                  itemBuilder: (context, index) {
                    return OrderDetailsWidget(
                      orderDetails: myOrderList[index],
                      index: index,
                    );
                  },
                  separatorBuilder: (BuildContext, int) {
                    return SizedBox(
                      height: 9.h,
                    );
                  },
                ),
              ),
              SizedBox(
                height: 2.h,
              ),
              Padding(
                padding: EdgeInsets.only(
                  top: 23.h,
                  left: 24.w,
                  right: 24.w,
                ),
                child: CustomElevetedButton(
                  title: 'Check out',
                  height: 57,
                  width: 325,
                  onPressed: () {
                    Get.to(
                      () => const PaymentsScreen(),
                    );
                  },
                  backgroundcolorOne: CustomColors.kButtonColor,
                  backgroundcolorTwo: CustomColors.kButton2Color,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
