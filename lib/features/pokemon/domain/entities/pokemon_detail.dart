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

  /// Obtiene las debilidades basadas en los tipos del Pokémon
  List<String> getWeaknesses() {
    final weaknesses = <String>{};

    for (final type in types) {
      weaknesses.addAll(weaknessesByType[type.name.toLowerCase()] ?? []);
    }

    return weaknesses.toList();
  }
}

// Mapa de debilidades por tipo
const Map<String, List<String>> weaknessesByType = {
  'normal': ['fighting'],
  'fire': ['water', 'ground', 'rock'],
  'water': ['electric', 'grass'],
  'electric': ['ground'],
  'grass': ['fire', 'ice', 'poison', 'flying', 'bug'],
  'ice': ['fire', 'fighting', 'rock', 'steel'],
  'fighting': ['flying', 'psychic', 'fairy'],
  'poison': ['ground', 'psychic'],
  'ground': ['water', 'grass', 'ice'],
  'flying': ['electric', 'ice', 'rock'],
  'psychic': ['bug', 'ghost', 'dark'],
  'bug': ['fire', 'flying', 'rock'],
  'rock': ['water', 'grass', 'fighting', 'ground', 'steel'],
  'ghost': ['ghost', 'dark'],
  'dragon': ['ice', 'dragon', 'fairy'],
  'dark': ['fighting', 'bug', 'fairy'],
  'steel': ['fire', 'fighting', 'ground'],
  'fairy': ['poison', 'steel'],
};

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
