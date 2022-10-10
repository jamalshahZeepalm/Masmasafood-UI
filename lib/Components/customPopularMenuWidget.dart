// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:masmasafood/Data/typography.dart';

import '../Data/colors.dart';
import '../Model/popularmenu.dart';

// ignore: must_be_immutable
class CustomPopularMenuWidget extends StatelessWidget {
  PopularMenu popular;
  CustomPopularMenuWidget({Key? key, required this.popular}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 323.w,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(22.r),
        color: CustomColors.kButtonTextColor,
      ),
      child: ListTile(
        leading: SizedBox(
            width: 64.w, height: 64.h, child: Image.asset(popular.image)),
        title: Text(
          popular.title,
          style: CustomTextStyle.kHomeBottomCardTextStyle
              .copyWith(fontWeight: FontWeight.bold),
        ),
        subtitle: Text(popular.subTitle,
            style: CustomTextStyle.kMHomeBottomCardSubTextStyle),
        trailing: Text(
          '\$${popular.price.toString()}',
          style: CustomTextStyle.kHomeBottomCardPriceTitleTextStyle,
        ),
      ),
    );
  }
}
