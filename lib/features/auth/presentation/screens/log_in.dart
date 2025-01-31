import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shopie/core/helper/extension.dart';

import '../../../../core/constants/main_texts.dart';
import '../../../../core/helper/spacer.dart';
import '../../../../core/routes/routes_name.dart';
import '../../../../core/themes/my_colors.dart';
import '../../../../core/themes/text_themes.dart';
import '../widgets/facebook_button.dart';
import '../widgets/google_button.dart';
import '../widgets/have_account.dart';
import '../widgets/log_in_form.dart';
import '../widgets/or_divider.dart';

class LogIn extends StatelessWidget {
  const LogIn({super.key});

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
              height: MediaQuery.sizeOf(context).height * 0.95,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    MainTexts.logInYourAccount,
                    style: MyStyle.semibold32black,
                  ),
                  verticalSpace(5),
                  Text(
                    MainTexts.greatToSeeYou,
                    style:
                        MyStyle.regular16black.copyWith(color: MyColors.gray5),
                  ),
                  verticalSpace(20),
                  LogInForm(),
                  verticalSpace(25),
                  OrDivider(),
                  verticalSpace(25),
                  GoogleButton(
                    text: MainTexts.loginGoogle,
                  ),
                  verticalSpace(15),
                  FacebookButton(
                    text: MainTexts.loginFacebook,
                  ),
                  Spacer(),
                  AlreadyHaveAccount(
                    text: MainTexts.donthaveaccount,
                    textbutton: MainTexts.join,
                    onPressed: () {
                      context.pushNamed(Routers.singUp);
                    },
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
