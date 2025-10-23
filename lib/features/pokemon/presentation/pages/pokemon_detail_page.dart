import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:pokedex_app/core/core_exports.dart'
    show PokeballLoading, PokemonTypeChip, PokemonTypeConfig;
import 'package:pokedex_app/features/pokemon/domain/entities/pokemon_detail.dart';
import 'package:pokedex_app/features/pokemon/presentation/providers/pokemon_detail_provider.dart';

class PokemonDetailPage extends ConsumerWidget {
  final int pokemonId;

  const PokemonDetailPage({super.key, required this.pokemonId});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final pokemonAsync = ref.watch(pokemonDetailByIdProvider(pokemonId));

    return Scaffold(
      backgroundColor: Colors.white,
      body: pokemonAsync.when(
        loading: () => const Center(child: PokeballLoading(size: 100)),
        error: (error, stack) => Center(child: Text('Error: $error')),
        data: (pokemon) => CustomScrollView(
          slivers: [
            _PokemonDetailHeader(pokemon: pokemon),
            SliverToBoxAdapter(
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      pokemon.name[0].toUpperCase() + pokemon.name.substring(1),
                      style: const TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      'Nº${pokemon.id.toString().padLeft(3, '0')}',
                      style: const TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
                    ),
                    SizedBox(height: 15),
                    Wrap(
                      spacing: 6,
                      children: pokemon.types
                          .map((type) => PokemonTypeChip(type: type.name))
                          .toList(),
                    ),

                    const SizedBox(height: 24),
                    _buildInfoSection(pokemon),
                    const SizedBox(height: 24),
                    _buildStatsSection(pokemon),
                    const SizedBox(height: 24),
                    Text(
                      'Debilidades',
                      style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(height: 8),
                    Wrap(
                      spacing: 6,
                      children: pokemon
                          .getWeaknesses()
                          .map((weakness) => PokemonTypeChip(type: weakness))
                          .toList(),
                    ),
                    const SizedBox(height: 20),
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
            _InfoItem(label: 'Peso', value: '${pokemon.weight} kg', icon: Icons.monitor_weight),
            _InfoItem(label: 'Altura', value: '${pokemon.height} m', icon: Icons.height),
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
    final type = pokemon.types.first;
    final backgroundColor = PokemonTypeConfig.getColor(type.name);

    return SliverAppBar(
      expandedHeight: 350,
      pinned: true,
      elevation: 0,
      backgroundColor: Colors.white,
      leading: IconButton(
        icon: const Icon(Icons.arrow_back_ios_new_rounded, color: Colors.white),
        onPressed: () => context.pop(),
      ),
      actions: [
        Padding(
          padding: const EdgeInsets.only(right: 12.0),
          child: Row(
            children: [
              IconButton(
                icon: const Icon(Icons.favorite_border_rounded, color: Colors.white),
                onPressed: () {
                  // TODO: Agregar a favoritos
                },
              ),
            ],
          ),
        ),
      ],
      flexibleSpace: FlexibleSpaceBar(
        background: Stack(
          fit: StackFit.expand,
          children: [
            _buildBackgroundGradient(backgroundColor),
            _buildTypeIcon(type.name),
            _buildPokemonImage(pokemon),
          ],
        ),
      ),
    );
  }

  Widget _buildBackgroundGradient(Color backgroundColor) {
    return Align(
      alignment: Alignment.topCenter,
      child: ClipPath(
        clipper: SemiCircleClipper(),
        child: Container(
          height: 360,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [backgroundColor, backgroundColor.withValues(alpha: 0.8)],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildTypeIcon(String typeName) {
    return Positioned(
      top: 40,
      left: 0,
      right: 0,
      child: Center(
        child: Image.asset(
          PokemonTypeConfig.getIcon(typeName),
          width: 250,
          height: 250,
          fit: BoxFit.contain,
          color: Colors.white.withValues(alpha: 0.3),
        ),
      ),
    );
  }

  /// Imagen principal del Pokémon con Hero animation
  Widget _buildPokemonImage(PokemonDetail pokemon) {
    return Positioned(
      top: 100,
      left: 0,
      right: 0,
      child: Center(
        child: Hero(
          tag: 'pokemon-${pokemon.id}',
          child: Image.network(
            pokemon.imageUrl,
            height: 300,
            width: 300,
            fit: BoxFit.contain,
            loadingBuilder: (context, child, progress) {
              if (progress == null) return child;
              return const Center(child: CircularProgressIndicator(color: Colors.white));
            },
            errorBuilder: (context, error, stackTrace) =>
                const Icon(Icons.broken_image, size: 100, color: Colors.white),
          ),
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
  final IconData icon;

  const _InfoItem({required this.label, required this.value, required this.icon});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(icon, size: 16, color: Colors.grey[700]),
            const SizedBox(width: 4),
            Text(
              label.toUpperCase(),
              style: const TextStyle(
                fontFamily: 'Poppins',
                fontSize: 12,
                fontWeight: FontWeight.w600,
                color: Colors.black54,
                letterSpacing: 0.5,
              ),
            ),
          ],
        ),

        const SizedBox(height: 8),

        Container(
          width: 150,
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(12),
            border: Border.all(color: Colors.grey[300]!),
            boxShadow: [
              BoxShadow(
                color: Colors.black12.withValues(alpha: 0.03),
                blurRadius: 3,
                offset: const Offset(0, 1),
              ),
            ],
          ),
          child: Text(
            value,
            textAlign: TextAlign.center,
            style: const TextStyle(
              fontFamily: 'Poppins',
              fontSize: 16,
              fontWeight: FontWeight.w600,
              color: Colors.black,
            ),
          ),
        ),
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
    final color = _getColorForValue(value);

    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 6.0),
      child: Row(
        children: [
          SizedBox(
            width: 80,
            child: Text(
              label.toUpperCase(),
              style: const TextStyle(
                fontFamily: 'Poppins',
                fontSize: 13,
                fontWeight: FontWeight.w600,
                color: Colors.black87,
              ),
            ),
          ),
          const SizedBox(width: 8),

          Expanded(
            child: Stack(
              alignment: Alignment.centerRight,
              children: [
                // Fondo gris claro
                Container(
                  height: 10,
                  decoration: BoxDecoration(
                    color: Colors.grey[200],
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
                FractionallySizedBox(
                  widthFactor: (value / 100).clamp(0.0, 1.0),
                  child: Container(
                    height: 10,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(colors: [color.withValues(alpha: 0.8), color]),
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                ),
              ],
            ),
          ),

          const SizedBox(width: 12),

          SizedBox(
            width: 40,
            child: Text(
              value.toString(),
              textAlign: TextAlign.end,
              style: TextStyle(
                fontFamily: 'Poppins',
                fontSize: 13,
                fontWeight: FontWeight.bold,
                color: color,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Color _getColorForValue(int value) {
    if (value >= 80) return Colors.green;
    if (value >= 50) return Colors.orange;
    return Colors.redAccent;
  }
}
