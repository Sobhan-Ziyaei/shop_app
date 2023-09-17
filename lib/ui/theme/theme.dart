import 'package:flutter/material.dart';
import 'package:shop_app/gen/fonts.gen.dart';
import 'package:shop_app/ui/theme/colors.dart';

class CustomTheme {
  static ThemeData lightTheme = ThemeData.light().copyWith(
    scaffoldBackgroundColor: backgroundColor,
    textTheme: const TextTheme(
      bodySmall: TextStyle(
        color: whiteColor,
        fontFamily: FontFamily.sb,
        fontSize: 20,
      ),
      bodyLarge: TextStyle(
        color: whiteColor,
        fontFamily: FontFamily.sb,
        fontSize: 32,
      ),
      labelSmall: TextStyle(
        color: blueColor,
        fontFamily: FontFamily.sb,
        fontSize: 10,
      ),
    ),
  );
}
