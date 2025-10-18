class PokemonListItemEntity {
  final String name;
  final String url;

  const PokemonListItemEntity({required this.name, required this.url});

  int get id {
    final uri = Uri.parse(url);
    final segments = uri.pathSegments;
    return int.tryParse(segments[segments.length - 2]) ?? 0;
  }

  @override
  String toString() => 'PokemonListItemEntity(name: $name, id: $id)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is PokemonListItemEntity && other.name == name && other.url == url;
  }

  @override
  int get hashCode => name.hashCode ^ url.hashCode;
}
