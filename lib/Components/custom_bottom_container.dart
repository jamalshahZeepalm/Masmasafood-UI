// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:masmasafood/Data/icondata.dart';

import '../Data/colors.dart';
import '../Data/images_path.dart';
import '../Data/typography.dart';

class ReusableBottomSheetWidget extends StatelessWidget {
  VoidCallback onPressed;
  ReusableBottomSheetWidget({Key? key, required this.onPressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Container(
        padding: EdgeInsets.only(left: 10.w, right: 12.w, top: 12.h),
        height: 237.w,
        width: double.infinity,
        decoration: BoxDecoration(
          color: CustomColors.kSlidableButton2Color,
          borderRadius: BorderRadius.circular(22.r),
          image: DecorationImage(
            opacity: 0.1,
            image: AssetImage(CustomAssets.kTopRightBackgroundImage),
            fit: BoxFit.cover,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(4.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.only(left: 15.w),
                child: Text(
                  'Track Orders',
                  style: CustomTextStyle.kMapTrackerTitleTextStyle
                      .copyWith(fontWeight: FontWeight.bold, height: 1.3),
                ),
              ),
              SizedBox(
                height: 20.h,
              ),
              Padding(
                padding: EdgeInsets.only(left: 10.w, right: 9.w),
                child: Container(
                  decoration: BoxDecoration(
                    color: CustomColors.kBackgroundColor,
                    borderRadius: BorderRadius.circular(22.r),
                  ),
                  width: 323.w,
                  height: 87.h,
                  child: ListTile(
                    leading: SizedBox(
                        width: 64.w,
                        height: 64.h,
                        child: Image.asset(CustomAssets.kMrKemplas)),
                    title: SizedBox(
                      width: 264.w,
                      child: Text(
                        'Mr Kemplas',
                        style: CustomTextStyle.kMapBottomTextStyle
                            .copyWith(fontWeight: FontWeight.bold, height: 1.3),
                      ),
                    ),
                    subtitle: Row(children: [
                      Icon(
                        Icons.compost_sharp,
                        color: CustomColors.kPhoneIconColor,
                        size: 14.sp,
                      ),
                      SizedBox(
                        width: 5.w,
                      ),
                      Text(
                        '25 minutes on the way',
                        style: CustomTextStyle.kMapTitleTextStyle,
                      )
                    ]),
                  ),
                ),
              ),
              SizedBox(
                height: 10.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 10.w),
                    child: Container(
                      decoration: BoxDecoration(
                        color: CustomColors.kBackgroundColor,
                        borderRadius: BorderRadius.circular(22.r),
                      ),
                      width: 220.w,
                      height: 68.h,
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              CustomIcon.kPhone,
                              color: CustomColors.kPhoneIconColor,
                            ),
                            SizedBox(
                              width: 15.w,
                            ),
                            Text(
                              'Call',
                              style: CustomTextStyle.kCallTextStyle,
                            )
                          ]),
                    ),
                  ),
                  SizedBox(
                    width: 10.w,
                  ),
                  Padding(
                    padding: EdgeInsets.only(right: 10.w),
                    child: Container(
                        decoration: BoxDecoration(
                          color: CustomColors.kButton2Color,
                          borderRadius: BorderRadius.circular(22.r),
                        ),
                        width: 68.w,
                        height: 68.h,
                        child: Icon(
                          CustomIcon.kEmailIcon,
                          color: CustomColors.kBackgroundColor,
                        )),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
