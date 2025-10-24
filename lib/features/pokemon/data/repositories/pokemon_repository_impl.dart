import '../../domain/entities/pokemon_detail.dart';
import '../../domain/repositories/pokemon_repository.dart';
import '../datasources/pokemon_remote_data_source.dart';
import '../models/pokemon_detail_model.dart';

class PokemonRepositoryImpl implements PokemonRepository {
  final PokemonRemoteDataSource remoteDataSource;

  PokemonRepositoryImpl(this.remoteDataSource);

  @override
  Future<List<PokemonDetail>> getPokemonList({
    int limit = 20,
    int offset = 0,
  }) async {
    final models = await remoteDataSource.getPokemonList(
      limit: limit,
      offset: offset,
    );
    return models.map(_mapModelToEntity).toList();
  }

  @override
  Future<PokemonDetail> getPokemonDetail(String name) async {
    final model = await remoteDataSource.getPokemonDetail(name);
    return _mapModelToEntity(model);
  }

  @override
  Future<PokemonDetail> getPokemonDetailById(int id) async {
    final model = await remoteDataSource.getPokemonDetail(id.toString());
    return _mapModelToEntity(model);
  }

  PokemonDetail _mapModelToEntity(PokemonDetailModel m) {
    final abilities = m.abilities
        .map(
          (a) => PokemonAbility(
            name: a.ability.name,
            isHidden: a.isHidden,
            slot: a.slot,
          ),
        )
        .toList();

    final types = m.types
        .map(
          (t) => PokemonTypeEntity(
            name: t.type.name,
            iconPath: 'assets/images/types/${t.type.name.toLowerCase()}.png',
            colorValue: _getTypeColor(t.type.name),
          ),
        )
        .toList();

    return PokemonDetail(
      id: m.id,
      name: m.name,
      abilities: abilities,
      height: m.height,
      weight: m.weight,
      imageUrl: m.sprites.frontDefault,
      types: types,
      genderRate: _calculateGenderRate(m.genderRate),
      hp: m.stats[0].baseStat,
      attack: m.stats[1].baseStat,
      defense: m.stats[2].baseStat,
      specialAttack: m.stats[3].baseStat,
      specialDefense: m.stats[4].baseStat,
      speed: m.stats[5].baseStat,
    );
  }

  double _calculateGenderRate(int? rate) {
    if (rate == null || rate < 0) return -1; // Genderless
    return (rate * 12.5); // Each point represents 12.5%
  }

  int _getTypeColor(String type) {
    final colors = {
      'normal': 0xFFA8A878,
      'fire': 0xFFF08030,
      'water': 0xFF6890F0,
      'electric': 0xFFF8D030,
      'grass': 0xFF78C850,
      'ice': 0xFF98D8D8,
      'fighting': 0xFFC03028,
      'poison': 0xFFA040A0,
      'ground': 0xFFE0C068,
      'flying': 0xFFA890F0,
      'psychic': 0xFFF85888,
      'bug': 0xFFA8B820,
      'rock': 0xFFB8A038,
      'ghost': 0xFF705898,
      'dragon': 0xFF7038F8,
      'dark': 0xFF705848,
      'steel': 0xFFB8B8D0,
      'fairy': 0xFFEE99AC,
    };
    return colors[type.toLowerCase()] ?? 0xFF858585;
  }
}
