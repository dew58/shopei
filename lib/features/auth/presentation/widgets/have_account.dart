// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:shopie/core/themes/my_colors.dart';
import 'package:shopie/core/themes/text_themes.dart';

class AlreadyHaveAccount extends StatelessWidget {
  final String text;
  final String textbutton;
  const AlreadyHaveAccount({
    super.key,
    required this.text,
    required this.textbutton,
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
          onPressed: () {},
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
