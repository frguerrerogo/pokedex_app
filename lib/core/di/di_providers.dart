import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:pokedex_app/features/pokemon/data/datasources/favorites_local_data_source.dart';
import 'package:pokedex_app/features/pokemon/data/datasources/pokemon_remote_data_source.dart';
import 'package:pokedex_app/features/pokemon/data/repositories/favorites_repository_impl.dart';
import 'package:pokedex_app/features/pokemon/data/repositories/pokemon_repository_impl.dart';
import 'package:pokedex_app/features/pokemon/domain/entities/favorite.dart';
import 'package:pokedex_app/features/pokemon/domain/entities/pokemon_detail.dart';
import 'package:pokedex_app/features/pokemon/domain/repositories/favorites_repository.dart';
import 'package:pokedex_app/features/pokemon/domain/repositories/pokemon_repository.dart';
import 'package:pokedex_app/features/pokemon/domain/usecases/favorites_usecases.dart';
import 'package:pokedex_app/features/pokemon/domain/usecases/get_pokemon_detail.dart';
import 'package:pokedex_app/features/pokemon/domain/usecases/get_pokemon_list.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:shared_preferences/shared_preferences.dart';

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

@riverpod
Future<PokemonDetail> pokemonDetail(Ref ref, String name) async {
  final getPokemonDetail = ref.watch(getPokemonDetailProvider);
  final result = await getPokemonDetail(name);
  return result;
}

@riverpod
ValueNotifier<PokemonDetail?> selectedPokemon(Ref ref) {
  return ValueNotifier<PokemonDetail?>(null);
}

@riverpod
Future<SharedPreferences> sharedPreferencesProvider(Ref ref) async {
  return await SharedPreferences.getInstance();
}

@riverpod
Future<FavoritesLocalDataSource> favoritesLocalDataSourceProvider(Ref ref) async {
  final sharedPreferences = await ref.watch(sharedPreferencesProviderProvider.future);
  return FavoritesLocalDataSourceImpl(sharedPreferences);
}

@riverpod
Future<FavoritesRepository> favoritesRepositoryProvider(Ref ref) async {
  final localDataSource = await ref.watch(favoritesLocalDataSourceProviderProvider.future);
  return FavoritesRepositoryImpl(localDataSource: localDataSource);
}

@riverpod
Future<AddFavoriteUseCase> addFavoriteUseCaseProvider(Ref ref) async {
  final repository = await ref.watch(favoritesRepositoryProviderProvider.future);
  return AddFavoriteUseCase(repository);
}

@riverpod
Future<RemoveFavoriteUseCase> removeFavoriteUseCaseProvider(Ref ref) async {
  final repository = await ref.watch(favoritesRepositoryProviderProvider.future);
  return RemoveFavoriteUseCase(repository);
}

@riverpod
Future<GetFavoritesUseCase> getFavoritesUseCaseProvider(Ref ref) async {
  final repository = await ref.watch(favoritesRepositoryProviderProvider.future);
  return GetFavoritesUseCase(repository);
}

@riverpod
Future<IsFavoritePokemonUseCase> isFavoritePokemonUseCaseProvider(Ref ref) async {
  final repository = await ref.watch(favoritesRepositoryProviderProvider.future);
  return IsFavoritePokemonUseCase(repository);
}

@riverpod
Future<List<Favorite>> favoritesProvider(Ref ref) async {
  final getFavoritesUseCase = await ref.watch(getFavoritesUseCaseProviderProvider.future);
  return await getFavoritesUseCase();
}

@riverpod
Future<bool> isFavoritePokemon(Ref ref, int pokemonId) async {
  final isFavoritePokemonUseCase = await ref.watch(isFavoritePokemonUseCaseProviderProvider.future);
  return await isFavoritePokemonUseCase(pokemonId);
}
