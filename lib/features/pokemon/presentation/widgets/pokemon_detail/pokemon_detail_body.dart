import 'package:flutter/material.dart';
import 'package:pokedex_app/features/pokemon/domain/entities/pokemon_detail.dart';

class PokemonDetailBody extends StatelessWidget {
  final PokemonDetail pokemon;

  const PokemonDetailBody({super.key, required this.pokemon});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return SliverPadding(
      padding: const EdgeInsets.all(16.0),
      sliver: SliverList(
        delegate: SliverChildListDelegate([
          // Sección de características
          _buildSection(
            title: 'Características',
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                _buildStat('PESO', '${pokemon.weight / 10} kg'),
                _buildStat('ALTURA', '${pokemon.height / 10} m'),
                _buildStat('GÉNERO', '${pokemon.genderRate}% ♀'),
              ],
            ),
          ),

          const SizedBox(height: 24),

          // Sección de habilidades
          _buildSection(
            title: 'Habilidades',
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: pokemon.abilities.map((ability) {
                return Padding(
                  padding: const EdgeInsets.only(bottom: 8.0),
                  child: Row(
                    children: [
                      Container(
                        width: 8,
                        height: 8,
                        decoration: BoxDecoration(
                          color: theme.colorScheme.primary,
                          shape: BoxShape.circle,
                        ),
                      ),
                      const SizedBox(width: 8),
                      Text(ability.name, style: theme.textTheme.bodyLarge),
                      if (ability.isHidden) ...[
                        const SizedBox(width: 8),
                        Text(
                          '(Oculta)',
                          style: theme.textTheme.bodySmall?.copyWith(
                            color: theme.colorScheme.primary,
                          ),
                        ),
                      ],
                    ],
                  ),
                );
              }).toList(),
            ),
          ),

          const SizedBox(height: 24),

          // Sección de estadísticas
          _buildSection(
            title: 'Estadísticas',
            child: Column(
              children: [
                _buildStatBar('HP', pokemon.hp),
                _buildStatBar('Ataque', pokemon.attack),
                _buildStatBar('Defensa', pokemon.defense),
                _buildStatBar('Atq. Esp.', pokemon.specialAttack),
                _buildStatBar('Def. Esp.', pokemon.specialDefense),
                _buildStatBar('Velocidad', pokemon.speed),
              ],
            ),
          ),

          const SizedBox(height: 24),
        ]),
      ),
    );
  }

  Widget _buildSection({required String title, required Widget child}) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title.toUpperCase(),
          style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 16),
        child,
      ],
    );
  }

  Widget _buildStat(String label, String value) {
    return Column(
      children: [
        Text(label, style: const TextStyle(fontSize: 12, color: Colors.grey)),
        const SizedBox(height: 4),
        Text(
          value,
          style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
        ),
      ],
    );
  }

  Widget _buildStatBar(String label, int value) {
    const maxValue = 255.0;

    return Padding(
      padding: const EdgeInsets.only(bottom: 8.0),
      child: Row(
        children: [
          SizedBox(
            width: 80,
            child: Text(
              label,
              style: const TextStyle(fontWeight: FontWeight.w500),
            ),
          ),
          const SizedBox(width: 8),
          Text(
            value.toString().padLeft(3),
            style: const TextStyle(fontWeight: FontWeight.bold),
          ),
          const SizedBox(width: 8),
          Expanded(
            child: ClipRRect(
              borderRadius: BorderRadius.circular(4),
              child: LinearProgressIndicator(
                value: value / maxValue,
                backgroundColor: Colors.grey.shade200,
                minHeight: 8,
                valueColor: AlwaysStoppedAnimation<Color>(_getStatColor(value)),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Color _getStatColor(int value) {
    if (value < 50) return Colors.red;
    if (value < 90) return Colors.orange;
    if (value < 120) return Colors.yellow.shade800;
    return Colors.green;
  }
}
