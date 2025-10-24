import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:pokedex_app/core/core_exports.dart';
import 'package:pokedex_app/features/pokemon/domain/entities/pokemon_detail.dart';

class PokemonDetailHeaderDelegate extends SliverPersistentHeaderDelegate {
  final PokemonDetail pokemon;
  final double minHeight;
  final double maxHeight;

  PokemonDetailHeaderDelegate({
    required this.pokemon,
    this.minHeight = 120,
    this.maxHeight = 300,
  });

  @override
  double get minExtent => minHeight;

  @override
  double get maxExtent => maxHeight;

  Color _getColorByType(String type) {
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
  Widget build(
    BuildContext context,
    double shrinkOffset,
    bool overlapsContent,
  ) {
    final theme = Theme.of(context);
    final progress = shrinkOffset / (maxExtent - minExtent);
    final topPadding = MediaQuery.of(context).padding.top;

    final mainType = pokemon.types.isNotEmpty ? pokemon.types.first : null;
    final color = mainType != null
        ? _getColorByType(mainType.name)
        : theme.primaryColor;
    final darkerColor = HSLColor.fromColor(color).withLightness(0.2).toColor();

    return Material(
      child: Stack(
        fit: StackFit.expand,
        children: [
          // Fondo con gradiente del tipo del Pokémon
          Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [color, darkerColor],
              ),
            ),
          ),

          // Pokeball de fondo
          Positioned(
            right: -50 + (progress * 50),
            top: -50 + (progress * 50),
            child: Opacity(
              opacity: 0.2,
              child: Image.asset(
                AppImages.logoPokeball,
                width: 200 - (progress * 100),
                height: 200 - (progress * 100),
                color: Colors.white,
              ),
            ),
          ),

          // Imagen del Pokémon
          if (progress < 1)
            Positioned(
              bottom: lerpDouble(60, 0, progress),
              left: 0,
              right: 0,
              child: Opacity(
                opacity: 1 - progress,
                child: Hero(
                  tag: 'pokemon_${pokemon.id}',
                  child: Image.network(
                    pokemon.imageUrl,
                    height: 200 - (progress * 100),
                    fit: BoxFit.contain,
                  ),
                ),
              ),
            ),

          // Barra de navegación
          Positioned(
            top: topPadding,
            left: 0,
            right: 0,
            child: Container(
              height: kToolbarHeight,
              padding: const EdgeInsets.symmetric(horizontal: 8),
              child: Row(
                children: [
                  IconButton(
                    icon: const Icon(Icons.arrow_back, color: Colors.white),
                    onPressed: () => Navigator.pop(context),
                  ),
                  const SizedBox(width: 8),
                  Text(
                    '#${pokemon.id.toString().padLeft(3, '0')}',
                    style: theme.textTheme.titleMedium?.copyWith(
                      color: Colors.white70,
                    ),
                  ),
                  const SizedBox(width: 8),
                  Text(
                    pokemon.name.toUpperCase(),
                    style: theme.textTheme.titleLarge?.copyWith(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
          ),

          // Tipos del Pokémon
          if (progress < 1)
            Positioned(
              bottom: 8,
              left: 16,
              child: Opacity(
                opacity: 1 - progress,
                child: Row(
                  children: pokemon.types
                      .map(
                        (type) => Padding(
                          padding: const EdgeInsets.only(right: 8.0),
                          child: PokemonTypeChip(type: type.name),
                        ),
                      )
                      .toList(),
                ),
              ),
            ),
        ],
      ),
    );
  }

  @override
  bool shouldRebuild(covariant PokemonDetailHeaderDelegate oldDelegate) {
    return oldDelegate.pokemon != pokemon ||
        oldDelegate.minHeight != minHeight ||
        oldDelegate.maxHeight != maxHeight;
  }
}
