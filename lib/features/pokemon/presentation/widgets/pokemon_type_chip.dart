import 'package:flutter/material.dart';

class PokemonTypeChip extends StatelessWidget {
  final String type;

  const PokemonTypeChip({super.key, required this.type});

  Color _getBackgroundColor() {
    final colors = {
      'normal': const Color(0xFFA8A878),
      'fire': const Color(0xFFF08030),
      'water': const Color(0xFF6890F0),
      'electric': const Color(0xFFF8D030),
      'grass': const Color(0xFF78C850),
      'ice': const Color(0xFF98D8D8),
      'fighting': const Color(0xFFC03028),
      'poison': const Color(0xFFA040A0),
      'ground': const Color(0xFFE0C068),
      'flying': const Color(0xFFA890F0),
      'psychic': const Color(0xFFF85888),
      'bug': const Color(0xFFA8B820),
      'rock': const Color(0xFFB8A038),
      'ghost': const Color(0xFF705898),
      'dragon': const Color(0xFF7038F8),
      'dark': const Color(0xFF705848),
      'steel': const Color(0xFFB8B8D0),
      'fairy': const Color(0xFFEE99AC),
    };
    return colors[type.toLowerCase()] ?? const Color(0xFF858585);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
      decoration: BoxDecoration(
        color: _getBackgroundColor(),
        borderRadius: BorderRadius.circular(16),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset('assets/images/types/${type.toLowerCase()}.png', width: 16, height: 16),
          const SizedBox(width: 4),
          Text(
            type.toUpperCase(),
            style: const TextStyle(color: Colors.white, fontSize: 12, fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}
