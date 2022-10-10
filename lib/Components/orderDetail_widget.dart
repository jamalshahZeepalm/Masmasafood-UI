// ignore_for_file: must_be_immutable, file_names

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:masmasafood/Data/colors.dart';

import '../Data/typography.dart';
import '../Model/order_details.dart';
import 'customelevetedbutton.dart';

class OrderDetailsWidget extends StatelessWidget {
  OrderDetails orderDetails;
  int index;
  OrderDetailsWidget(
      {Key? key, required this.orderDetails, required this.index})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 14.w),
      child: Container(
        width: 347.w,
        height: 103.h,
        foregroundDecoration: BoxDecoration(
          backgroundBlendMode:
              (index < 2) ? BlendMode.dst : BlendMode.saturation,
          color: Colors.grey.shade400,
        ),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(22.r),
            color: CustomColors.kButtonTextColor),
        child: ListTile(
          leading: SizedBox(
              width: 60.w,
              height: 60.h,
              child: Image.asset(
                orderDetails.image,
              )),
          title: Padding(
            padding: EdgeInsets.only(top: 18.h),
            child: Text(
              orderDetails.title,
              style: CustomTextStyle.kSlidableTitleTextStyle
                  .copyWith(fontWeight: FontWeight.bold),
            ),
          ),
          subtitle: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 4.h,
              ),
              Text(orderDetails.subTitle,
                  style: CustomTextStyle.kSlidableSubTitleTextStyle),
              SizedBox(
                height: 8.h,
              ),
              Text(
                orderDetails.price,
                style: CustomTextStyle.kSlidablePriceTitleTextStyle,
              )
            ],
          ),
          trailing: Padding(
            padding: EdgeInsets.only(top: 12.h),
            child: CustomElevetedButton(
              title: 'Proccess',
              height: 30,
              width: 99,
              onPressed: () {},
              backgroundcolorOne: CustomColors.kButtonColor,
              backgroundcolorTwo: CustomColors.kButton2Color,
            ),
          ),
        ),
      ),
      // ignore: dead_code
    );
  }
}
