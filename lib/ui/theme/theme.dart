import 'package:flutter/material.dart';
import 'package:shop_app/gen/fonts.gen.dart';
import 'package:shop_app/ui/theme/colors.dart';

class CustomTheme {
  static ThemeData lightTheme = ThemeData.light().copyWith(
    scaffoldBackgroundColor: backgroundColor,
    textTheme: const TextTheme(
      bodySmall: TextStyle(
        color: whiteColor,
        fontFamily: 'SB',
        fontSize: 20,
      ),
      bodyLarge: TextStyle(
        color: whiteColor,
        fontFamily: 'SB',
        fontSize: 32,
      ),
      titleMedium: TextStyle(
        color: greyColor,
        fontFamily: 'SB',
        fontSize: 14,
        fontWeight: FontWeight.bold,
      ),
      labelSmall: TextStyle(
        color: blueColor,
        fontFamily: 'SB',
        fontSize: 10,
      ),
      labelMedium: TextStyle(
        color: blueColor,
        fontFamily: 'SB',
        fontSize: 16,
      ),
    ),
  );
}
