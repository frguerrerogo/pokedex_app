import 'package:freezed_annotation/freezed_annotation.dart';

part 'pokemon_model.freezed.dart';
part 'pokemon_model.g.dart';

@freezed
abstract class PokemonListItemModel with _$PokemonListItemModel {
  const factory PokemonListItemModel({required String name, required String url}) =
      _PokemonListItemModel;

  factory PokemonListItemModel.fromJson(Map<String, dynamic> json) =>
      _$PokemonListItemModelFromJson(json);
}
