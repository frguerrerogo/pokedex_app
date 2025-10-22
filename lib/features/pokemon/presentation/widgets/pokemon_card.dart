import 'package:flutter/material.dart';
import 'package:pokedex_app/core/core_exports.dart';

class PokemonCard extends StatelessWidget {
  final int id;
  final String name;
  final String imageUrl;
  final List<String> types;
  final bool isFavorite;
  final VoidCallback? onTap;
  final VoidCallback? onFavoriteToggle;

  const PokemonCard({
    super.key,
    required this.id,
    required this.name,
    required this.imageUrl,
    required this.types,
    this.isFavorite = false,
    this.onTap,
    this.onFavoriteToggle,
  });

  @override
  Widget build(BuildContext context) {
    final mainType = types.isNotEmpty ? types.first : 'normal';
    final bgColor = PokemonTypeStyle.getColor(mainType);

    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: const EdgeInsets.symmetric(vertical: 6, horizontal: 12),
        decoration: BoxDecoration(
          color: bgColor.withOpacity(0.6),
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
                          'N°${id.toString().padLeft(3, '0')}',
                          style: const TextStyle(
                            fontSize: 12,
                            color: Colors.black87,
                            fontWeight: FontWeight.w900,
                          ),
                        ),
                        Text(
                          name[0].toUpperCase() + name.substring(1),
                          style: const TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        ),
                        const SizedBox(height: 6),
                        Wrap(
                          spacing: 6,
                          children: types.map((type) => _PokemonTypeChip(type: type)).toList(),
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
                          color: PokemonTypeStyle.getColor(mainType),
                        ),
                        alignment: Alignment.center,
                        child: Image.asset(
                          PokemonTypeStyle.getIcon(mainType),
                          width: 95,
                          height: 95,
                          fit: BoxFit.contain,
                          color: Colors.white.withOpacity(0.5),
                          colorBlendMode: BlendMode.srcIn,
                          errorBuilder: (context, error, stackTrace) {
                            return const Icon(Icons.circle, size: 10, color: Colors.red);
                          },
                        ),
                      ),
                      Center(
                        child: Image.network(imageUrl, height: 95, width: 95, fit: BoxFit.contain),
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
                    color: Colors.grey.withOpacity(0.4),
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

/// Small colored type chip
class _PokemonTypeChip extends StatelessWidget {
  final String type;
  const _PokemonTypeChip({required this.type});

  @override
  Widget build(BuildContext context) {
    final color = PokemonTypeStyle.getColor(type);

    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
      decoration: BoxDecoration(color: color, borderRadius: BorderRadius.circular(20)),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            width: 20,
            height: 20,
            decoration: const BoxDecoration(color: Colors.white, shape: BoxShape.circle),
            alignment: Alignment.center,
            child: Image.asset(
              PokemonTypeStyle.getIcon(type),
              width: 16,
              height: 16,
              fit: BoxFit.contain,
              errorBuilder: (context, error, stackTrace) {
                return const Icon(Icons.circle, size: 10, color: Colors.red);
              },
            ),
          ),
          const SizedBox(width: 4),
          Text(
            PokemonTypeStyle.getLabel(context, type),
            style: const TextStyle(color: Colors.white, fontWeight: FontWeight.w600, fontSize: 12),
          ),
        ],
      ),
    );
  }

  // Labels now provided by PokemonTypeStyle.getLabel(context, type)
}
