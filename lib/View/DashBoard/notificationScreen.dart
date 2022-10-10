// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:masmasafood/Components/custom_container.dart';
import 'package:masmasafood/Data/icondata.dart';

import '../../Components/custom_arrowbutton.dart';
import '../../Data/colors.dart';
import '../../Data/images_path.dart';
import '../../Data/typography.dart';

class NotificationScreen extends StatefulWidget {
  const NotificationScreen({Key? key}) : super(key: key);

  @override
  State<NotificationScreen> createState() => _NotificationScreenState();
}

class _NotificationScreenState extends State<NotificationScreen> {
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
                  padding: EdgeInsets.only(
                    top: 130.h,
                    left: 31.w,
                  ),
                  child: Text(
                    'Notification',
                    style: CustomTextStyle.kStackTitleforHomePage
                        .copyWith(fontWeight: FontWeight.bold, height: 1.3),
                  ),
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.only(top: 20.h, left: 14.w, right: 14.w),
              child: CustomContainer(
                width: 347,
                height: 105,
                onPressed: () {},
                myWidget: ListTile(
                  leading: Container(
                    width: 55.w,
                    height: 58.h,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(26.r),
                        color: Colors.transparent,
                        image: DecorationImage(
                            image: AssetImage(CustomAssets.kGroupofcheck),
                            fit: BoxFit.cover)),
                  ),
                  title: Text(
                    'Your order has been taken by the driver',
                    style: CustomTextStyle.kNotifyListTileTextStyle,
                  ),
                  subtitle: Text(
                    'Recently',
                    style: CustomTextStyle.kChatListTilesubTextStyle,
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 20.h, left: 14.w, right: 14.w),
              child: CustomContainer(
                width: 347,
                height: 105,
                onPressed: () {},
                myWidget: ListTile(
                  leading: Container(
                    width: 55.w,
                    height: 58.h,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(26.r),
                        color: Colors.transparent,
                        image: DecorationImage(
                            image: AssetImage(
                              CustomAssets.kGroupofdollor,
                            ),
                            fit: BoxFit.cover)),
                  ),
                  title: Text(
                    "Topup for \$100 was successful",
                    style: CustomTextStyle.kNotifyListTileTextStyle,
                  ),
                  subtitle: Text(
                    '10.00 Am',
                    style: CustomTextStyle.kChatListTilesubTextStyle,
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 20.h, left: 14.w, right: 14.w),
              child: CustomContainer(
                width: 347,
                height: 105,
                onPressed: () {},
                myWidget: ListTile(
                  leading: Container(
                    width: 55.w,
                    height: 58.h,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(26.r),
                        color: Colors.transparent,
                        image: DecorationImage(
                            image: AssetImage(CustomAssets.kGroupofcancel),
                            fit: BoxFit.cover)),
                  ),
                  title: Text(
                    'Your order has been canceled',
                    style: CustomTextStyle.kNotifyListTileTextStyle,
                  ),
                  subtitle: Text(
                    '22 Juny 2021',
                    style: CustomTextStyle.kChatListTilesubTextStyle,
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
