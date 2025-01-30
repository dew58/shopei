import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shopie/core/helper/spacer.dart';
import 'package:shopie/core/themes/text_themes.dart';
import 'package:shopie/features/main_home/presentation/widgets/account_item.dart';

import '../../../../../core/themes/my_colors.dart';

class Account extends StatelessWidget {
  const Account({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
            child: Text(
          "Account",
          style: MyStyle.semibold24black,
        )),
        automaticallyImplyLeading: true,
        actions: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.w),
            child: Image.asset("assets/icons/Bell.png"),
          )
        ],
      ),
      body: Column(
        children: [
          verticalSpace(20),
          AccountItem(
              imageName: "assets/icons/Bell.png", itemName: "My Orders"),
          graySpace(context),
          AccountItem(
              imageName: "assets/icons/Bell.png", itemName: "My Orders"),
          Divider(
            color: MyColors.white1,
            thickness: 1,
            indent: 57.w,
            endIndent: 30.w,
          ),
          AccountItem(
              imageName: "assets/icons/Bell.png", itemName: "My Orders"),
          Divider(
            color: MyColors.white1,
            thickness: 1,
            indent: 57.w,
            endIndent: 30.w,
          ),
          AccountItem(
              imageName: "assets/icons/Bell.png", itemName: "My Orders"),
          Divider(
            color: MyColors.white1,
            thickness: 1,
            indent: 57.w,
            endIndent: 30.w,
          ),
          AccountItem(
              imageName: "assets/icons/Bell.png", itemName: "My Orders"),
          graySpace(context),
          AccountItem(
              imageName: "assets/icons/Bell.png", itemName: "My Orders"),
          Divider(
            color: MyColors.white1,
            thickness: 1,
            indent: 57.w,
            endIndent: 30.w,
          ),
          AccountItem(
              imageName: "assets/icons/Bell.png", itemName: "My Orders"),
          graySpace(context),
          AccountItem(
              imageName: "assets/icons/Bell.png", itemName: "My Orders"),
        ],
      ),
    );
  }

  Widget graySpace(BuildContext context) {
    return Container(
      height: 10.h,
      width: MediaQuery.sizeOf(context).width,
      color: MyColors.white1,
    );
  }
}
