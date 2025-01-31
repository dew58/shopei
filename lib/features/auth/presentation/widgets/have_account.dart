// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import '../../../../core/themes/my_colors.dart';
import '../../../../core/themes/text_themes.dart';

class AlreadyHaveAccount extends StatelessWidget {
  final String text;
  final String textbutton;
  final void Function() onPressed;
  const AlreadyHaveAccount({
    super.key,
    required this.text,
    required this.textbutton,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          text,
          style: MyStyle.regular16black.copyWith(color: MyColors.gray5),
        ),
        TextButton(
          onPressed: () {
            onPressed;
          },
          child: Text(
            textbutton,
            style: MyStyle.regular16black
                .copyWith(decoration: TextDecoration.underline),
          ),
        ),
      ],
    );
  }
}
