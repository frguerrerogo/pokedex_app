import 'dart:async';

import 'package:pokedex_app/core/di/di_providers.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../domain/entities/pokemon_detail.dart';

part 'pokedex_provider.g.dart';

@Riverpod(keepAlive: true)
class Pokedex extends _$Pokedex {
  int _page = 1;
  static const int _itemsPerPage = 20;
  String _searchQuery = '';
  List<PokemonDetail> _cachedList = [];
  List<PokemonDetail> _displayList = [];

  @override
  FutureOr<List<PokemonDetail>> build() async {
    return _loadPage(_page);
  }

  Future<List<PokemonDetail>> _loadPage(int page) async {
    try {
      final getList = ref.watch(getPokemonListProvider);
      final offset = (page - 1) * _itemsPerPage;
      final newPokemon = await getList.call(offset: offset, limit: _itemsPerPage);

      if (page == 1) {
        _cachedList = newPokemon;
        _displayList = newPokemon;
      } else {
        _cachedList = [..._cachedList, ...newPokemon];
        if (_searchQuery.isEmpty) {
          _displayList = _cachedList;
        }
      }

      if (_searchQuery.isNotEmpty) {
        return _filterPokemon();
      }

      return _displayList;
    } catch (e) {
      if (page == 1) {
        _cachedList = [];
        _displayList = [];
      }
      rethrow;
    }
  }

  List<PokemonDetail> _filterPokemon() {
    if (_searchQuery.isEmpty) {
      return _cachedList;
    }

    final query = _searchQuery.toLowerCase();
    _displayList = _cachedList
        .where(
          (pokemon) =>
              pokemon.name.toLowerCase().contains(query) || pokemon.id.toString().contains(query),
        )
        .toList();
    return _displayList;
  }

  void search(String query) {
    query = query.trim();
    _searchQuery = query;

    if (query.isEmpty) {
      _displayList = _cachedList;
      state = AsyncData(_displayList);
      return;
    }

    state = AsyncData(_filterPokemon());
  }

  Future<void> loadMore() async {
    if (_searchQuery.isNotEmpty) return;

    final currentState = state;
    if (!currentState.hasValue) return;

    _page++;

    try {
      final getList = ref.watch(getPokemonListProvider);
      final offset = (_page - 1) * _itemsPerPage;
      final newItems = await getList.call(offset: offset, limit: _itemsPerPage);

      _cachedList = [..._cachedList, ...newItems];
      _displayList = [..._displayList, ...newItems];
      state = AsyncData(_displayList);
    } catch (e, st) {
      _page--;
      state = AsyncError(e, st);
    }
  }

  void retry() {
    _page = 1;
    ref.invalidateSelf();
  }
}
