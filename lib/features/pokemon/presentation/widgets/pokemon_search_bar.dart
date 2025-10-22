import 'package:flutter/material.dart';
import 'package:pokedex_app/core/core_exports.dart' show AppTextStyles;
import 'package:pokedex_app/l10n/app_localizations.dart';

class PokemonSearchBar extends StatelessWidget {
  final void Function(String) onSearch;
  final TextEditingController? controller;
  final bool showLoading;

  const PokemonSearchBar({
    super.key,
    required this.onSearch,
    this.controller,
    this.showLoading = false,
  });

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context);

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.grey.shade100,
          borderRadius: BorderRadius.circular(30),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.3),
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
            suffixIcon: showLoading
                ? const Padding(
                    padding: EdgeInsets.all(12.0),
                    child: SizedBox(
                      width: 16,
                      height: 16,
                      child: CircularProgressIndicator(strokeWidth: 2),
                    ),
                  )
                : null,
            border: InputBorder.none,
            contentPadding: const EdgeInsets.symmetric(vertical: 12),
          ),
          textInputAction: TextInputAction.search,
        ),
      ),
    );
  }
}
