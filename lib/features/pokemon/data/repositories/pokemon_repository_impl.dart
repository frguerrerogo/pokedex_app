import '../../domain/entities/pokemon_detail.dart';
import '../../domain/repositories/pokemon_repository.dart';
import '../datasources/pokemon_remote_data_source.dart';
import '../models/pokemon_detail_model.dart';

class PokemonRepositoryImpl implements PokemonRepository {
  final PokemonRemoteDataSource remoteDataSource;

  PokemonRepositoryImpl(this.remoteDataSource);

  @override
  Future<List<PokemonDetailEntity>> getPokemonList({int limit = 20, int offset = 0}) async {
    final models = await remoteDataSource.getPokemonList(limit: limit, offset: offset);
    return models.map(_mapModelToEntity).toList();
  }

  @override
  Future<PokemonDetailEntity> getPokemonDetail(String name) async {
    final model = await remoteDataSource.getPokemonDetail(name);
    return _mapModelToEntity(model);
  }

  PokemonDetailEntity _mapModelToEntity(PokemonDetailModel m) {
    final abilities = m.abilities
        .map((a) => PokemonAbility(name: a.ability.name, isHidden: a.isHidden, slot: a.slot))
        .toList();

    final types = m.types.map((t) => PokemonTypeEntity(name: t.type.name)).toList();

    return PokemonDetailEntity(
      id: m.id,
      name: m.name,
      abilities: abilities,
      height: m.height,
      weight: m.weight,
      imageUrl: m.sprites.frontDefault,
      types: types,
    );
  }
}
