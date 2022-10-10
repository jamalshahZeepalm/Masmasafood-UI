import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:masmasafood/Data/icondata.dart';
import 'package:masmasafood/Data/typography.dart';
import 'package:masmasafood/View/Chat%20Screens/message_screen.dart';

import 'package:persistent_bottom_nav_bar_v2/persistent-tab-view.dart';

import '../Data/colors.dart';
import '../View/Cart Shopping Screens/orderdetails_screen.dart';
import '../View/DashBoard/home_screen.dart';
import '../View/DashBoard/profile_screen.dart';

List<PersistentBottomNavBarItem> navBarItems() {
  return [
    PersistentBottomNavBarItem(
      icon: Icon(
        CustomIcon.kHomeIcon,
        color: CustomColors.kbottomVavBarIconColor,
      ),
      title: 'Home',
      textStyle: CustomTextStyle.kPersistentTextStyle
          .copyWith(fontWeight: FontWeight.bold),
      activeColorPrimary: CustomColors.kbottomVavBarBackgroundColor,
      activeColorSecondary: CustomColors.kPersistentTextColor,
      iconSize: 22.sp,
    ),
    PersistentBottomNavBarItem(
      icon: Icon(
        CustomIcon.kUserIcon,
        color: CustomColors.kbottomVavBarIconColor,
      ),
      activeColorPrimary: CustomColors.kbottomVavBarBackgroundColor,
      activeColorSecondary: CustomColors.kPersistentTextColor,
      title: 'profile',
      iconSize: 22.sp,
      textStyle: CustomTextStyle.kPersistentTextStyle
          .copyWith(fontWeight: FontWeight.bold),
    ),
    PersistentBottomNavBarItem(
      icon: Icon(
        CustomIcon.kCartShoppingIcon,
        color: CustomColors.kbottomVavBarIconColor,
      ),
      activeColorPrimary: CustomColors.kbottomVavBarBackgroundColor,
      activeColorSecondary: CustomColors.kPersistentTextColor,
      title: 'Cart Shopping',
      iconSize: 22.sp,
      textStyle: CustomTextStyle.kPersistentTextStyle
          .copyWith(fontWeight: FontWeight.bold),
    ),
    PersistentBottomNavBarItem(
      icon: Icon(
        CustomIcon.kCommentDotsIcon,
        color: CustomColors.kbottomVavBarIconColor,
      ),
      activeColorPrimary: CustomColors.kbottomVavBarBackgroundColor,
      activeColorSecondary: CustomColors.kPersistentTextColor,
      title: 'chat',
      iconSize: 22.sp,
      textStyle: CustomTextStyle.kPersistentTextStyle
          .copyWith(fontWeight: FontWeight.bold),
    )
  ];
}

List<Widget> buildScreens() {
  return [
    const HomeScreen(),
    const ProfileScreen(),
    const OrderDetailsScreen(),
    const MessagesScreen()
  ];
}
