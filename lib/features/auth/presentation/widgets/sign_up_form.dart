import 'package:flutter/material.dart';

import '../../../../core/constants/main_texts.dart';
import '../../../../core/helper/spacer.dart';
import '../../../../core/themes/my_colors.dart';
import '../../../../core/themes/text_themes.dart';
import '../../../../core/widgets/my_buttons.dart';
import '../../../../core/widgets/my_text_field.dart';

class SignUpForm extends StatelessWidget {
  const SignUpForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            MainTexts.fullname,
            style: MyStyle.mediam16white.copyWith(color: MyColors.black9),
          ),
          MyTextField(
            errorString: 'please enter your name',
            helper: 'Enter your full name',
            ispassword: false,
          ),
          verticalSpace(10),
          Text(
            MainTexts.email,
            style: MyStyle.mediam16white.copyWith(color: MyColors.black9),
          ),
          MyTextField(
            errorString: 'please enter valid email address',
            helper: 'Enter your email',
            ispassword: false,
          ),
          verticalSpace(10),
          Text(
            MainTexts.password,
            style: MyStyle.mediam16white.copyWith(color: MyColors.black9),
          ),
          MyTextField(
            errorString: 'please enter correct password',
            helper: 'Enter your password',
            ispassword: true,
          ),
          verticalSpace(20),
          MyButtons(
            color: MyColors.white2,
            widget: Text(
              MainTexts.createaccountbutton,
              style: MyStyle.mediam16white,
            ),
          ),
        ],
      ),
    );
  }
}
