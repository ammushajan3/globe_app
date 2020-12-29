import 'package:flutter/material.dart';
import 'package:task_app/themes/color.dart';

class Themes {
  Themes._();
  static final ThemeData lightTheme = _lightTheme();
  static ThemeData _lightTheme() {
    return ThemeData(
      appBarTheme: AppBarTheme(
        color: AppColors.COLOR_WHITE,
      ),
      textTheme: TextTheme(
        subtitle1: TextStyle(fontSize: 12.0, color: AppColors.COLOR_GREY),
        subtitle2: TextStyle(
            fontSize: 16.0,
            color: AppColors.COLOR_BLACK,
            fontWeight: FontWeight.bold),
        bodyText1: TextStyle(
            fontSize: 20.0,
            fontWeight: FontWeight.w600,
            color: AppColors.COLOR_DARK_GREY),
        bodyText2: TextStyle(
            fontSize: 9.0,
            fontWeight: FontWeight.w600,
            color: AppColors.COLOR_WHITE),
        caption: TextStyle(
            fontWeight: FontWeight.w600,
            fontSize: 12.0,
            color: AppColors.COLOR_WHITE),
        headline4: TextStyle(
          fontSize: 15.0,
          fontWeight: FontWeight.w500,
          color: AppColors.COLOR_LIGHT_GREY,
        ),
        headline5: TextStyle(
            fontSize: 14.0,
            fontWeight: FontWeight.w600,
            color: AppColors.COLOR_WHITE),
        headline6: TextStyle(
            fontWeight: FontWeight.w600,
            fontSize: 12.0,
            color: AppColors.COLOR_LIGHT_BLUE),
      ),
    );
  }
}
