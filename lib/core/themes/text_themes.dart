import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'my_colors.dart';

class MyStyle {
  ///H1
  static TextStyle semibold64black = TextStyle(
      color: MyColors.black9,
      fontSize: 64.sp,
      fontWeight: FontWeight.w600,
      height: 0.7.h);

  ///H2
  static TextStyle semibold32black = TextStyle(
    color: MyColors.black9,
    fontSize: 32.sp,
    fontWeight: FontWeight.w600,
  );

  ///H3
  static TextStyle semibold24black = TextStyle(
    color: MyColors.black9,
    fontSize: 24.sp,
    fontWeight: FontWeight.w600,
  );

  ///H4
  static TextStyle semibold20black = TextStyle(
    color: MyColors.black9,
    fontSize: 20.sp,
    fontWeight: FontWeight.w600,
  );
  static TextStyle medium20black = TextStyle(
    color: MyColors.black9,
    fontSize: 20.sp,
    fontWeight: FontWeight.w500,
  );

  ///B1
  static TextStyle regular16black = TextStyle(
    color: MyColors.black9,
    fontSize: 16.sp,
    fontWeight: FontWeight.w400,
  );
  static TextStyle mediam16white = TextStyle(
    color: MyColors.white0,
    fontSize: 16.sp,
    fontWeight: FontWeight.w500,
  );
  static TextStyle semibold16black = TextStyle(
    color: MyColors.black9,
    fontSize: 16.sp,
    fontWeight: FontWeight.w600,
  );

  ///B2
  static TextStyle regular14black = TextStyle(
    color: MyColors.black9,
    fontSize: 14.sp,
    fontWeight: FontWeight.w400,
  );
  static TextStyle mediam14white = TextStyle(
    color: MyColors.white1,
    fontSize: 14.sp,
    fontWeight: FontWeight.w500,
  );
  static TextStyle semibold14black = TextStyle(
    color: MyColors.black9,
    fontSize: 14.sp,
    fontWeight: FontWeight.w600,
  );

  ///B3
  static TextStyle regular12black = TextStyle(
    color: MyColors.black9,
    fontSize: 12.sp,
    fontWeight: FontWeight.w400,
  );
  static TextStyle mediam12white = TextStyle(
    color: MyColors.white1,
    fontSize: 12.sp,
    fontWeight: FontWeight.w500,
  );
  static TextStyle semibold12black = TextStyle(
    color: MyColors.black9,
    fontSize: 12.sp,
    fontWeight: FontWeight.w600,
  );
}


//FontWeight.w100: Thin, the least thick.

// FontWeight.w200: Extra-light.

// FontWeight.w300: Light.

// FontWeight.w400: Normal / regular / plain (alias: FontWeight.normal).

// FontWeight.w500: Medium.

// FontWeight.w600: Semi-bold.

// FontWeight.w700: Bold (alias: FontWeight.bold).

// FontWeight.w800: Extra-bold.

// FontWeight.w900: Black, the most thick