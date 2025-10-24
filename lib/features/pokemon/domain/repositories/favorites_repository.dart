import 'package:pokedex_app/features/pokemon/domain/entities/favorite.dart';

abstract class FavoritesRepository {
  Future<void> addFavorite(Favorite favorite);
  Future<void> removeFavorite(int pokemonId);
  Future<List<Favorite>> getFavorites();
  Future<bool> isFavorite(int pokemonId);
}
