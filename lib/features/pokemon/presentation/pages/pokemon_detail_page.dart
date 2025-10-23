import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:pokedex_app/core/core_exports.dart';
import 'package:pokedex_app/features/pokemon/domain/entities/pokemon_detail.dart';
import 'package:pokedex_app/features/pokemon/presentation/providers/pokemon_detail_provider.dart';

class PokemonDetailPage extends ConsumerWidget {
  final int pokemonId;

  const PokemonDetailPage({super.key, required this.pokemonId});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final pokemonAsync = ref.watch(pokemonDetailByIdProvider(pokemonId));

    return Scaffold(
      body: pokemonAsync.when(
        loading: () => const Center(child: PokeballLoading()),
        error: (error, stack) => Center(child: Text('Error: $error')),
        data: (pokemon) => CustomScrollView(
          slivers: [
            _PokemonDetailHeader(pokemon: pokemon),
            SliverToBoxAdapter(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    _buildInfoSection(pokemon),
                    const SizedBox(height: 24),
                    _buildStatsSection(pokemon),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildInfoSection(PokemonDetail pokemon) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Información', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
        const SizedBox(height: 16),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            _InfoItem(label: 'Altura', value: '${pokemon.height} m'),
            _InfoItem(label: 'Peso', value: '${pokemon.weight} kg'),
            _InfoItem(
              label: 'Género',
              value: '${(pokemon.genderRate * 100).toStringAsFixed(1)}% ♀',
            ),
          ],
        ),
      ],
    );
  }

  Widget _buildStatsSection(PokemonDetail pokemon) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Estadísticas', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
        const SizedBox(height: 16),
        _StatBar(label: 'HP', value: pokemon.hp),
        _StatBar(label: 'Ataque', value: pokemon.attack),
        _StatBar(label: 'Defensa', value: pokemon.defense),
        _StatBar(label: 'Ataque Esp.', value: pokemon.specialAttack),
      ],
    );
  }
}

class _PokemonDetailHeader extends StatelessWidget {
  final PokemonDetail pokemon;

  const _PokemonDetailHeader({required this.pokemon});

  @override
  Widget build(BuildContext context) {
    final primaryType = pokemon.types.first;
    final backgroundColor = PokemonTypeStyle.getColor(primaryType.name);

    return SliverAppBar(
      expandedHeight: 300,
      pinned: true,
      backgroundColor: Colors.white,
      leading: IconButton(
        icon: const Icon(Icons.arrow_back, color: Colors.black),
        onPressed: () => GoRouter.of(context).pop(),
      ),
      actions: [
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Text(
            '#${pokemon.id.toString().padLeft(3, '0')}',
            style: const TextStyle(color: Colors.black, fontSize: 16, fontWeight: FontWeight.bold),
          ),
        ),
        IconButton(
          icon: const Icon(Icons.favorite_border, color: Colors.black),
          onPressed: () {
            // TODO: Implement favorite toggle
          },
        ),
      ],
      flexibleSpace: FlexibleSpaceBar(
        background: Stack(
          children: [
            Positioned.fill(
              child: Column(
                children: [
                  Expanded(
                    child: Stack(
                      children: [
                        // Semi-círculo de fondo
                        Align(
                          alignment: Alignment.topCenter,
                          child: ClipPath(
                            clipper: SemiCircleClipper(),
                            child: Container(
                              width: double.infinity,
                              height: 250,
                              decoration: BoxDecoration(
                                gradient: LinearGradient(
                                  begin: Alignment.topCenter,
                                  end: Alignment.bottomCenter,
                                  colors: [backgroundColor, backgroundColor.withValues(alpha: 0.7)],
                                ),
                              ),
                            ),
                          ),
                        ),
                        // Imagen del Pokémon
                        Center(
                          child: Hero(
                            tag: 'pokemon-${pokemon.id}',
                            child: Image.network(
                              pokemon.imageUrl,
                              height: 375, // 150% más grande (150 * 2.5)
                              fit: BoxFit.contain,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Expanded(child: Container()),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class SemiCircleClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final path = Path();
    path.moveTo(0, 0);
    path.lineTo(size.width, 0);
    path.lineTo(size.width, size.height * 0.6);
    path.quadraticBezierTo(size.width / 2, size.height, 0, size.height * 0.6);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(SemiCircleClipper oldClipper) => false;
}

class _InfoItem extends StatelessWidget {
  final String label;
  final String value;

  const _InfoItem({required this.label, required this.value});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(label, style: TextStyle(color: Colors.grey[600], fontSize: 14)),
        const SizedBox(height: 4),
        Text(value, style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w500)),
      ],
    );
  }
}

class _StatBar extends StatelessWidget {
  final String label;
  final int value;

  const _StatBar({required this.label, required this.value});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(label),
          const SizedBox(height: 4),
          LinearProgressIndicator(
            value: value / 100,
            backgroundColor: Colors.grey[200],
            valueColor: AlwaysStoppedAnimation<Color>(_getColorForValue(value)),
            minHeight: 8,
          ),
          const SizedBox(height: 4),
          Text(value.toString(), style: const TextStyle(fontWeight: FontWeight.w500)),
        ],
      ),
    );
  }

  Color _getColorForValue(int value) {
    if (value >= 80) return Colors.green;
    if (value >= 50) return Colors.amber;
    return Colors.red;
  }
}
