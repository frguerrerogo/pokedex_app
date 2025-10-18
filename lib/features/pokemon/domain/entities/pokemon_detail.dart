class PokemonEntity {
  final int id;
  final String name;
  final List<String> abilities;
  final double height;
  final double weight;
  final String imageUrl;
  final List<String> types;

  const PokemonEntity({
    required this.id,
    required this.name,
    required this.abilities,
    required this.height,
    required this.weight,
    required this.imageUrl,
    required this.types,
  });

  @override
  String toString() {
    return 'PokemonEntity(id: $id, name: $name, types: $types)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is PokemonEntity && other.id == id;
  }

  @override
  int get hashCode => id.hashCode;
}
