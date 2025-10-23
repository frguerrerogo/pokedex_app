import 'package:flutter/material.dart';
import 'package:pokedex_app/core/core_exports.dart' show PokemonTypeConfig, PokemonTypeChip;
import 'package:pokedex_app/features/pokemon/domain/entities/pokemon_detail.dart';

class PokemonCard extends StatelessWidget {
  final PokemonDetail pokemon;
  final bool isFavorite;
  final VoidCallback? onTap;
  final VoidCallback? onFavoriteToggle;

  const PokemonCard({
    super.key,
    required this.pokemon,
    this.isFavorite = false,
    this.onTap,
    this.onFavoriteToggle,
  });

  @override
  Widget build(BuildContext context) {
    final mainType = pokemon.types.isNotEmpty ? pokemon.types.first.name : 'normal';
    final bgColor = PokemonTypeConfig.getColor(mainType);

    return GestureDetector(
      onTap: onTap,
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
                          'N°${pokemon.id.toString().padLeft(3, '0')}',
                          style: const TextStyle(
                            fontSize: 12,
                            color: Colors.black87,
                            fontWeight: FontWeight.w900,
                          ),
                        ),
                        Text(
                          pokemon.name[0].toUpperCase() + pokemon.name.substring(1),
                          style: const TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        ),
                        const SizedBox(height: 6),
                        Wrap(
                          spacing: 6,
                          children: pokemon.types
                              .map((type) => PokemonTypeChip(type: type.name))
                              .toList(),
                        ),
                      ],
                    ),
                  ),
                ),

                SizedBox(
                  width: 135,
                  height: 105,
                  child: Stack(
                    children: [
                      Container(
                        width: 135,
                        height: 105,
                        decoration: BoxDecoration(
                          borderRadius: const BorderRadius.all(Radius.circular(15.0)),
                          color: PokemonTypeConfig.getColor(mainType),
                        ),
                        alignment: Alignment.center,
                        child: Image.asset(
                          PokemonTypeConfig.getIcon(mainType),
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
                          pokemon.imageUrl,
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
              child: InkWell(
                onTap: onFavoriteToggle,
                child: Container(
                  padding: const EdgeInsets.all(4),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(color: Colors.white, width: 2),
                    color: Colors.grey.withValues(alpha: 0.4),
                  ),
                  child: Icon(
                    isFavorite ? Icons.favorite : Icons.favorite_border,
                    color: isFavorite ? Colors.redAccent : Colors.white,
                    size: 14,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
