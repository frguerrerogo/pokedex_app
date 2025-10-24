import 'package:flutter/widgets.dart';
import 'package:pokedex_app/core/core_exports.dart' show AppColors;

class PageIndicator extends StatelessWidget {
  final int currentPage;
  final int totalPages;

  const PageIndicator({
    super.key,
    required this.currentPage,
    required this.totalPages,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: List.generate(
        totalPages,
        (index) => AnimatedContainer(
          duration: const Duration(milliseconds: 400),
          margin: const EdgeInsets.symmetric(horizontal: 4),
          height: 12,
          width: currentPage == index ? 30 : 12,
          decoration: BoxDecoration(
            color: currentPage == index
                ? AppColors.primaryBlue
                : AppColors.secondaryBlue25,
            borderRadius: BorderRadius.circular(12),
          ),
        ),
      ),
    );
  }
}
