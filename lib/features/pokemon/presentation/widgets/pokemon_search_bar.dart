import 'package:flutter/material.dart';
import 'package:pokedex_app/core/core_exports.dart' show AppTextStyles;

class PokemonSearchBar extends StatelessWidget {
  final void Function(String) onSearch;
  final TextEditingController? controller;

  const PokemonSearchBar({super.key, required this.onSearch, this.controller});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.grey.shade100,
          borderRadius: BorderRadius.circular(30),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withValues(alpha: 0.3),
              offset: const Offset(0, 1),
              blurRadius: 2,
            ),
          ],
        ),
        child: TextField(
          controller: controller,
          onChanged: onSearch,
          style: AppTextStyles.inputTextStyle(context),
          decoration: InputDecoration(
            hintText: 'Buscar Pokémon...',
            hintStyle: TextStyle(color: Colors.grey.shade600, fontSize: 16),
            prefixIcon: Icon(Icons.search, color: Colors.grey.shade600, size: 22),
            border: InputBorder.none,
            contentPadding: const EdgeInsets.symmetric(vertical: 12),
          ),
          textInputAction: TextInputAction.search,
        ),
      ),
    );
  }
}
