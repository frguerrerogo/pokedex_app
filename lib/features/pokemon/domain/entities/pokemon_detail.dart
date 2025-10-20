class PokemonDetailEntity {
  final int id;
  final String name;
  final List<PokemonAbility> abilities;
  final double height;
  final double weight;
  final String imageUrl;
  final List<PokemonTypeEntity> types;

  const PokemonDetailEntity({
    required this.id,
    required this.name,
    required this.abilities,
    required this.height,
    required this.weight,
    required this.imageUrl,
    required this.types,
  });

  @override
  String toString() => 'PokemonDetailEntity(id: $id, name: $name)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is PokemonDetailEntity && other.id == id;
  }

  @override
  int get hashCode => id.hashCode;
}

class PokemonAbility {
  final String name;
  final bool isHidden;
  final int slot;

  const PokemonAbility({required this.name, required this.isHidden, required this.slot});
}

class PokemonTypeEntity {
  final String name;

  const PokemonTypeEntity({required this.name});
}
