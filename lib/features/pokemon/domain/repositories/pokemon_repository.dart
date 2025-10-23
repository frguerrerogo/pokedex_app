import '../entities/pokemon_detail.dart';

/// Abstract repository for the Pokémon feature.
/// Concrete implementations should live in the data layer.
abstract class PokemonRepository {
  /// Retrieves the list of Pokémon with detailed information.
  Future<List<PokemonDetail>> getPokemonList({int limit = 20, int offset = 0});

  /// Retrieves detailed information for a Pokémon by its name.
  Future<PokemonDetail> getPokemonDetail(String name);

  /// Retrieves detailed information for a Pokémon by its ID.
  Future<PokemonDetail> getPokemonDetailById(int id);
}
