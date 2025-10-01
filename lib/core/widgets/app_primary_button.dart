import 'package:flutter/material.dart';
import 'package:pokedex_app/core/constants/constants_exports.dart' show AppColors, AppTextStyles;

class AppPrimaryButton extends StatelessWidget {
  final String label;
  final VoidCallback onPressed;
  final bool isFullWidth;
  final bool isDisabled;

  const AppPrimaryButton({
    super.key,
    required this.label,
    required this.onPressed,
    this.isFullWidth = true,
    this.isDisabled = false,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: isDisabled ? null : onPressed,
      style: ElevatedButton.styleFrom(
        backgroundColor: AppColors.buttonPrimaryDefaultBg,
        disabledBackgroundColor: AppColors.secondaryBlue25,
        minimumSize: isFullWidth ? const Size(double.infinity, 60) : const Size(120, 60),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
      ),
      child: Text(label, style: AppTextStyles.buttonPrimary(context)),
    );
  }
}
