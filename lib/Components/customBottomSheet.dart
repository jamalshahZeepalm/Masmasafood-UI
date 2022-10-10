// ignore_for_file: must_be_immutable, file_names

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:masmasafood/Components/customelevetedbutton.dart';
import 'package:masmasafood/Data/colors.dart';

import '../Data/images_path.dart';
import '../Data/typography.dart';

class BottomSheetWidget extends StatelessWidget {
  VoidCallback onPressed;
  BottomSheetWidget({Key? key, required this.onPressed}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 10.w, right: 10.w, top: 12.h),
      height: 160.h,
      width: double.infinity,
      decoration: BoxDecoration(
        color: CustomColors.kButton2Color,
        borderRadius: BorderRadius.circular(22.r),
        image: DecorationImage(
          image: AssetImage(CustomAssets.kBottomSheet),
          fit: BoxFit.cover,
        ),
      ),
      child: Column(
        children: [
          Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            Text(
              'Sub-Total   ',
              style: CustomTextStyle.kPlaceOrderSheetTextStyle.copyWith(
                  fontSize: 13, fontWeight: FontWeight.bold, height: 1.23),
            ),
            Text(
              '120 \$',
              style: CustomTextStyle.kPlaceOrderSheetTextStyle.copyWith(
                  fontSize: 12, fontWeight: FontWeight.bold, height: 1.23),
            )
          ]),
          SizedBox(
            height: 3.h,
          ),
          Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            Text(
              'Delivery Charge   ',
              style: CustomTextStyle.kPlaceOrderSheetTextStyle.copyWith(
                  fontSize: 13, fontWeight: FontWeight.bold, height: 1.23),
            ),
            Text(
              '10 \$',
              style: CustomTextStyle.kPlaceOrderSheetTextStyle.copyWith(
                  fontSize: 12, fontWeight: FontWeight.bold, height: 1.23),
            )
          ]),
          SizedBox(
            height: 3.h,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Discount    ',
                style: CustomTextStyle.kPlaceOrderSheetTextStyle.copyWith(
                    fontSize: 13, fontWeight: FontWeight.bold, height: 1.23),
              ),
              Text(
                '20 \$',
                style: CustomTextStyle.kPlaceOrderSheetTextStyle.copyWith(
                    fontSize: 12, fontWeight: FontWeight.bold, height: 1.23),
              )
            ],
          ),
          SizedBox(
            height: 10.h,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Total    ',
                style: CustomTextStyle.kPlaceOrderSheetTotalTextStyle.copyWith(
                    fontSize: 13, fontWeight: FontWeight.bold, height: 1.23),
              ),
              Text(
                '150\$',
                style: CustomTextStyle.kPlaceOrderSheetTotalTextStyle.copyWith(
                    fontSize: 14, fontWeight: FontWeight.bold, height: 1.23),
              )
            ],
          ),
          SizedBox(
            height: 2.h,
          ),
          Padding(
            padding: EdgeInsets.only(left: 10.w, right: 10.w),
            child: CustomElevetedButton(
                title: 'Place My Order',
                height: 50,
                width: 325,
                isWhiteBackground: true,
                backgroundcolorOne: CustomColors.kButtonTextColor,
                backgroundcolorTwo: CustomColors.kButtonTextColor,
                onPressed: onPressed),
          ),
        ],
      ),
    );
  }
}
