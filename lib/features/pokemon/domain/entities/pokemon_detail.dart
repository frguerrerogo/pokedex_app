class PokemonDetail {
  final int id;
  final String name;
  final List<PokemonAbility> abilities;
  final double height;
  final double weight;
  final String imageUrl;
  final List<PokemonTypeEntity> types;
  final double genderRate;
  final int hp;
  final int attack;
  final int defense;
  final int specialAttack;
  final int specialDefense;
  final int speed;

  const PokemonDetail({
    required this.id,
    required this.name,
    required this.abilities,
    required this.height,
    required this.weight,
    required this.imageUrl,
    required this.types,
    required this.genderRate,
    required this.hp,
    required this.attack,
    required this.defense,
    required this.specialAttack,
    required this.specialDefense,
    required this.speed,
  });

  @override
  String toString() => 'PokemonDetailEntity(id: $id, name: $name)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is PokemonDetail && other.id == id;
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
  final String iconPath;
  final int colorValue;

  const PokemonTypeEntity({required this.name, required this.iconPath, required this.colorValue});
}
