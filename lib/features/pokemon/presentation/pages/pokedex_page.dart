import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pokedex_app/core/core_exports.dart'
    show AppBottomNavigationBar, InfoCardContent, AppImages;
import 'package:pokedex_app/core/di/di_providers.dart';
import 'package:pokedex_app/core/router/app_router.dart';
import 'package:pokedex_app/core/widgets/pokeball_loading.dart';
import 'package:pokedex_app/features/pokemon/domain/entities/favorite.dart';
import 'package:pokedex_app/features/pokemon/domain/entities/pokemon_detail.dart';
import 'package:pokedex_app/features/pokemon/presentation/providers/pokedex_provider.dart';
import 'package:pokedex_app/features/pokemon/presentation/widgets/pokemon_card.dart';
import 'package:pokedex_app/features/pokemon/presentation/widgets/pokemon_search_bar.dart';
import 'package:pokedex_app/l10n/app_localizations.dart';

class PokedexPage extends ConsumerWidget {
  const PokedexPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final asyncPokedex = ref.watch(pokedexProvider);

    return Scaffold(
      body: Column(
        children: [
          const SizedBox(height: kToolbarHeight - 8),
          PokemonSearchBar(onSearch: (query) => ref.read(pokedexProvider.notifier).search(query)),
          Expanded(
            child: asyncPokedex.when(
              data: (pokemonList) => PokedexListWidget(pokemonList: pokemonList),
              loading: () => const Center(child: PokeballLoading(size: 150)),
              error: (err, stack) =>
                  PokedexErrorWidget(onRetry: () => ref.refresh(pokedexProvider)),
            ),
          ),
        ],
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
    final l10n = AppLocalizations.of(context);

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
        ],
      ),
    );
  }
}

class PokedexListWidget extends ConsumerStatefulWidget {
  final List<PokemonDetail> pokemonList;

  const PokedexListWidget({super.key, required this.pokemonList});

  @override
  ConsumerState<PokedexListWidget> createState() => _PokedexListWidgetState();
}

class _PokedexListWidgetState extends ConsumerState<PokedexListWidget> {
  final ScrollController _scrollController = ScrollController();
  bool _isLoadingMore = false;

  @override
  void initState() {
    super.initState();
    _scrollController.addListener(_onScroll);
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  void _onScroll() {
    if (!_scrollController.hasClients) return;

    final maxScroll = _scrollController.position.maxScrollExtent;
    final currentScroll = _scrollController.offset;
    const loadMoreThreshold = 200.0;

    if (currentScroll >= maxScroll - loadMoreThreshold && !_isLoadingMore) {
      setState(() => _isLoadingMore = true);
      ref.read(pokedexProvider.notifier).loadMore().whenComplete(() {
        if (mounted) setState(() => _isLoadingMore = false);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    if (widget.pokemonList.isEmpty) {
      return Center(
        child: Builder(builder: (context) => Text(AppLocalizations.of(context).noPokemonAvailable)),
      );
    }

    return Padding(
      padding: const EdgeInsets.only(top: 20.0),
      child: Column(
        children: [
          Expanded(
            child: ListView.separated(
              controller: _scrollController,
              padding: const EdgeInsets.all(12),
              itemCount: widget.pokemonList.length,
              separatorBuilder: (_, _) => const SizedBox(height: 8),
              itemBuilder: (context, index) {
                final pokemon = widget.pokemonList[index];
                final isFavoritAsync = ref.watch(isFavoritePokemonProvider(pokemon.id));

                return isFavoritAsync.when(
                  data: (isFavorite) => PokemonCard(
                    pokemon: pokemon,
                    isFavorite: isFavorite,
                    onTap: () {
                      PokemonDetailRoute(id: pokemon.id.toString()).push(context);
                    },
                    onFavoriteToggle: () async {
                      if (isFavorite) {
                        final removeFavoriteUseCase = await ref.read(
                          removeFavoriteUseCaseProviderProvider.future,
                        );
                        await removeFavoriteUseCase(pokemon.id);
                      } else {
                        final addFavoriteUseCase = await ref.read(
                          addFavoriteUseCaseProviderProvider.future,
                        );
                        final favorite = Favorite(
                          pokemonId: pokemon.id,
                          name: pokemon.name,
                          imageUrl: pokemon.imageUrl,
                          types: pokemon.types.map((t) => t.name).toList(),
                          addedAt: DateTime.now(),
                        );
                        await addFavoriteUseCase(favorite);
                      }
                      // ignore: unused_result
                      ref.refresh(isFavoritePokemonProvider(pokemon.id));
                      // ignore: unused_result
                      ref.refresh(favoritesProviderProvider);
                    },
                  ),
                  loading: () => PokemonCard(
                    pokemon: pokemon,
                    isFavorite: false,
                    onTap: () {
                      PokemonDetailRoute(id: pokemon.id.toString()).push(context);
                    },
                  ),
                  error: (err, stack) => PokemonCard(
                    pokemon: pokemon,
                    isFavorite: false,
                    onTap: () {
                      PokemonDetailRoute(id: pokemon.id.toString()).push(context);
                    },
                  ),
                );
              },
            ),
          ),
          if (_isLoadingMore)
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 10.0),
              child: Center(child: PokeballLoading(size: 100)),
            ),
        ],
      ),
    );
  }
}
