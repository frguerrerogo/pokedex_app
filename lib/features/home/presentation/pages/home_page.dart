import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pokedex_app/core/core_exports.dart' show AppBottomNavigationBar;
import 'package:pokedex_app/features/home/presentation/provider/pokedex_provider.dart';

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
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Icon(Icons.error, size: 80, color: Colors.red),
          const SizedBox(height: 16),
          const Text("Algo salió mal...", style: TextStyle(fontSize: 18)),
          const SizedBox(height: 8),
          ElevatedButton(onPressed: onRetry, child: const Text("Reintentar")),
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
