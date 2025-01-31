import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shopie/core/constants/main_texts.dart';
import 'package:shopie/core/themes/my_colors.dart';
import 'package:shopie/core/themes/text_themes.dart';

class OrDivider extends StatelessWidget {
  const OrDivider({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Divider(
            thickness: 2,
            indent: 10.w,
            color: MyColors.white1,
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          child: Text(
            MainTexts.or,
            style: MyStyle.regular14black.copyWith(color: MyColors.gray5),
          ),
        ),
        Expanded(
          child: Divider(
            thickness: 2,
            endIndent: 10.w,
            color: MyColors.white1,
          ),
        ),
      ],
    );
  }
}
