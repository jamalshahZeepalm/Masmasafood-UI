import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:masmasafood/Components/custom_arrowbutton.dart';

import 'package:masmasafood/route/persistenttabview.dart';

import '../../Components/custom_bottom_container.dart';
import '../../Data/colors.dart';
import '../../Data/icondata.dart';
import '../../Data/images_path.dart';

class TrackOrderScreen extends StatefulWidget {
  const TrackOrderScreen({Key? key}) : super(key: key);

  @override
  State<TrackOrderScreen> createState() => _TrackOrderScreenState();
}

class _TrackOrderScreenState extends State<TrackOrderScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: CustomColors.kBackgroundColor,
      child: SafeArea(
        child: Scaffold(
          body: Container(
            height: Get.height,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(CustomAssets.kMapBackgroundPng),
                    fit: BoxFit.cover)),
            child: Stack(children: [
              Padding(
                  padding: EdgeInsets.only(top: 21.h, left: 17.w, right: 16.w),
                  child: ArrowBackButton(
                    width: 45.w,
                    height: 45.h,
                    onPressed: () {
                      Get.to(() => const PersistentTabViewScreen());
                    },
                    icon: CustomIcon.kArrowBackButtonIcon,
                  )),
              Positioned(
                top: 59.h,
                left: 160.w,
                child: Image.asset(CustomAssets.kTimeTracking),
              ),
              Positioned(
                top: 110.h,
                left: 192.w,
                child: Image.asset(CustomAssets.kMapcar),
              ),
              Align(
                alignment: Alignment.center,
                child: Padding(
                  padding: EdgeInsets.only(left: 170.w),
                  child: Image.asset(CustomAssets.kMapLine),
                ),
              ),
              Align(
                  alignment: Alignment.bottomCenter,
                  child: ReusableBottomSheetWidget(onPressed: () {})),
            ]),
          ),
        ),
      ),
    );
  }
}
