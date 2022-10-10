// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:masmasafood/Data/colors.dart';
import 'package:masmasafood/Data/icondata.dart';

import '../Data/typography.dart';

class ForgotPasswordWidget extends StatelessWidget {
  String firstTitle;
  String? middleTitle;
  String title, endTitle;
  double width, height;
  bool check;

  ForgotPasswordWidget(
      {Key? key,
      required this.title,
      required this.firstTitle,
      this.middleTitle,
      required this.endTitle,
      required this.width,
      required this.height,
      required this.check})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
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
          child: SizedBox(
              width: 209.w,
              height: 52.h,
              child: Padding(
                padding: EdgeInsets.only(
                  top: 22.h,
                  left: 23.w,
                ),
                child: check == true
                    ? ListTile(
                        leading: Icon(
                          CustomIcon.kCommentDotsIcon,
                          color: CustomColors.kbottomVavBarIconColor,
                        ),
                        title: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Text('Via sms:',
                              style: CustomTextStyle.kVismsTextStyle),
                        ),
                        subtitle: Padding(
                          padding: EdgeInsets.only(right: 24.w),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Text(
                                  '••••',
                                  style: CustomTextStyle.kVismsSubTextStyle,
                                ),
                                Text(
                                  '••••',
                                  style: CustomTextStyle.kVismsSubTextStyle,
                                ),
                                Text(
                                  '4255',
                                  style: CustomTextStyle.kVismsSubTextStyle,
                                )
                              ]),
                        ),
                      )
                    : ListTile(
                        leading: Icon(
                          CustomIcon.kEnvelopeCircleCheckIcon,
                          color: CustomColors.kbottomVavBarIconColor,
                        ),
                        title: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Text(
                            'Via email:',
                            style: CustomTextStyle.kVismsTextStyle,
                          ),
                        ),
                        subtitle: Padding(
                          padding: EdgeInsets.only(right: 24.w),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Text(
                                  '••••',
                                  style: CustomTextStyle.kVismsSubTextStyle,
                                ),
                                Text(
                                  '@gmail.com',
                                  style: CustomTextStyle.kVismsSubTextStyle,
                                )
                              ]),
                        ),
                      ),
              )),
        ),
      ),
    );
  }
}
