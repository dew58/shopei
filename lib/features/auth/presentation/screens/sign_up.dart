import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shopie/core/constants/main_texts.dart';
import 'package:shopie/core/helper/spacer.dart';
import 'package:shopie/core/themes/my_colors.dart';
import 'package:shopie/core/themes/text_themes.dart';

import '../widgets/facebook_button.dart';
import '../widgets/google_button.dart';
import '../widgets/have_account.dart';
import '../widgets/or_divider.dart';
import '../widgets/sign_up_form.dart';

class SignUp extends StatelessWidget {
  const SignUp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.white0,
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(vertical: 5.h, horizontal: 15.w),
            child: SizedBox(
              width: MediaQuery.sizeOf(context).width * 0.9,
              height: MediaQuery.sizeOf(context).height,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    MainTexts.createAccount,
                    style: MyStyle.semibold32black,
                  ),
                  verticalSpace(5),
                  Text(
                    MainTexts.letscreateyouraccount,
                    style:
                        MyStyle.regular16black.copyWith(color: MyColors.gray5),
                  ),
                  verticalSpace(20),
                  SignUpForm(),
                  verticalSpace(25),
                  OrDivider(),
                  verticalSpace(25),
                  GoogleButton(
                    text: MainTexts.signupgoogle,
                  ),
                  verticalSpace(15),
                  FacebookButton(
                    text: MainTexts.signupfacebook,
                  ),
                  verticalSpace(60),
                  AlreadyHaveAccount(
                    text: MainTexts.haveaccount,
                    textbutton: MainTexts.loginbutton,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
