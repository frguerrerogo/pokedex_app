class Favorite {
  final int pokemonId;
  final String name;
  final String imageUrl;
  final List<String> types;
  final DateTime addedAt;

  const Favorite({
    required this.pokemonId,
    required this.name,
    required this.imageUrl,
    required this.types,
    required this.addedAt,
  });

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is Favorite && other.pokemonId == pokemonId;
  }

  @override
  int get hashCode => pokemonId.hashCode;
}
