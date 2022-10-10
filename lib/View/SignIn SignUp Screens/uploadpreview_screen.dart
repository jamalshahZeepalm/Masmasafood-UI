// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import 'package:masmasafood/Data/icondata.dart';
import 'package:masmasafood/View/SignIn%20SignUp%20Screens/setlocation_screen.dart';
import '../../Components/custom_container.dart';
import '../../Components/custom_arrowbutton.dart';
import '../../Components/customelevetedbutton.dart';
import '../../Data/colors.dart';
import '../../Data/images_path.dart';
import '../../Data/typography.dart';

class UploadImagePreViewScreen extends StatefulWidget {
  const UploadImagePreViewScreen({Key? key}) : super(key: key);

  @override
  State<UploadImagePreViewScreen> createState() =>
      _UploadImagePreViewScreenState();
}

class _UploadImagePreViewScreenState extends State<UploadImagePreViewScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: CustomColors.kBackgroundColor,
      child: Scaffold(
        body: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Stack(
            children: [
              Align(
                  alignment: Alignment.topRight,
                  child: Image.asset(CustomAssets.kTopRightBackgroundImage)),
              Padding(
                padding: EdgeInsets.only(top: 60.h, left: 25.w),
                child: ArrowBackButton(
                  height: 45,
                  width: 45,
                  icon: CustomIcon.kArrowBackButtonIcon,
                  onPressed: () => Get.back(),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 120.h, left: 25.w, right: 86.w),
                child: Text(
                  'Upload Your Photo Profile',
                  style: CustomTextStyle.kStackTitleforSignupProcess.copyWith(
                      fontSize: 25, fontWeight: FontWeight.bold, height: 1.23),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 195.h, left: 25.w, right: 60.w),
                child: Text(
                  'This data will be displayed in your account profile for security',
                  style: CustomTextStyle.kStackSubTitleforSignupProcess
                      .copyWith(
                          fontSize: 12,
                          fontWeight: FontWeight.bold,
                          height: 1.23),
                ),
              )
            ],
          ),
          SizedBox(
            height: 20.h,
          ),
          Padding(
            padding: EdgeInsets.only(top: 60.h, left: 65.w, right: 65.w),
            child: CustomContainer(
              width: 254,
              height: 238,
              myWidget: previewImage(
                  image: CustomAssets.kChooseImage,
                  icon: FontAwesomeIcons.xmark),
              onPressed: () => imagesPicker(ImageSource.gallery),
            ),
          ),
          const Spacer(),
          Padding(
            padding: EdgeInsets.only(left: 109.w, bottom: 60.h, right: 109.w),
            child: CustomElevetedButton(
                title: 'Next',
                height: 57,
                width: 157,
                backgroundcolorOne: CustomColors.kButtonColor,
                backgroundcolorTwo: CustomColors.kButton2Color,
                onPressed: () {
                  Get.to(
                    () => const SetLocationScreen(),
                  );
                }),
          ),
        ]),
      ),
    );
  }

  imagesPicker(ImageSource source) async {
    final XFile? photo = await ImagePicker().pickImage(source: source);
    setState(() {
      if (photo == null) return;
    });
  }
}
