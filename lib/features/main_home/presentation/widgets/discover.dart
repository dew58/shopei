import 'package:flutter/material.dart';

import '../../../../core/constants/main_texts.dart';
import '../../../../core/themes/text_themes.dart';

class Discover extends StatelessWidget {
  const Discover({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          MainTexts.discover,
          style: MyStyle.semibold32black,
        ),
        Spacer(),
        GestureDetector(
          child: Image.asset("assets/icons/Bell.png"),
        )
      ],
    );
  }
}
