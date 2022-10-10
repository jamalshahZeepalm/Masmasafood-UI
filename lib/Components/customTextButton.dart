// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:masmasafood/Data/typography.dart';

// ignore: must_be_immutable
class CustomTextButton extends StatelessWidget {
  String title;
  bool? isfontSizeSmall;
  VoidCallback onPressed;
  CustomTextButton(
      {Key? key,
      required this.title,
      required this.onPressed,
      this.isfontSizeSmall})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
        onPressed: onPressed,
        child: Text(
          title,
          style: isfontSizeSmall == true
              ? CustomTextStyle.kForgetTextButton
                  .copyWith(fontSize: 15, fontWeight: FontWeight.w400)
              : CustomTextStyle.kCustomTextButtonTextStyle
                  .copyWith(fontSize: 14, fontWeight: FontWeight.w400),
        ));
  }
}
