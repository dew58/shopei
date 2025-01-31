// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shopie/core/themes/my_colors.dart';

class MyButtons extends StatelessWidget {
  final Color color;

  final Widget widget;
  final Function()? function;
  const MyButtons({
    super.key,
    required this.color,
    this.function,
    required this.widget,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: function,
      style: ButtonStyle(
        minimumSize: WidgetStateProperty.all(Size(321.w, 54.h)),
        backgroundColor: WidgetStateProperty.all(color),
        shape: WidgetStateProperty.all(
          RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
              side: BorderSide(color: MyColors.white2, width: 1.5)),
        ),
      ),
      child: Center(child: widget),
    );
  }
}
