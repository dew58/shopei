import 'package:flutter/material.dart';

import '../../../../core/constants/main_texts.dart';
import '../../../../core/themes/my_colors.dart';
import '../../../../core/themes/text_themes.dart';

class ForgetPassword extends StatelessWidget {
  const ForgetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      // crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Text(
          MainTexts.forgetYourPassword,
          style: MyStyle.regular14black.copyWith(color: MyColors.gray5),
        ),
        TextButton(
          onPressed: () {},
          child: Text(
            "Reset your password",
            style: MyStyle.regular14black
                .copyWith(decoration: TextDecoration.underline),
          ),
        ),
      ],
    );
  }
}
