import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shopie/core/themes/my_colors.dart';

import '../../../../core/constants/main_texts.dart';
import '../../../../core/themes/text_themes.dart';
import '../widgets/get_started_button.dart';

class OnBording extends StatelessWidget {
  const OnBording({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: MyColors.white0,
        body: SafeArea(
          child: Stack(
            children: [
              Image.asset("assets/images/Element.png",
                  width: MediaQuery.sizeOf(context).width,
                  height: MediaQuery.sizeOf(context).height),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 10.h, horizontal: 20.w),
                child: Column(
                  children: [
                    Text(MainTexts.welcomeText, style: MyStyle.semibold64black),
                    Spacer(),
                    GetStartedButton()
                  ],
                ),
              ),
            ],
          ),
        ));
  }
}
