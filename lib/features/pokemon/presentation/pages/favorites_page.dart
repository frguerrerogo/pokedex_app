import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pokedex_app/core/core_exports.dart' show AppBottomNavigationBar, PokeballLoading;
import 'package:pokedex_app/core/di/di_providers.dart';
import 'package:pokedex_app/features/pokemon/presentation/widgets/pokemon_card_favorite.dart';
import 'package:pokedex_app/l10n/app_localizations.dart';

class FavoritesPage extends ConsumerWidget {
  const FavoritesPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final favoritesAsync = ref.watch(favoritesProvider);

    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(16, 32, 16, 16),
            child: Align(
              alignment: Alignment.center,
              child: Builder(
                builder: (context) => Text(
                  AppLocalizations.of(context).favorites,
                  style: const TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
              ),
            ),
          ),
          Expanded(
            child: favoritesAsync.when(
              data: (favorites) {
                if (favorites.isEmpty) {
                  return Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.favorite_border, size: 80, color: Colors.grey[400]),
                        const SizedBox(height: 16),
                        Builder(
                          builder: (context) => Text(
                            AppLocalizations.of(context).noFavorites,
                            style: TextStyle(fontSize: 18, color: Colors.grey[600]),
                          ),
                        ),
                        const SizedBox(height: 8),
                        Builder(
                          builder: (context) => Text(
                            AppLocalizations.of(context).addFavoritesInstruction,
                            style: TextStyle(fontSize: 14, color: Colors.grey[500]),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ],
                    ),
                  );
                }

                return ListView.separated(
                  padding: const EdgeInsets.all(12),
                  itemCount: favorites.length,
                  separatorBuilder: (_, _) => const SizedBox(height: 8),
                  itemBuilder: (context, index) {
                    final favorite = favorites[index];
                    return PokemonCardFavorite(favorite: favorite);
                  },
                );
              },
              loading: () => const Center(child: PokeballLoading(size: 100)),
              error: (error, stack) => Center(
                child: Builder(
                  builder: (context) =>
                      Text(AppLocalizations.of(context).errorMessage(error.toString())),
                ),
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: const AppBottomNavigationBar(),
    );
  }
}
