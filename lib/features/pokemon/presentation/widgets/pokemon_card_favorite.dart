import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pokedex_app/core/core_exports.dart' show PokemonTypeConfig, PokemonTypeChip;
import 'package:pokedex_app/core/di/di_providers.dart';
import 'package:pokedex_app/core/router/app_router.dart';
import 'package:pokedex_app/features/pokemon/domain/entities/favorite.dart';

class PokemonCardFavorite extends ConsumerWidget {
  final Favorite favorite;

  const PokemonCardFavorite({super.key, required this.favorite});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final bgColor = PokemonTypeConfig.getColor(favorite.types.first);

    return Dismissible(
      key: ValueKey(favorite.pokemonId),
      direction: DismissDirection.endToStart,
      background: Container(
        margin: const EdgeInsets.symmetric(vertical: 6, horizontal: 12),
        decoration: BoxDecoration(color: Colors.red, borderRadius: BorderRadius.circular(16)),
        alignment: Alignment.centerRight,
        padding: const EdgeInsets.only(right: 20),
        child: const Icon(Icons.delete, color: Colors.white, size: 28),
      ),
      onDismissed: (direction) async {
        try {
          // Ejecutar la lógica de remover favorito
          final removeFavoriteUseCase = await ref.read(removeFavoriteUseCaseProvider.future);
          await removeFavoriteUseCase(favorite.pokemonId);

          // Invalidar el provider para refrescar la lista
          ref.invalidate(favoritesProvider);
        } catch (e) {
          if (context.mounted) {
            ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('Error: $e')));
          }
        }
      },
      child: GestureDetector(
        onTap: () {
          PokemonDetailRoute(id: favorite.pokemonId.toString()).push(context);
        },
        child: Container(
          margin: const EdgeInsets.symmetric(vertical: 6, horizontal: 12),
          decoration: BoxDecoration(
            color: bgColor.withValues(alpha: 0.6),
            borderRadius: BorderRadius.circular(16),
          ),
          child: Stack(
            children: [
              Row(
                children: [
                  Expanded(
                    flex: 2,
                    child: Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'N°${favorite.pokemonId.toString().padLeft(3, '0')}',
                            style: const TextStyle(
                              fontSize: 12,
                              color: Colors.black87,
                              fontWeight: FontWeight.w900,
                            ),
                          ),
                          Text(
                            favorite.name[0].toUpperCase() + favorite.name.substring(1),
                            style: const TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                            ),
                          ),
                          const SizedBox(height: 6),
                          Wrap(
                            spacing: 6,
                            children: favorite.types
                                .map((type) => PokemonTypeChip(type: type))
                                .toList(),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 135,
                    height: 110,
                    child: Stack(
                      children: [
                        Container(
                          width: 135,
                          height: 110,
                          decoration: BoxDecoration(
                            borderRadius: const BorderRadius.all(Radius.circular(15.0)),
                            color: PokemonTypeConfig.getColor(favorite.types.first),
                          ),
                          alignment: Alignment.center,
                          child: Image.asset(
                            PokemonTypeConfig.getIcon(favorite.types.first),
                            width: 95,
                            height: 95,
                            fit: BoxFit.contain,
                            color: Colors.white.withValues(alpha: 0.5),
                            colorBlendMode: BlendMode.srcIn,
                            errorBuilder: (context, error, stackTrace) {
                              return const Icon(Icons.circle, size: 10, color: Colors.red);
                            },
                          ),
                        ),
                        Center(
                          child: Image.network(
                            favorite.imageUrl,
                            height: 95,
                            width: 95,
                            fit: BoxFit.contain,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Positioned(
                top: 8,
                right: 8,
                child: GestureDetector(
                  onTap: () async {
                    try {
                      final removeFavoriteUseCase = await ref.read(
                        removeFavoriteUseCaseProvider.future,
                      );
                      await removeFavoriteUseCase(favorite.pokemonId);
                      ref.invalidate(favoritesProvider);
                    } catch (e) {
                      if (context.mounted) {
                        ScaffoldMessenger.of(
                          context,
                        ).showSnackBar(SnackBar(content: Text('Error: $e')));
                      }
                    }
                  },
                  child: Container(
                    padding: const EdgeInsets.all(4),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(color: Colors.white, width: 2),
                      color: Colors.grey.withValues(alpha: 0.4),
                    ),
                    child: const Icon(Icons.favorite, color: Colors.redAccent, size: 14),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
