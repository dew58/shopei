// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shopie/core/helper/spacer.dart';
import 'package:shopie/core/themes/my_colors.dart';

import '../../../../core/themes/text_themes.dart';

class AccountItem extends StatelessWidget {
  final String imageName;
  final String itemName;
  final Function? onTap;
  const AccountItem({
    super.key,
    required this.imageName,
    required this.itemName,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 25.w, vertical: 20.h),
      child: Row(
        children: [
          Image.asset(imageName),
          horizontalSpace(10),
          Text(
            itemName,
            style: MyStyle.regular16black,
          ),
          Spacer(),
          Icon(
            Icons.arrow_forward_ios,
            color: MyColors.white3,
          )
        ],
      ),
    );
  }
}
