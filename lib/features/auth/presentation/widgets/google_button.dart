import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shopie/features/auth/logic/cubit/auth_cubit.dart';

import '../../../../core/helper/spacer.dart';
import '../../../../core/themes/my_colors.dart';
import '../../../../core/themes/text_themes.dart';
import '../../../../core/widgets/my_buttons.dart';

class GoogleButton extends StatelessWidget {
  final String text;
  const GoogleButton({
    super.key,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        BlocProvider.of<AuthCubit>(context).signUpWithGoogle(context);
      },
      child: MyButtons(
        color: MyColors.white0,
        widget: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
                height: 24.h,
                width: 24.h,
                child: Image.asset("assets/icons/logos_google_icon.png")),
            horizontalSpace(8),
            Text(
              text,
              style: MyStyle.mediam16white.copyWith(color: MyColors.black9),
            ),
          ],
        ),
      ),
    );
  }
}
