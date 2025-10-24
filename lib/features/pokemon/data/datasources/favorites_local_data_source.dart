import 'dart:convert';

import 'package:shared_preferences/shared_preferences.dart';

import '../models/favorite_model.dart';

abstract class FavoritesLocalDataSource {
  Future<void> saveFavorites(List<FavoriteModel> favorites);
  Future<List<FavoriteModel>> getFavorites();
  Future<bool> isFavorite(int pokemonId);
}

class FavoritesLocalDataSourceImpl implements FavoritesLocalDataSource {
  static const String _favoritesKey = 'favorites';

  final SharedPreferences sharedPreferences;

  FavoritesLocalDataSourceImpl(this.sharedPreferences);

  @override
  Future<void> saveFavorites(List<FavoriteModel> favorites) async {
    final List<String> encodedFavorites = favorites
        .map((fav) => jsonEncode(fav.toJson()))
        .toList();

    await sharedPreferences.setStringList(_favoritesKey, encodedFavorites);
  }

  @override
  Future<List<FavoriteModel>> getFavorites() async {
    final List<String>? encodedFavorites = sharedPreferences.getStringList(
      _favoritesKey,
    );

    if (encodedFavorites == null || encodedFavorites.isEmpty) {
      return [];
    }

    return encodedFavorites
        .map((fav) => FavoriteModel.fromJson(jsonDecode(fav)))
        .toList();
  }

  @override
  Future<bool> isFavorite(int pokemonId) async {
    final favorites = await getFavorites();
    return favorites.any((fav) => fav.pokemonId == pokemonId);
  }
}
