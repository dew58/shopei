import 'package:flutter/material.dart';
import 'package:shopie/core/helper/extension.dart';

import '../../../../core/constants/main_texts.dart';
import '../../../../core/helper/spacer.dart';
import '../../../../core/routes/routes_name.dart';
import '../../../../core/themes/my_colors.dart';
import '../../../../core/themes/text_themes.dart';
import '../../../../core/widgets/my_buttons.dart';

class GetStartedButton extends StatelessWidget {
  const GetStartedButton({super.key});

  @override
  Widget build(BuildContext context) {
    return MyButtons(
      function: () {
        context.pushNamed(Routers.singUp);
      },
      color: MyColors.black9,
      widget: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            MainTexts.getStartedButton,
            style: MyStyle.mediam16white,
          ),
          horizontalSpace(6),
          Icon(
            Icons.arrow_forward,
            color: MyColors.white1,
          )
        ],
      ),
    );
  }
}
