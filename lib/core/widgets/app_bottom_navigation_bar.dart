import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import 'package:pokedex_app/core/core_exports.dart'
    show AppColors, AppTextStyles, AppImages, navigationControllerProvider, HomeRoute, RegionsRoute;
import 'package:pokedex_app/l10n/app_localizations.dart';

class AppBottomNavigationBar extends ConsumerWidget {
  const AppBottomNavigationBar({super.key});

  void _onItemTapped(BuildContext context, WidgetRef ref, int index) {
    final currentIndex = ref.read(navigationControllerProvider);
    if (currentIndex == index) return;

    ref.read(navigationControllerProvider.notifier).setIndex(index);

    // Navegación según el index
    switch (index) {
      case 0:
        context.go(HomeRoute().location);
        break;
      case 1:
        context.go(RegionsRoute().location);

        break;
      // case 2:
      //   context.go(FavoritesPage().location);
      //   break;
      // case 3:
      //   context.go(ProfilePage().location);
      //   break;
    }
  }

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
  Widget build(BuildContext context, WidgetRef ref) {
    final l10n = AppLocalizations.of(context)!;
    final currentIndex = ref.watch(navigationControllerProvider);

    return BottomNavigationBar(
      currentIndex: currentIndex,
      type: BottomNavigationBarType.fixed,
      selectedItemColor: AppColors.tabBarActiveColor,
      unselectedItemColor: AppColors.primaryGray,
      selectedLabelStyle: AppTextStyles.navLabelActive(context),
      unselectedLabelStyle: AppTextStyles.navLabelInactive(context),
      onTap: (index) => _onItemTapped(context, ref, index),
      items: [
        buildNavItem(asset: AppImages.iconHouse, label: l10n.appTitle),
        buildNavItem(asset: AppImages.iconRegions, label: l10n.regions),
        buildNavItem(asset: AppImages.iconFavorite, label: l10n.favorites),
        buildNavItem(asset: AppImages.iconProfile, label: l10n.profile),
      ],
    );
  }
}
