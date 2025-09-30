import 'package:flutter/material.dart';
import 'package:pokedex_app/core/constants/app_colors.dart';

class AppTextStyles {
  AppTextStyles._();

  static ColorScheme _colors(BuildContext context) => Theme.of(context).colorScheme;

  /// Primary text
  static TextStyle headingMedium(BuildContext context) {
    return const TextStyle(
      fontFamily: 'Poppins',
      fontSize: 26,
      fontWeight: FontWeight.w500,
      color: AppColors.textPrimary,
      height: 1.5,
      letterSpacing: 0.0,
    );
  }

  /// Secondary text
  static TextStyle bodySmall(BuildContext context) {
    return const TextStyle(
      fontFamily: 'Poppins',
      fontSize: 14,
      fontWeight: FontWeight.w400,
      color: AppColors.textSecondary,
      height: 1.5,
      letterSpacing: 0.0,
    );
  }

  // Primary button text
  static TextStyle buttonPrimary(BuildContext context) {
    return const TextStyle(
      fontFamily: 'Poppins',
      fontSize: 18,
      fontWeight: FontWeight.w600, // SemiBold
      color: Color(0xFFFAFAFA),    // Blanco
      letterSpacing: 0.0,
    );
  }
}
