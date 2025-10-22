import 'dart:async';

import 'package:pokedex_app/core/di/di_providers.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../domain/entities/pokemon_detail.dart';

part 'pokedex_provider.g.dart';

@riverpod
class Pokedex extends _$Pokedex {
  int _page = 1;
  static const int _itemsPerPage = 20;

  @override
  FutureOr<List<PokemonDetailEntity>> build() async {
    return _loadPage(_page);
  }

  Future<List<PokemonDetailEntity>> _loadPage(int page) async {
    final getList = ref.watch(getPokemonListProvider);
    final offset = (page - 1) * _itemsPerPage;
    final list = await getList.call(offset: offset, limit: _itemsPerPage);
    return list;
  }

  Future<void> loadMore() async {
    final currentState = state;

    if (!currentState.hasValue) return;

    final currentList = currentState.value!;
    _page++;

    try {
      final newItems = await _loadPage(_page);
      final updatedList = [...currentList, ...newItems];
      state = AsyncData(updatedList);
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
