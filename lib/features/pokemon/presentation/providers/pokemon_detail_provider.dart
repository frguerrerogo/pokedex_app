import 'package:pokedex_app/core/di/di_providers.dart';
import 'package:pokedex_app/features/pokemon/domain/entities/pokemon_detail.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'pokemon_detail_provider.g.dart';

@riverpod
Future<PokemonDetail> pokemonDetailById(Ref ref, int id) async {
  final repository = ref.watch(pokemonRepositoryProvider);
  return repository.getPokemonDetailById(id);
}
