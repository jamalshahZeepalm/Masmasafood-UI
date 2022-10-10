import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:masmasafood/Data/typography.dart';
import 'package:masmasafood/route/persistenttabview.dart';

import '../../Components/customelevetedbutton.dart';
import '../../Data/colors.dart';
import '../../Data/images_path.dart';

class RateRestaurantScreen extends StatefulWidget {
  const RateRestaurantScreen({Key? key}) : super(key: key);

  @override
  State<RateRestaurantScreen> createState() => _RateRestaurantScreenState();
}

class _RateRestaurantScreenState extends State<RateRestaurantScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: CustomColors.kBackgroundColor,
      child: Scaffold(
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Stack(
              fit: StackFit.passthrough,
              children: [
                Image.asset(CustomAssets.kDetailImage),
                Padding(
                  padding:
                      EdgeInsets.only(top: 211.h, left: 121.w, right: 120.w),
                  child: Container(
                    width: 172.w,
                    height: 162.h,
                    decoration: const BoxDecoration(
                      color: Colors.transparent,
                    ),
                    child: Image.asset(CustomAssets.kRateFood),
                  ),
                )
              ],
            ),
            Padding(
              padding: EdgeInsets.only(left: 82.w, right: 82.w, top: 52.h),
              child: Text(
                'Thank You! Enjoy Your Meal',
                textAlign: TextAlign.center,
                style: CustomTextStyle.kFinishOrderScreenTextStyle.copyWith(
                    fontSize: 20, fontWeight: FontWeight.bold, height: 1.23),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 20.h, left: 96.w, right: 91.w),
              child: Text(
                "Please rate your Restaurant",
                textAlign: TextAlign.center,
                style: CustomTextStyle.kCallRiningSubTextStyle.copyWith(
                    fontSize: 13, fontWeight: FontWeight.bold, height: 1.28),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 40.h, left: 60.w, right: 60.w),
              child: RatingBar.builder(
                glowColor: Colors.amberAccent.withOpacity(0.1),
                unratedColor: CustomColors.kUnrateStarIconColor,
                initialRating: 3,
                minRating: 1,
                direction: Axis.horizontal,
                allowHalfRating: true,
                itemCount: 5,
                itemPadding: const EdgeInsets.symmetric(horizontal: 4.0),
                itemBuilder: (context, _) => Icon(
                  Icons.star,
                  color: CustomColors.kStarIconColor,
                  size: 15.sp,
                ),
                onRatingUpdate: (rating) {
                  if (kDebugMode) {
                    print(rating);
                  }
                },
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 50.h, left: 25.w, right: 25.w),
              child: Container(
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey.shade300),
                    borderRadius: BorderRadius.circular(19.r)),
                width: 355.w,
                height: 55.h,
                child: TextField(
                    decoration: InputDecoration(
                        prefixIcon: Icon(
                          FontAwesomeIcons.penToSquare,
                          color: CustomColors.kButton2Color,
                        ),
                        border: InputBorder.none)),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                top: 22.h,
                left: 22.w,
                right: 10.w,
              ),
              child: Row(
                children: [
                  CustomElevetedButton(
                      title: 'Submit',
                      height: 57,
                      width: 220,
                      backgroundcolorOne: CustomColors.kButtonColor,
                      backgroundcolorTwo: CustomColors.kButton2Color,
                      onPressed: () {
                        Get.to(
                          () => const PersistentTabViewScreen(),
                        );
                      }),
                  SizedBox(
                    width: 16.w,
                  ),
                  GestureDetector(
                    onTap: () {
                      Get.to(
                        () => const PersistentTabViewScreen(),
                      );
                    },
                    child: Container(
                        width: 82.w,
                        height: 57.h,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(55.r),
                          color: CustomColors.kButtonTextColor,
                        ),
                        child: Center(
                            child: Text(
                          'Skip',
                          style: CustomTextStyle.kSkipButtonTextStyle,
                        ))),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
