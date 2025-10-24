import 'package:pokedex_app/features/pokemon/domain/entities/favorite.dart';
import 'package:pokedex_app/features/pokemon/domain/repositories/favorites_repository.dart';

class AddFavoriteUseCase {
  final FavoritesRepository repository;

  AddFavoriteUseCase(this.repository);

  Future<void> call(Favorite favorite) async {
    await repository.addFavorite(favorite);
  }
}

class RemoveFavoriteUseCase {
  final FavoritesRepository repository;

  RemoveFavoriteUseCase(this.repository);

  Future<void> call(int pokemonId) async {
    await repository.removeFavorite(pokemonId);
  }
}

class GetFavoritesUseCase {
  final FavoritesRepository repository;

  GetFavoritesUseCase(this.repository);

  Future<List<Favorite>> call() async {
    return await repository.getFavorites();
  }
}

class IsFavoritePokemonUseCase {
  final FavoritesRepository repository;

  IsFavoritePokemonUseCase(this.repository);

  Future<bool> call(int pokemonId) async {
    return await repository.isFavorite(pokemonId);
  }
}
