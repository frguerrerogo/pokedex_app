import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pokedex_app/core/core_exports.dart' show PokemonTypeConfig, PokemonTypeChip;
import 'package:pokedex_app/core/di/di_providers.dart';
import 'package:pokedex_app/core/router/app_router.dart';
import 'package:pokedex_app/features/pokemon/domain/entities/favorite.dart';

class PokemonCardFavorite extends ConsumerStatefulWidget {
  final Favorite favorite;

  const PokemonCardFavorite({super.key, required this.favorite});

  @override
  ConsumerState<PokemonCardFavorite> createState() => _PokemonCardFavoriteState();
}

class _PokemonCardFavoriteState extends ConsumerState<PokemonCardFavorite>
    with SingleTickerProviderStateMixin {
  late AnimationController _animationController;
  late Animation<Offset> _slideAnimation;
  late Animation<double> _fadeAnimation;

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
      duration: const Duration(milliseconds: 500),
      vsync: this,
    );

    _slideAnimation = Tween<Offset>(
      begin: Offset.zero,
      end: const Offset(1.5, 0),
    ).animate(CurvedAnimation(parent: _animationController, curve: Curves.easeInOut));

    _fadeAnimation = Tween<double>(
      begin: 1.0,
      end: 0.0,
    ).animate(CurvedAnimation(parent: _animationController, curve: Curves.easeInOut));
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  Future<void> _removeFavorite() async {
    // Iniciar animación
    await _animationController.forward();

    // Ejecutar la lógica de remover favorito
    final removeFavoriteUseCase = await ref.read(removeFavoriteUseCaseProvider.future);
    await removeFavoriteUseCase(widget.favorite.pokemonId);

    // Refresh providers
    // ignore: unused_result
    ref.refresh(isFavoritePokemonProvider(widget.favorite.pokemonId));
    // ignore: unused_result
    ref.refresh(favoritesProvider);
  }

  @override
  Widget build(BuildContext context) {
    final bgColor = PokemonTypeConfig.getColor(widget.favorite.types.first);

    return SlideTransition(
      position: _slideAnimation,
      child: FadeTransition(
        opacity: _fadeAnimation,
        child: GestureDetector(
          onTap: () {
            PokemonDetailRoute(id: widget.favorite.pokemonId.toString()).push(context);
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
                              'N°${widget.favorite.pokemonId.toString().padLeft(3, '0')}',
                              style: const TextStyle(
                                fontSize: 12,
                                color: Colors.black87,
                                fontWeight: FontWeight.w900,
                              ),
                            ),
                            Text(
                              widget.favorite.name[0].toUpperCase() +
                                  widget.favorite.name.substring(1),
                              style: const TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                              ),
                            ),
                            const SizedBox(height: 6),
                            Wrap(
                              spacing: 6,
                              children: widget.favorite.types
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
                              color: PokemonTypeConfig.getColor(widget.favorite.types.first),
                            ),
                            alignment: Alignment.center,
                            child: Image.asset(
                              PokemonTypeConfig.getIcon(widget.favorite.types.first),
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
                              widget.favorite.imageUrl,
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
                    onTap: _removeFavorite,
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
      ),
    );
  }
}
