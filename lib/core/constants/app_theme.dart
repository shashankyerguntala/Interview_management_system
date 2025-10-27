import 'package:flutter/material.dart';
import 'package:hire_pro/core/constants/color_constants.dart';

class AppTheme {
  static ThemeData get lightTheme => ThemeData(
    brightness: Brightness.light,
    primaryColor: ColorConstants.primaryColor,
    scaffoldBackgroundColor: ColorConstants.backgroundColor,
    appBarTheme: AppBarTheme(
      backgroundColor: ColorConstants.surfaceColor,
      foregroundColor: ColorConstants.textPrimaryColor,
      elevation: 0,
    ),
    textTheme: lightTextTheme,
    colorScheme: ColorScheme.light(
      primary: ColorConstants.primaryColor,
      secondary: ColorConstants.accentColor,
      surfaceBright: ColorConstants.backgroundColor, //! if color mismatches
      surface: ColorConstants.surfaceColor,
      error: ColorConstants.errorColor,
    ),
  );

  static ThemeData get darkTheme => ThemeData(
    brightness: Brightness.dark,
    primaryColor: ColorConstants.darkPrimary,
    scaffoldBackgroundColor: ColorConstants.darkBackground,
    appBarTheme: AppBarTheme(
      backgroundColor: ColorConstants.darkSurface,
      foregroundColor: ColorConstants.darkTextPrimary,
      elevation: 0,
    ),
    textTheme: darkTextTheme,
    colorScheme: ColorScheme.dark(
      primary: ColorConstants.darkPrimary,
      secondary: ColorConstants.darkAccent,
      surfaceBright: ColorConstants.darkBackground,
      surface: ColorConstants.darkSurface,
      error: ColorConstants.errorColor,
    ),
  );

  static const TextTheme lightTextTheme = TextTheme(
    titleLarge: TextStyle(
      fontSize: 22,
      fontWeight: FontWeight.w700,
      color: ColorConstants.textPrimaryColor,
    ),
    titleMedium: TextStyle(
      fontSize: 18,
      fontWeight: FontWeight.w600,
      color: ColorConstants.textPrimaryColor,
    ),
    titleSmall: TextStyle(
      fontSize: 16,
      fontWeight: FontWeight.w500,
      color: ColorConstants.textSecondaryColor,
    ),
    bodyLarge: TextStyle(fontSize: 16, color: ColorConstants.textPrimaryColor),
    bodyMedium: TextStyle(
      fontSize: 14,
      color: ColorConstants.textSecondaryColor,
    ),
    bodySmall: TextStyle(fontSize: 12, color: ColorConstants.textTertiaryColor),
  );

  static const TextTheme darkTextTheme = TextTheme(
    titleLarge: TextStyle(
      fontSize: 22,
      fontWeight: FontWeight.w700,
      color: ColorConstants.darkTextPrimary,
    ),
    titleMedium: TextStyle(
      fontSize: 18,
      fontWeight: FontWeight.w600,
      color: ColorConstants.darkTextPrimary,
    ),
    titleSmall: TextStyle(
      fontSize: 16,
      fontWeight: FontWeight.w500,
      color: ColorConstants.darkTextSecondary,
    ),
    bodyLarge: TextStyle(fontSize: 16, color: ColorConstants.darkTextPrimary),
    bodyMedium: TextStyle(
      fontSize: 14,
      color: ColorConstants.darkTextSecondary,
    ),
    bodySmall: TextStyle(fontSize: 12, color: ColorConstants.darkTextSecondary),
  );
}
