// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:masmasafood/Data/icondata.dart';

import 'package:masmasafood/Data/images_path.dart';
import 'package:masmasafood/Model/chat.dart';
import 'package:masmasafood/Model/messagelist.dart';
import 'package:masmasafood/View/Chat%20Screens/callringing_screen.dart';

import '../../Components/custom_arrowbutton.dart';
import '../../Data/colors.dart';
import '../../Data/typography.dart';

class ChatDetailsScreen extends StatelessWidget {
  ChatModel mychat;
  ChatDetailsScreen({Key? key, required this.mychat}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: CustomColors.kBackgroundColor,
      child: Scaffold(
        body: Column(
          children: [
            Stack(
              children: [
                Align(
                    alignment: Alignment.topRight,
                    child: Image.asset(CustomAssets.kDetailImage)),
                Padding(
                  padding: EdgeInsets.only(top: 50.h, left: 25.w),
                  child: ArrowBackButton(
                    height: 45,
                    width: 45,
                    icon: CustomIcon.kArrowBackButtonIcon,
                    onPressed: () => Get.back(),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 100.h, left: 25.w, right: 86.w),
                  child: Text(
                    'Chat Detail',
                    style: CustomTextStyle.kStackTitleforSignupProcess.copyWith(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                        height: 1.23),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 155.h, left: 16.w, right: 13.w),
                  child: Container(
                    padding: const EdgeInsets.all(7),
                    width: 347.w,
                    height: 93.h,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(22.r),
                      color: CustomColors.kBackgroundColor,
                    ),
                    child: ListTile(
                        leading: Hero(
                          tag: mychat.image,
                          child: Container(
                            width: 62.w,
                            height: 62.h,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(22.r),
                                color: Colors.transparent,
                                image: DecorationImage(
                                    image: AssetImage(mychat.image),
                                    fit: BoxFit.cover)),
                          ),
                        ),
                        title: Text(
                          mychat.name,
                          style: CustomTextStyle.kChatListTileTextStyle,
                        ),
                        subtitle: Row(
                          children: [
                            Text(
                              '•',
                              style: CustomTextStyle.kChatDetailDotTextStyle,
                            ),
                            SizedBox(
                              width: 4.w,
                            ),
                            Text('Online',
                                style: CustomTextStyle.kChatDetailSubTextStyle),
                          ],
                        ),
                        trailing: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: GestureDetector(
                            onTap: () {
                              Get.to(
                                () => const CallRingingScreen(),
                              );
                            },
                            child: Container(
                                width: 40.w,
                                height: 40.h,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(17.r),
                                  color: CustomColors.kPhoneIconBackgroundColor,
                                ),
                                child: Icon(
                                  FontAwesomeIcons.phone,
                                  color: CustomColors.kPhoneIconColor,
                                  size: 15.sp,
                                )),
                          ),
                        )),
                  ),
                )
              ],
            ),
            Stack(
              children: [
                ListView.builder(
                  itemCount: messages.length,
                  shrinkWrap: true,
                  padding: const EdgeInsets.only(top: 10, bottom: 10),
                  physics: const NeverScrollableScrollPhysics(),
                  itemBuilder: (context, index) {
                    return Container(
                      padding: const EdgeInsets.only(
                          left: 14, right: 14, top: 10, bottom: 10),
                      child: Align(
                        alignment: (messages[index].messageType == "receiver"
                            ? Alignment.topLeft
                            : Alignment.topRight),
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            gradient: (messages[index].messageType == "receiver"
                                ? LinearGradient(colors: [
                                    CustomColors.kLinerlightgrey,
                                    CustomColors.kButtonTextColor
                                  ])
                                : LinearGradient(colors: [
                                    CustomColors.kButtonColor,
                                    CustomColors.kButton2Color
                                  ])),
                          ),
                          padding: const EdgeInsets.all(16),
                          child: Text(
                            messages[index].messageContent,
                            style: messages[index].messageType == 'receiver'
                                ? CustomTextStyle.kChatDetailReceverTextStyle
                                : CustomTextStyle.kChatDetailTextStyle,
                          ),
                        ),
                      ),
                    );
                  },
                ),
                Padding(
                  padding: EdgeInsets.only(top: 400.h, left: 10.w, right: 10.w),
                  child: Container(
                    width: 355.w,
                    height: 74.h,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15.r),
                      color: CustomColors.kButtonTextColor,
                    ),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Text(
                            mychat.sendingMessage,
                            style:
                                CustomTextStyle.kChatDetailTypMessageTextStyle,
                          ),
                          SizedBox(
                            width: 16.w,
                          ),
                          Icon(
                            FontAwesomeIcons.paperPlane,
                            color: CustomColors.kPhoneIconColor,
                          ),
                        ]),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
