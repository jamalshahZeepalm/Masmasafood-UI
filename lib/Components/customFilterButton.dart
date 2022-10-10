// ignore_for_file: use_key_in_widget_constructors, must_be_immutable, file_names

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:masmasafood/Data/colors.dart';
import 'package:masmasafood/Data/images_path.dart';

class CustomFilterButton extends StatelessWidget {
  VoidCallback onPressed;

  CustomFilterButton({
    Key? key,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
          width: 45.w,
          height: 45.h,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20.r),
            color: CustomColors.kCustomHomeSearchBarColor,
          ),
          child: Image.asset(CustomAssets.kFilter)),
    );
  }
}
