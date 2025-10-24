import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pokedex_app/core/core_exports.dart'
    show AppBottomNavigationBar, PokeballLoading, AppImages, InfoCardContent;
import 'package:pokedex_app/core/di/di_providers.dart';
import 'package:pokedex_app/features/pokemon/presentation/widgets/pokemon_card_favorite.dart';
import 'package:pokedex_app/l10n/app_localizations.dart';

class FavoritesPage extends ConsumerWidget {
  const FavoritesPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final favoritesAsync = ref.watch(favoritesProvider);
    final l10n = AppLocalizations.of(context);

    return Scaffold(
      backgroundColor: Colors.white,
      bottomNavigationBar: const AppBottomNavigationBar(),
      body: favoritesAsync.when(
        data: (favorites) {
          if (favorites.isEmpty) {
            return Padding(
              padding: const EdgeInsets.all(24.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  InfoCardContent(
                    image: AppImages.magikarp,
                    title: l10n.noFavoritePokemonMessage,
                    subtitle: l10n.favoritePokemonInstruction,
                  ),
                ],
              ),
            );
          }

          return Column(
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(16, 32, 16, 16),
                child: Align(
                  alignment: Alignment.center,
                  child: Text(
                    l10n.favorites,
                    style: const TextStyle(
                      fontSize: 28,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                ),
              ),
              Expanded(
                child: ListView.separated(
                  padding: const EdgeInsets.all(12),
                  itemCount: favorites.length,
                  separatorBuilder: (_, _) => const SizedBox(height: 8),
                  itemBuilder: (context, index) {
                    final favorite = favorites[index];
                    return PokemonCardFavorite(favorite: favorite);
                  },
                ),
              ),
            ],
          );
        },
        loading: () => const Center(child: PokeballLoading(size: 100)),
        error: (error, stack) => Center(child: Text(l10n.errorMessage(error.toString()))),
      ),
    );
  }
}
