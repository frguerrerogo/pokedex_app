import 'package:freezed_annotation/freezed_annotation.dart';

part 'pokemon_detail_model.freezed.dart';
part 'pokemon_detail_model.g.dart';

@freezed
abstract class PokemonDetailModel with _$PokemonDetailModel {
  const factory PokemonDetailModel({
    required int id,
    required String name,
    required List<AbilityModel> abilities,
    required double height,
    required double weight,
    required SpriteModel sprites,
    required List<TypeSlotModel> types,
  }) = _PokemonDetailModel;

  factory PokemonDetailModel.fromJson(Map<String, dynamic> json) => _$PokemonDetailModelFromJson(json);
}

@freezed
abstract class AbilityModel with _$AbilityModel {
  const factory AbilityModel({
    required AbilityDetail ability,
    @JsonKey(name: 'is_hidden') required bool isHidden,
    required int slot,
  }) = _AbilityModel;

  factory AbilityModel.fromJson(Map<String, dynamic> json) => _$AbilityModelFromJson(json);
}

@freezed
abstract class AbilityDetail with _$AbilityDetail {
  const factory AbilityDetail({required String name, required String url}) = _AbilityDetail;

  factory AbilityDetail.fromJson(Map<String, dynamic> json) => _$AbilityDetailFromJson(json);
}

@freezed
abstract class SpriteModel with _$SpriteModel {
  const factory SpriteModel({@JsonKey(name: 'front_default') required String frontDefault}) =
      _SpriteModel;

  factory SpriteModel.fromJson(Map<String, dynamic> json) => _$SpriteModelFromJson(json);
}

@freezed
abstract class TypeSlotModel with _$TypeSlotModel {
  const factory TypeSlotModel({required int slot, required TypeDetail type}) = _TypeSlotModel;

  factory TypeSlotModel.fromJson(Map<String, dynamic> json) => _$TypeSlotModelFromJson(json);
}

@freezed
abstract class TypeDetail with _$TypeDetail {
  const factory TypeDetail({required String name, required String url}) = _TypeDetail;

  factory TypeDetail.fromJson(Map<String, dynamic> json) => _$TypeDetailFromJson(json);
}
