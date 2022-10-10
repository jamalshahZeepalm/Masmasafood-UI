// ignore_for_file: file_names, must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:masmasafood/Data/typography.dart';
import 'package:masmasafood/Model/chat.dart';

import '../Data/colors.dart';
import '../View/Chat Screens/chatdetails_screen.dart';

class ChatWidget extends StatelessWidget {
  ChatModel mychat;

  ChatWidget({Key? key, required this.mychat}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 12.h, left: 20.w, right: 20.w),
      child: GestureDetector(
        onTap: () {
          Get.to(() => ChatDetailsScreen(mychat: mychat),
              transition: Transition.fadeIn);
        },
        child: Container(
          width: 325.w,
          height: 80.h,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(22.r),
            color: CustomColors.kButtonTextColor,
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
                        image: AssetImage(mychat.image), fit: BoxFit.cover)),
              ),
            ),
            title: Text(
              mychat.name,
              style: CustomTextStyle.kChatListTileTextStyle,
            ),
            subtitle: Text(
              mychat.massage,
              style: CustomTextStyle.kChatListTilesubTextStyle,
            ),
            trailing: Text(
              mychat.time,
              style: CustomTextStyle.kChatListTileTralingTextStyle,
            ),
          ),
        ),
      ),
    );
  }
}
