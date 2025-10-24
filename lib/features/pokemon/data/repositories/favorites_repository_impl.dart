import 'package:pokedex_app/features/pokemon/data/datasources/favorites_local_data_source.dart';
import 'package:pokedex_app/features/pokemon/data/models/favorite_model.dart';
import 'package:pokedex_app/features/pokemon/domain/entities/favorite.dart';
import 'package:pokedex_app/features/pokemon/domain/repositories/favorites_repository.dart';

class FavoritesRepositoryImpl implements FavoritesRepository {
  final FavoritesLocalDataSource localDataSource;

  FavoritesRepositoryImpl({required this.localDataSource});

  @override
  Future<void> addFavorite(Favorite favorite) async {
    final favoriteModel = FavoriteModel(
      pokemonId: favorite.pokemonId,
      name: favorite.name,
      imageUrl: favorite.imageUrl,
      types: favorite.types,
      addedAt: favorite.addedAt,
    );

    final favorites = await localDataSource.getFavorites();

    favorites.removeWhere((fav) => fav.pokemonId == favorite.pokemonId);
    favorites.add(favoriteModel);

    await localDataSource.saveFavorites(favorites);
  }

  @override
  Future<void> removeFavorite(int pokemonId) async {
    final favorites = await localDataSource.getFavorites();
    favorites.removeWhere((fav) => fav.pokemonId == pokemonId);
    await localDataSource.saveFavorites(favorites);
  }

  @override
  Future<List<Favorite>> getFavorites() async {
    final favoriteModels = await localDataSource.getFavorites();
    return favoriteModels
        .map(
          (model) => Favorite(
            pokemonId: model.pokemonId,
            name: model.name,
            imageUrl: model.imageUrl,
            types: model.types,
            addedAt: model.addedAt,
          ),
        )
        .toList();
  }

  @override
  Future<bool> isFavorite(int pokemonId) async {
    return await localDataSource.isFavorite(pokemonId);
  }
}
