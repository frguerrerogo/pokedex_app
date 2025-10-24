// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'favorite_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_FavoriteModel _$FavoriteModelFromJson(Map<String, dynamic> json) =>
    _FavoriteModel(
      pokemonId: (json['pokemonId'] as num).toInt(),
      name: json['name'] as String,
      imageUrl: json['imageUrl'] as String,
      types: (json['types'] as List<dynamic>).map((e) => e as String).toList(),
      addedAt: DateTime.parse(json['addedAt'] as String),
    );

Map<String, dynamic> _$FavoriteModelToJson(_FavoriteModel instance) =>
    <String, dynamic>{
      'pokemonId': instance.pokemonId,
      'name': instance.name,
      'imageUrl': instance.imageUrl,
      'types': instance.types,
      'addedAt': instance.addedAt.toIso8601String(),
    };
