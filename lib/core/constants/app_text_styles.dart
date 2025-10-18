import 'package:flutter/material.dart';
import 'package:pokedex_app/core/core_exports.dart' show AppColors;

class AppTextStyles {
  AppTextStyles._();

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
      color: AppColors.primaryGray,
      height: 1.5,
      letterSpacing: 0.0,
    );
  }

  // Primary button text
  static TextStyle buttonPrimary(BuildContext context) {
    return const TextStyle(
      fontFamily: 'Poppins',
      fontSize: 18,
      fontWeight: FontWeight.w600,
      color: Color(0xFFFAFAFA),
      letterSpacing: 0.0,
    );
  }

  static TextStyle navLabelActive(BuildContext context) {
    return const TextStyle(
      fontFamily: 'Poppins',
      fontSize: 12,
      height: 1.5,
      fontWeight: FontWeight.w700,
      letterSpacing: 0,
    );
  }

  static TextStyle navLabelInactive(BuildContext context) {
    return const TextStyle(
      fontFamily: 'Poppins',
      fontSize: 12,
      height: 1.5,
      fontWeight: FontWeight.w500,
      letterSpacing: 0,
    );
  }
}
