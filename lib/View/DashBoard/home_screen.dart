// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:masmasafood/Components/customFilterButton.dart';
import 'package:masmasafood/Components/customNotifcationButton.dart';
import 'package:masmasafood/Components/customPopularMenuWidget.dart';
import 'package:masmasafood/Components/customPopularRestrurant.dart';
import 'package:masmasafood/Components/customtextfield.dart';
import 'package:masmasafood/Data/icondata.dart';
import 'package:masmasafood/Model/popularmenu.dart';
import 'package:masmasafood/View/DashBoard/notificationScreen.dart';
import 'package:masmasafood/View/DashBoard/voucherpromo_screen.dart';
import 'package:masmasafood/View/DashBoard/detailmenu_screen.dart';
import 'package:masmasafood/View/DashBoard/productScroolMode_Screen.dart';

import '../../Data/colors.dart';

import '../../Data/images_path.dart';
import '../../Data/typography.dart';
import '../../Model/popularrestaurant.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
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
                      icon: CustomIcon.kNotificationsOutlinedIcon,
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
              Padding(
                padding: EdgeInsets.only(left: 25.w, right: 25.w, top: 25.h),
                child: GestureDetector(
                  onTap: () {
                    Get.to(
                      () => const VoucherPromoScreen(),
                    );
                  },
                  child: Container(
                    width: 325.w,
                    height: 140.h,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20.r),
                      image: DecorationImage(
                          image: AssetImage(CustomAssets.kPromoAdvt),
                          fit: BoxFit.cover),
                    ),
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 30.w, top: 10.h),
                    child: GestureDetector(
                      onTap: () {
                        Get.to(
                          () => const ProductScroolModeScreen(),
                        );
                      },
                      child: Text(
                        'Nearest Restaurant',
                        style: CustomTextStyle.kNearestRestaurantTextStyle
                            .copyWith(fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(right: 23.w, top: 10.h),
                    child: GestureDetector(
                      onTap: () {
                        Get.to(
                          () => const DetailMenuScreen(),
                        );
                      },
                      child: Text(
                        'View Menu',
                        style: CustomTextStyle.kViewMoreTextStyle.copyWith(
                            fontWeight: FontWeight.bold, fontSize: 14),
                      ),
                    ),
                  )
                ],
              ),
              Padding(
                padding: EdgeInsets.only(left: 25.w, top: 15.h),
                child: SizedBox(
                  height: 170.h,
                  child: ListView.separated(
                      physics: const BouncingScrollPhysics(),
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) {
                        return customPopularRestrurantWidget(
                            popularRestaurant: restaurantList[index]);
                      },
                      // ignore: avoid_types_as_parameter_names
                      separatorBuilder: (context, int) {
                        return SizedBox(
                          width: 8.w,
                        );
                      },
                      itemCount: restaurantList.length),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 30.w, top: 10.h),
                    child: Text(
                      'Popular Menu',
                      style: CustomTextStyle.kNearestRestaurantTextStyle
                          .copyWith(fontWeight: FontWeight.bold),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(right: 23.w, top: 10.h),
                    child: Text(
                      'View More',
                      style: CustomTextStyle.kViewMoreTextStyle
                          .copyWith(fontWeight: FontWeight.bold, fontSize: 14),
                    ),
                  )
                ],
              ),
              Padding(
                padding: EdgeInsets.only(left: 25.w, right: 20.w),
                child: SizedBox(
                  height: 96.h,
                  child: ListView.builder(
                    itemCount: popularMenuList.length,
                    physics: const NeverScrollableScrollPhysics(),
                    itemBuilder: (context, index) {
                      return CustomPopularMenuWidget(
                          popular: popularMenuList[index]);
                    },
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
