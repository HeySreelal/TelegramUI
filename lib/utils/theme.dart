import 'package:flutter/material.dart';

class OwlTheme {
  static const Color primaryBlack = Color(0xFF333333);
  static const Color white = Color(0xFFFFFFFF);
  static const Color lightBlue = Color(0xFF179CDE);

  static ThemeData get theme => ThemeData(
        scaffoldBackgroundColor: Colors.black,
        primaryColor: OwlTheme.primaryBlack,
        colorScheme: const ColorScheme.dark(),
        floatingActionButtonTheme: const FloatingActionButtonThemeData(
          foregroundColor: OwlTheme.white,
          backgroundColor: OwlTheme.lightBlue,
        ),
      );
}
