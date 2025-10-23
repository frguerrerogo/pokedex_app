import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pokedex_app/core/di/di_providers.dart';
import 'package:pokedex_app/core/widgets/pokeball_loading.dart';
import 'package:pokedex_app/features/pokemon/domain/entities/pokemon_detail.dart';
import 'package:pokedex_app/features/pokemon/presentation/providers/pokemon_detail_provider.dart';
import 'package:pokedex_app/features/pokemon/presentation/widgets/pokemon_detail/pokemon_detail_body.dart';
import 'package:pokedex_app/features/pokemon/presentation/widgets/pokemon_detail/pokemon_detail_header.dart';

class PokemonDetailPage extends ConsumerWidget {
  final int pokemonId;

  const PokemonDetailPage({super.key, required this.pokemonId});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final pokemon = ref.watch(pokemonDetailByIdProvider(pokemonId));

    return Scaffold(
      body: pokemon.when(
        data: (pokemon) {
          ref.read(selectedPokemonProvider).value = pokemon;
          return _DetailContent(pokemon: pokemon);
        },
        loading: () => const Center(child: PokeballLoading()),
        error: (error, stack) => Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Icon(Icons.error_outline, size: 48),
              const SizedBox(height: 16),
              Text(
                'Error loading Pokémon details: ${error.toString()}',
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 16),
              ElevatedButton(
                onPressed: () {
                  ref.invalidate(pokemonDetailByIdProvider(pokemonId));
                },
                child: const Text('Retry'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _DetailContent extends StatelessWidget {
  final PokemonDetail pokemon;

  const _DetailContent({required this.pokemon});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      physics: const BouncingScrollPhysics(),
      slivers: [
        // Header con imagen y nombre
        SliverPersistentHeader(
          delegate: PokemonDetailHeaderDelegate(pokemon: pokemon),
          pinned: true,
        ),

        // Cuerpo con stats y detalles
        PokemonDetailBody(pokemon: pokemon),

        // Add some bottom padding
        const SliverPadding(padding: EdgeInsets.only(bottom: 32)),
      ],
    );
  }
}
