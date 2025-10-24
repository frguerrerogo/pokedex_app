import 'package:dio/dio.dart';
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

// ============================================================================
// EXTERNAL DEPENDENCIES
// ============================================================================
// Low-level dependencies that other providers depend on

@riverpod
Dio dio(Ref ref) => Dio();

@riverpod
Future<SharedPreferences> sharedPreferences(Ref ref) async {
  return await SharedPreferences.getInstance();
}

// ============================================================================
// DATA SOURCES
// ============================================================================
// Responsible for fetching data from remote or local sources

@riverpod
PokemonRemoteDataSource pokemonRemoteDataSource(Ref ref) =>
    PokemonRemoteDataSourceImpl(ref.watch(dioProvider));

@riverpod
Future<FavoritesLocalDataSource> favoritesLocalDataSource(Ref ref) async {
  final prefs = await ref.watch(sharedPreferencesProvider.future);
  return FavoritesLocalDataSourceImpl(prefs);
}

// ============================================================================
// REPOSITORIES
// ============================================================================
// Business logic layer - coordinates data sources

@riverpod
PokemonRepository pokemonRepository(Ref ref) =>
    PokemonRepositoryImpl(ref.watch(pokemonRemoteDataSourceProvider));

@riverpod
Future<FavoritesRepository> favoritesRepository(Ref ref) async {
  final localDataSource = await ref.watch(
    favoritesLocalDataSourceProvider.future,
  );
  return FavoritesRepositoryImpl(localDataSource: localDataSource);
}

// ============================================================================
// USE CASES
// ============================================================================
// Application business rules - each use case represents one user action

@riverpod
GetPokemonList getPokemonList(Ref ref) =>
    GetPokemonList(ref.watch(pokemonRepositoryProvider));

@riverpod
GetPokemonDetail getPokemonDetail(Ref ref) =>
    GetPokemonDetail(ref.watch(pokemonRepositoryProvider));

@riverpod
Future<AddFavoriteUseCase> addFavoriteUseCase(Ref ref) async {
  final repo = await ref.watch(favoritesRepositoryProvider.future);
  return AddFavoriteUseCase(repo);
}

@riverpod
Future<RemoveFavoriteUseCase> removeFavoriteUseCase(Ref ref) async {
  final repo = await ref.watch(favoritesRepositoryProvider.future);
  return RemoveFavoriteUseCase(repo);
}

@riverpod
Future<GetFavoritesUseCase> getFavoritesUseCase(Ref ref) async {
  final repo = await ref.watch(favoritesRepositoryProvider.future);
  return GetFavoritesUseCase(repo);
}

@riverpod
Future<IsFavoritePokemonUseCase> isFavoritePokemonUseCase(Ref ref) async {
  final repo = await ref.watch(favoritesRepositoryProvider.future);
  return IsFavoritePokemonUseCase(repo);
}

// ============================================================================
// PRESENTATION LAYER PROVIDERS
// ============================================================================
// High-level features and UI state

@riverpod
Future<PokemonDetail> pokemonDetail(Ref ref, String name) async {
  final useCase = ref.watch(getPokemonDetailProvider);
  return await useCase(name);
}

@riverpod
class SelectedPokemonNotifier extends _$SelectedPokemonNotifier {
  @override
  PokemonDetail? build() => null;

  void select(PokemonDetail pokemon) => state = pokemon;
  void clear() => state = null;
}

@riverpod
Future<List<Favorite>> favorites(Ref ref) async {
  final useCase = await ref.watch(getFavoritesUseCaseProvider.future);
  return await useCase();
}

@riverpod
Future<bool> isFavoritePokemon(Ref ref, int pokemonId) async {
  final useCase = await ref.watch(isFavoritePokemonUseCaseProvider.future);
  return await useCase(pokemonId);
}
