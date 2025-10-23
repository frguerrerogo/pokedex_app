// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pokemon_detail_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_PokemonDetailModel _$PokemonDetailModelFromJson(Map<String, dynamic> json) =>
    _PokemonDetailModel(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
      abilities: (json['abilities'] as List<dynamic>)
          .map((e) => AbilityModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      height: (json['height'] as num).toDouble(),
      weight: (json['weight'] as num).toDouble(),
      sprites: SpriteModel.fromJson(json['sprites'] as Map<String, dynamic>),
      types: (json['types'] as List<dynamic>)
          .map((e) => TypeSlotModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      stats: (json['stats'] as List<dynamic>)
          .map((e) => StatModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      genderRate: (json['gender_rate'] as num?)?.toInt(),
    );

Map<String, dynamic> _$PokemonDetailModelToJson(_PokemonDetailModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'abilities': instance.abilities,
      'height': instance.height,
      'weight': instance.weight,
      'sprites': instance.sprites,
      'types': instance.types,
      'stats': instance.stats,
      'gender_rate': instance.genderRate,
    };

_StatModel _$StatModelFromJson(Map<String, dynamic> json) => _StatModel(
  baseStat: (json['base_stat'] as num).toInt(),
  effort: (json['effort'] as num).toInt(),
  stat: StatDetailModel.fromJson(json['stat'] as Map<String, dynamic>),
);

Map<String, dynamic> _$StatModelToJson(_StatModel instance) =>
    <String, dynamic>{
      'base_stat': instance.baseStat,
      'effort': instance.effort,
      'stat': instance.stat,
    };

_StatDetailModel _$StatDetailModelFromJson(Map<String, dynamic> json) =>
    _StatDetailModel(name: json['name'] as String, url: json['url'] as String);

Map<String, dynamic> _$StatDetailModelToJson(_StatDetailModel instance) =>
    <String, dynamic>{'name': instance.name, 'url': instance.url};

_AbilityModel _$AbilityModelFromJson(Map<String, dynamic> json) =>
    _AbilityModel(
      ability: AbilityDetail.fromJson(json['ability'] as Map<String, dynamic>),
      isHidden: json['is_hidden'] as bool,
      slot: (json['slot'] as num).toInt(),
    );

Map<String, dynamic> _$AbilityModelToJson(_AbilityModel instance) =>
    <String, dynamic>{
      'ability': instance.ability,
      'is_hidden': instance.isHidden,
      'slot': instance.slot,
    };

_AbilityDetail _$AbilityDetailFromJson(Map<String, dynamic> json) =>
    _AbilityDetail(name: json['name'] as String, url: json['url'] as String);

Map<String, dynamic> _$AbilityDetailToJson(_AbilityDetail instance) =>
    <String, dynamic>{'name': instance.name, 'url': instance.url};

_SpriteModel _$SpriteModelFromJson(Map<String, dynamic> json) =>
    _SpriteModel(frontDefault: json['front_default'] as String);

Map<String, dynamic> _$SpriteModelToJson(_SpriteModel instance) =>
    <String, dynamic>{'front_default': instance.frontDefault};

_TypeSlotModel _$TypeSlotModelFromJson(Map<String, dynamic> json) =>
    _TypeSlotModel(
      slot: (json['slot'] as num).toInt(),
      type: TypeDetail.fromJson(json['type'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$TypeSlotModelToJson(_TypeSlotModel instance) =>
    <String, dynamic>{'slot': instance.slot, 'type': instance.type};

_TypeDetail _$TypeDetailFromJson(Map<String, dynamic> json) =>
    _TypeDetail(name: json['name'] as String, url: json['url'] as String);

Map<String, dynamic> _$TypeDetailToJson(_TypeDetail instance) =>
    <String, dynamic>{'name': instance.name, 'url': instance.url};
