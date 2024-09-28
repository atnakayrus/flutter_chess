import 'package:flutter/material.dart';
import 'package:flutter_chess/commons/app_style.dart';
import 'package:google_fonts/google_fonts.dart';

ThemeData appTheme = ThemeData(
  colorScheme: ColorScheme.fromSeed(
    seedColor: const Color(0xffFFE0B5),
  ),
  primaryColor: const Color(0xffFFE0B5),
  primaryColorDark: const Color(0xffD8AE7E),
  highlightColor: const Color(0xffF8C794),
  scaffoldBackgroundColor: const Color(0xffFFF2D7),
  fontFamily: GoogleFonts.montserrat().fontFamily,
  textTheme: const TextTheme(
    displayLarge: TextStyle(),
    displayMedium: TextStyle(),
    displaySmall: TextStyle(),
    headlineLarge: TextStyle(),
    headlineMedium: TextStyle(),
    headlineSmall: TextStyle(),
    titleLarge: TextStyle(),
    titleMedium: TextStyle(),
    titleSmall: TextStyle(),
    bodyLarge: TextStyle(),
    bodyMedium: TextStyle(),
    bodySmall: TextStyle(),
    labelLarge: TextStyle(),
    labelMedium: TextStyle(),
    labelSmall: TextStyle(),
  ).apply(
    bodyColor: AppColors().buttonColor,
    displayColor: AppColors().buttonColor,
  ),
  appBarTheme:
      const AppBarTheme(backgroundColor: Colors.transparent, centerTitle: true),
);
