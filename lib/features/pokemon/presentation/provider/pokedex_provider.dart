import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'pokedex_provider.g.dart';

/// Fake API call simulando obtener Pokémon
Future<List<String>> fetchPokemonList() async {
  await Future.delayed(const Duration(seconds: 2)); // simulamos carga
  return [
    "Bulbasaur",
    "Ivysaur",
    "Venusaur",
    "Charmander",
    "Charmeleon",
    "Charizard",
    "Squirtle",
    "Wartortle",
    "Blastoise",
  ];
}

@riverpod
Future<List<String>> pokedex(Ref ref) async {
  try {
    final data = await fetchPokemonList();
    return data;
  } catch (_) {
    throw Exception("Error loading Pokémon list");
  }
}
