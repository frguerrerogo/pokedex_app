import 'package:dio/dio.dart';

import '../models/pokemon_detail_model.dart';
import '../models/pokemon_list_item_model.dart';

/// Remote data source for fetching Pokémon data from the PokéAPI.
abstract class PokemonRemoteDataSource {
  /// Retrieves the list of Pokémon with pagination.
  Future<List<PokemonDetailModel>> getPokemonList({int limit, int offset});

  /// Retrieves detailed information for a specific Pokémon by its name.
  Future<PokemonDetailModel> getPokemonDetail(String name);
}

/// Implementation that uses Dio for making HTTP requests to the PokéAPI.
class PokemonRemoteDataSourceImpl implements PokemonRemoteDataSource {
  final Dio client;

  PokemonRemoteDataSourceImpl(this.client);

  static const _baseUrl = 'https://pokeapi.co/api/v2/pokemon';

  @override
  Future<List<PokemonDetailModel>> getPokemonList({int limit = 20, int offset = 0}) async {
    try {
      final response = await client.get('$_baseUrl?limit=$limit&offset=$offset');

      final results = (response.data['results'] as List)
          .map((e) => PokemonListItemModel.fromJson(e))
          .toList();

      final List<PokemonDetailModel> pokemons = [];

      // Each Pokémon needs an additional request to fetch detailed data
      for (final item in results) {
        final detailResponse = await client.get(item.url);
        pokemons.add(PokemonDetailModel.fromJson(detailResponse.data));
      }

      return pokemons;
    } on DioException catch (e) {
      throw Exception('Failed to fetch Pokémon list: ${e.message}');
    } catch (e) {
      throw Exception('Unexpected error while fetching Pokémon list: $e');
    }
  }

  @override
  Future<PokemonDetailModel> getPokemonDetail(String name) async {
    try {
      final response = await client.get('$_baseUrl/$name');
      return PokemonDetailModel.fromJson(response.data);
    } on DioException catch (e) {
      throw Exception('Failed to fetch Pokémon details: ${e.message}');
    } catch (e) {
      throw Exception('Unexpected error while fetching Pokémon details: $e');
    }
  }
}
