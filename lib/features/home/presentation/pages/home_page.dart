import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pokedex_app/core/core_exports.dart'
    show AppBottomNavigationBar, InfoCardContent, AppImages;
import 'package:pokedex_app/features/home/presentation/provider/pokedex_provider.dart';
import 'package:pokedex_app/l10n/app_localizations.dart';

class HomePage extends ConsumerWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final asyncPokedex = ref.watch(pokedexProvider);

    return Scaffold(
      body: asyncPokedex.when(
        data: (pokemonList) => PokedexListWidget(pokemonList: pokemonList),
        loading: () => const Center(child: CircularProgressIndicator()),
        error: (err, stack) => PokedexErrorWidget(onRetry: () => ref.refresh(pokedexProvider)),
      ),
      bottomNavigationBar: const AppBottomNavigationBar(),
    );
  }
}

class PokedexErrorWidget extends StatelessWidget {
  final VoidCallback onRetry;

  const PokedexErrorWidget({super.key, required this.onRetry});

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;

    return Padding(
      padding: const EdgeInsets.all(24.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          InfoCardContent(
            image: AppImages.magikarp,
            title: l10n.somethingWentWrong,
            subtitle: l10n.dataLoadErrorMessage,
          ),
          const SizedBox(height: 20),
          // AppPrimaryButton(
          //   label: onboardingData[_currentPage]["button"]!,
          //   onPressed: () => _nextPage(onboardingData.length),
          // ),
        ],
      ),
    );
  }
}

class PokedexListWidget extends StatelessWidget {
  final List<String> pokemonList;

  const PokedexListWidget({super.key, required this.pokemonList});

  @override
  Widget build(BuildContext context) {
    if (pokemonList.isEmpty) {
      return const Center(child: Text("No hay Pokémon disponibles"));
    }

    return ListView.separated(
      padding: const EdgeInsets.all(12),
      itemCount: pokemonList.length,
      separatorBuilder: (_, __) => const SizedBox(height: 8),
      itemBuilder: (context, index) {
        final pokemon = pokemonList[index];

        return Card(
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
          elevation: 2,
          child: ListTile(
            leading: CircleAvatar(
              child: Text(pokemon[0]), // Primera letra
            ),
            title: Text(pokemon, style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
            trailing: const Icon(Icons.arrow_forward_ios, size: 16),
            onTap: () {
              // Aquí iría la navegación a la vista detalle
              // context.go('/pokemon/$pokemon')
            },
          ),
        );
      },
    );
  }
}
