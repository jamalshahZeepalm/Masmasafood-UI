// ignore_for_file: file_names, must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:masmasafood/Data/typography.dart';

import '../Data/colors.dart';
import '../Model/order_details.dart';

class CustomSildableWidget extends StatefulWidget {
  OrderDetails orderDetails;
  CustomSildableWidget({Key? key, required this.orderDetails})
      : super(key: key);

  @override
  State<CustomSildableWidget> createState() => _CustomSildableWidgetState();
}

class _CustomSildableWidgetState extends State<CustomSildableWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 347.w,
      height: 103.h,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(22.r),
        color: CustomColors.kButtonTextColor,
      ),
      child: Slidable(
          direction: Axis.horizontal,
          endActionPane: ActionPane(motion: const ScrollMotion(), children: [
            SlidableAction(
              borderRadius: BorderRadius.circular(22.r),
              backgroundColor: CustomColors.kSildableBackgroundColor,
              foregroundColor: Colors.white,
              icon: Icons.delete,
              onPressed: (BuildContext context) {},
            ),
          ]),
          child: ListTile(
            leading: SizedBox(
                width: 60.w,
                height: 60.h,
                child: Image.asset(widget.orderDetails.image)),
            title: Padding(
              padding: EdgeInsets.only(top: 18.h),
              child: Text(
                widget.orderDetails.title,
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
                Text(
                  widget.orderDetails.subTitle,
                  style: CustomTextStyle.kSlidableSubTitleTextStyle,
                ),
                SizedBox(
                  height: 8.h,
                ),
                Text(
                  widget.orderDetails.price,
                  style: CustomTextStyle.kSlidablePriceTitleTextStyle,
                )
              ],
            ),
            trailing: Padding(
              padding: EdgeInsets.only(top: 30.h),
              child: SizedBox(
                width: 92.w,
                height: 26.h,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          if (widget.orderDetails.itemCount > 1) {
                            widget.orderDetails.itemCount--;
                          }
                        });
                      },
                      child: Container(
                          width: 27.w,
                          height: 27.h,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8.r),
                            color: CustomColors.kSlidableButton2Color,
                          ),
                          child: SizedBox(
                              width: 26.w,
                              height: 6.h,
                              child: Center(
                                  child: Text(
                                '-',
                                style: CustomTextStyle
                                    .kSlidableMinusButtonTextStyle,
                              )))),
                    ),
                    Text(widget.orderDetails.itemCount.toString()),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          widget.orderDetails.itemCount++;
                        });
                      },
                      child: Container(
                        width: 27.w,
                        height: 27.h,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8.r),
                          color: CustomColors.kSlidableButtonColor,
                        ),
                        child: Center(
                            child: Text(
                          '+',
                          style: CustomTextStyle.kSlidableButtonTextStyle,
                        )),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          )),
    );
  }
}
