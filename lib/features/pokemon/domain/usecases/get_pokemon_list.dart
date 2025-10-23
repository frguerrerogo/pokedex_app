import '../entities/pokemon_detail.dart';
import '../repositories/pokemon_repository.dart';

class GetPokemonList {
  final PokemonRepository repository;

  GetPokemonList(this.repository);

  Future<List<PokemonDetail>> call({int limit = 20, int offset = 0}) {
    return repository.getPokemonList(limit: limit, offset: offset);
  }
}
