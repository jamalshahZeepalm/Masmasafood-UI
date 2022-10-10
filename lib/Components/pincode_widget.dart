// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

import '../Data/colors.dart';

class PinCodeTextFieldWidget extends StatelessWidget {
  double width, height;

  PinCodeTextFieldWidget({Key? key, required this.width, required this.height})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    var pinController = TextEditingController();
    return Padding(
      padding: EdgeInsets.only(left: 16.w, right: 16.w, top: 20.h),
      child: GestureDetector(
        onTap: () {},
        child: Container(
          width: width.w,
          height: height.h,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20.r),
            color: CustomColors.kButtonTextColor,
          ),
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: PinCodeTextField(
              controller: pinController,
              backgroundColor: Colors.transparent,
              pinTheme: PinTheme(
                inactiveColor: Colors.transparent,
                fieldHeight: 50,
                disabledColor: Colors.white,
                errorBorderColor: Colors.white,
                selectedColor: Colors.white,
                activeColor: Colors.white,
                inactiveFillColor: Colors.white,
                selectedFillColor: Colors.white,
                fieldWidth: 40,
                activeFillColor: Colors.white,
              ),
              length: 4,
              onChanged: (String value) {},
              appContext: context,
              animationType: AnimationType.fade,
              keyboardType: TextInputType.number,
            ),
          ),
        ),
      ),
    );
  }
}
