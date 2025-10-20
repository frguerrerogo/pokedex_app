import 'package:pokedex_app/core/di/di_providers.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../domain/entities/pokemon_detail.dart';

part 'pokedex_provider.g.dart';

@riverpod
Future<List<PokemonDetailEntity>> pokedex(Ref ref) async {
  try {
    final getList = ref.watch(getPokemonListProvider);
    final list = await getList.call();
    return list;
  } catch (e) {
    throw Exception('Error loading Pokémon list: $e');
  }
}
