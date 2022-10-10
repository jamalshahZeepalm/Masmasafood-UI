// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:masmasafood/Components/custom_container.dart';
import 'package:masmasafood/Components/customelevetedbutton.dart';
import 'package:masmasafood/Data/icondata.dart';

import '../../Components/custom_arrowbutton.dart';
import '../../Data/colors.dart';
import '../../Data/images_path.dart';
import '../../Data/typography.dart';

class VoucherPromoScreen extends StatefulWidget {
  const VoucherPromoScreen({Key? key}) : super(key: key);

  @override
  State<VoucherPromoScreen> createState() => _VoucherPromoScreenState();
}

class _VoucherPromoScreenState extends State<VoucherPromoScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: CustomColors.kBackgroundColor,
      child: Scaffold(
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                Align(
                    alignment: Alignment.topRight,
                    child: Image.asset(CustomAssets.kTopRightBackgroundImage)),
                Padding(
                  padding: EdgeInsets.only(left: 25.w, top: 60.h),
                  child: ArrowBackButton(
                    height: 45,
                    width: 45,
                    icon: CustomIcon.kArrowBackButtonIcon,
                    onPressed: () => Get.back(),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 25.w, top: 130.h),
                  child: Text(
                    'Voucher Promo',
                    style: CustomTextStyle.kStackTitleforSignupProcess.copyWith(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                        height: 1.23),
                  ),
                ),
              ],
            ),
            CustomContainer(
              width: 325,
              height: 122,
              onPressed: () {},
              myWidget: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(22.r),
                  image: DecorationImage(
                      image: AssetImage(CustomAssets.kPromoAdvertsOne),
                      fit: BoxFit.cover),
                ),
              ),
            ),
            SizedBox(
              height: 20.h,
            ),
            CustomContainer(
              width: 325,
              height: 122,
              onPressed: () {},
              myWidget: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(22.r),
                  image: DecorationImage(
                      image: AssetImage(CustomAssets.kPromoAdvertsTwo),
                      fit: BoxFit.cover),
                ),
              ),
            ),
            const Spacer(),
            Padding(
              padding: EdgeInsets.only(bottom: 60.h, left: 26.w, right: 25.w),
              child: CustomElevetedButton(
                title: 'Check out',
                height: 54,
                width: 324,
                backgroundcolorOne: CustomColors.kButtonColor,
                backgroundcolorTwo: CustomColors.kButton2Color,
                onPressed: () => Get.back(),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class ReusableContainer extends StatelessWidget {
  String image;
  double height;
  double width;
  ReusableContainer(
      {Key? key,
      required this.width,
      required this.height,
      required this.image})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 25.w, right: 25.w, top: 20.h),
      child: GestureDetector(
        onTap: () {},
        child: Container(
          width: width.w,
          height: height.h,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20.r),
            image: DecorationImage(image: AssetImage(image), fit: BoxFit.cover),
          ),
        ),
      ),
    );
  }
}
