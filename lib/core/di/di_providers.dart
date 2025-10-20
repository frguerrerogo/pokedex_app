import 'package:dio/dio.dart';
import 'package:pokedex_app/features/pokemon/data/datasources/pokemon_remote_data_source.dart';
import 'package:pokedex_app/features/pokemon/data/repositories/pokemon_repository_impl.dart';
import 'package:pokedex_app/features/pokemon/domain/repositories/pokemon_repository.dart';
import 'package:pokedex_app/features/pokemon/domain/usecases/get_pokemon_detail.dart';
import 'package:pokedex_app/features/pokemon/domain/usecases/get_pokemon_list.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'di_providers.g.dart';

@riverpod
Dio dio(Ref ref) => Dio();

@riverpod
PokemonRemoteDataSource pokemonRemoteDataSource(Ref ref) =>
    PokemonRemoteDataSourceImpl(ref.watch(dioProvider));

@riverpod
PokemonRepository pokemonRepository(Ref ref) =>
    PokemonRepositoryImpl(ref.watch(pokemonRemoteDataSourceProvider));

@riverpod
GetPokemonList getPokemonList(Ref ref) => GetPokemonList(ref.watch(pokemonRepositoryProvider));

@riverpod
GetPokemonDetail getPokemonDetail(Ref ref) =>
    GetPokemonDetail(ref.watch(pokemonRepositoryProvider));
