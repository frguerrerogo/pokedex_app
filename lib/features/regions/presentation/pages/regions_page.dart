import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pokedex_app/core/core_exports.dart'
    show AppBottomNavigationBar, InfoCardContent, AppImages;
import 'package:pokedex_app/l10n/app_localizations.dart' show AppLocalizations;

class RegionsPage extends ConsumerWidget {
  const RegionsPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final l10n = AppLocalizations.of(context);

    return Scaffold(
      bottomNavigationBar: const AppBottomNavigationBar(),
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            InfoCardContent(
              image: AppImages.giglipop,
              title: l10n.comingSoon,
              subtitle: l10n.sectionComingSoonMessage,
            ),
          ],
        ),
      ),
    );
  }
}
