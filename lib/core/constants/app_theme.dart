import 'package:flutter/material.dart';
import 'package:pokedex_app/core/constants/constants_exports.dart' show AppColors;

class AppTheme {
  AppTheme._();


  static ThemeData lightTheme = ThemeData(
    fontFamily: 'Poppins',
    primaryColor: AppColors.primary,
    scaffoldBackgroundColor: AppColors.background,
    colorScheme: const ColorScheme.light(
      primary: AppColors.primary,
      secondary: AppColors.secondary,
      surface: AppColors.background,
    ),
    textTheme: const TextTheme(
      bodyMedium: TextStyle(fontWeight: FontWeight.w400), // Regular
      bodyLarge: TextStyle(fontWeight: FontWeight.w500), // Medium
      titleMedium: TextStyle(fontWeight: FontWeight.w600), // SemiBold
      titleLarge: TextStyle(fontWeight: FontWeight.w700), // Bold
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: AppColors.primary,
        foregroundColor: Colors.white,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(12))),
      ),
    ),
  );
}
