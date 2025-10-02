import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:pokedex_app/core/core_exports.dart' show AppColors, AppTextStyles, AppImages;
import 'package:pokedex_app/l10n/app_localizations.dart';

class AppBottomNavigationBar extends StatefulWidget {
  const AppBottomNavigationBar({super.key});

  @override
  State<AppBottomNavigationBar> createState() => _AppBottomNavigationBarState();
}

class _AppBottomNavigationBarState extends State<AppBottomNavigationBar> {
  int _currentIndex = 0;

  BottomNavigationBarItem buildNavItem({required String asset, required String label}) {
    return BottomNavigationBarItem(
      icon: Padding(
        padding: const EdgeInsets.only(bottom: 5),
        child: SvgPicture.asset(
          asset,
          colorFilter: const ColorFilter.mode(AppColors.primaryGray, BlendMode.srcIn),
        ),
      ),
      activeIcon: Padding(
        padding: const EdgeInsets.only(bottom: 5),
        child: SvgPicture.asset(
          asset,
          colorFilter: const ColorFilter.mode(AppColors.tabBarActiveColor, BlendMode.srcIn),
        ),
      ),
      label: label,
    );
  }

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;

    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withValues(alpha: 0.1),
            blurRadius: 6,
            offset: const Offset(0, -3), // sombra hacia arriba
          ),
        ],
      ),
      child: ClipRRect(
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        ),
        child: SizedBox(
          height: 100,
          child: BottomNavigationBar(
            currentIndex: _currentIndex,
            type: BottomNavigationBarType.fixed,
            selectedItemColor: AppColors.tabBarActiveColor,
            unselectedItemColor: AppColors.primaryGray,
            selectedLabelStyle: AppTextStyles.navLabelActive(context),
            unselectedLabelStyle: AppTextStyles.navLabelInactive(context),
            onTap: (index) {
              setState(() {
                _currentIndex = index;
              });
            },
            items: [
              buildNavItem(asset: AppImages.iconHouse, label: l10n.appTitle),
              buildNavItem(asset: AppImages.iconRegions, label: l10n.regions),
              buildNavItem(asset: AppImages.iconFavorite, label: l10n.favorites),
              buildNavItem(asset: AppImages.iconProfile, label: l10n.profile),
            ],
          ),
        ),
      ),
    );
  }
}
