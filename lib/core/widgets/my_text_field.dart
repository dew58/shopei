// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import '../themes/my_colors.dart';
import '../themes/text_themes.dart';

class MyTextField extends StatelessWidget {
  final TextEditingController? controller;
  final String helper;
  final String errorString;
  final bool ispassword;

  const MyTextField({
    super.key,
    this.controller,
    required this.helper,
    required this.errorString,
    required this.ispassword,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      obscureText: ispassword,
      decoration: InputDecoration(
        errorText: errorString,
        errorStyle: MyStyle.mediam14white.copyWith(color: MyColors.red),
        helper: Text(helper),
        helperStyle: MyStyle.regular16black.copyWith(color: MyColors.white4),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.0),
          borderSide: BorderSide(color: MyColors.white3, width: 2),
        ),
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.0),
          borderSide: BorderSide(color: MyColors.red),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.0),
          borderSide: BorderSide(color: MyColors.white1, width: 2),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.0),
          borderSide: BorderSide(color: MyColors.white3, width: 2),
        ),
      ),
    );
  }
}
