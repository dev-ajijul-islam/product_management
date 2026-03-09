import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:product_manager/core/constants/app_colors.dart';

class AppTheme {
  static ThemeData lightTheme = ThemeData(
    colorSchemeSeed: AppColors.primaryColor,
    textTheme: _textTheme,
  );

  static ThemeData darkTheme = ThemeData(
    brightness: .dark,
    colorSchemeSeed: AppColors.primaryColor,
    textTheme: _textTheme,
  );
}

TextTheme _textTheme = TextTheme(
  titleLarge: TextStyle(fontSize: 25.sp, fontWeight: FontWeight.bold),
  bodyMedium: TextStyle(color: AppColors.textColor, fontSize: 16.sp),
);
