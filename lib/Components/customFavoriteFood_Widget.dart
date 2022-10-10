// ignore_for_file: must_be_immutable, file_names

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../Data/colors.dart';
import '../Data/typography.dart';
import '../Model/favoritefood.dart';
import 'customelevetedbutton.dart';

class CustomFavoriteFoodWidget extends StatelessWidget {
  FavoriteFood favoriteFood;

  CustomFavoriteFoodWidget({
    Key? key,
    required this.favoriteFood,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        width: 350.w,
        height: 103.h,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(22.r),
          color: CustomColors.kButtonTextColor,
        ),
        child: ListTile(
          leading: SizedBox(
              width: 63.w,
              height: 62.h,
              child: Image.asset(favoriteFood.image)),
          title: Padding(
            padding: EdgeInsets.only(top: 18.h),
            child: Text(
              favoriteFood.title,
              style: CustomTextStyle.kSlidableTitleTextStyle.copyWith(
                  fontSize: 15, fontWeight: FontWeight.bold, height: 1.28),
            ),
          ),
          subtitle: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 4.h,
              ),
              Text(
                favoriteFood.subTitle,
                style: CustomTextStyle.kSlidableSubTitleTextStyle,
              ),
              SizedBox(
                height: 8.h,
              ),
              Text(
                favoriteFood.price,
                style: CustomTextStyle.kSlidablePriceTitleTextStyle,
              )
            ],
          ),
          trailing: CustomElevetedButton(
            title: 'Buy Again',
            height: 40,
            width: 100,
            onPressed: () {},
            backgroundcolorOne: CustomColors.kButtonColor,
            backgroundcolorTwo: CustomColors.kButton2Color,
          ),
        ),
      ),
    );
  }
}
