import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:masmasafood/Data/icondata.dart';
import 'package:masmasafood/View/SignIn%20SignUp%20Screens/uploadpreview_screen.dart';

import '../../Components/custom_container.dart';
import '../../Components/custom_arrowbutton.dart';
import '../../Components/customelevetedbutton.dart';
import '../../Data/colors.dart';
import '../../Data/images_path.dart';
import '../../Data/typography.dart';
import 'package:image_picker/image_picker.dart';

class UploadImageScreen extends StatefulWidget {
  const UploadImageScreen({Key? key}) : super(key: key);

  @override
  State<UploadImageScreen> createState() => _UploadImageScreenState();
}

class _UploadImageScreenState extends State<UploadImageScreen> {
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
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                        height: 1.23),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 200.h, left: 25.w, right: 60.w),
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
            Padding(
              padding: EdgeInsets.only(top: 20.h, left: 25.w, right: 23.w),
              child: CustomContainer(
                width: 325,
                height: 129,
                onPressed: () => imagesPicker(ImageSource.gallery),
                myWidget: containerImage(
                    imageUrl: CustomAssets.kGalleryIconSvg,
                    titleTexts: 'From Gallery'),
              ),
            ),
            SizedBox(
              height: 20.h,
            ),
            Padding(
              padding: EdgeInsets.only(top: 20.h, left: 25.w, right: 23.w),
              child: CustomContainer(
                width: 325,
                height: 129,
                onPressed: () => imagesPicker(ImageSource.camera),
                myWidget: containerImage(
                    imageUrl: CustomAssets.kCameraIconSvg,
                    titleTexts: 'Take Photo'),
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
                      () => const UploadImagePreViewScreen(),
                    );
                  }),
            ),
          ]),
        ));
  }

  imagesPicker(ImageSource source) async {
    final XFile? photo = await ImagePicker().pickImage(source: source);
    setState(() {
      if (photo == null) return;
    });
  }
}
