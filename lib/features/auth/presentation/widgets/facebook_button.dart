import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/helper/spacer.dart';
import '../../../../core/themes/my_colors.dart';
import '../../../../core/themes/text_themes.dart';
import '../../../../core/widgets/my_buttons.dart';

class FacebookButton extends StatelessWidget {
  final String text;
  const FacebookButton({
    super.key,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return MyButtons(
      color: MyColors.blue,
      widget: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
              height: 24.h,
              width: 24.h,
              child: Image.asset("assets/icons/logos_facebook.png")),
          horizontalSpace(8),
          Text(
            text,
            style: MyStyle.mediam16white,
          ),
        ],
      ),
    );
  }
}
