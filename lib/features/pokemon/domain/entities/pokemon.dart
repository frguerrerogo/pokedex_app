class Pokemon {
  final String name;
  final String url;

  const Pokemon({required this.name, required this.url});

  int get id {
    final uri = Uri.parse(url);
    final segments = uri.pathSegments;
    return int.tryParse(segments[segments.length - 2]) ?? 0;
  }

  @override
  String toString() => 'Pokemon(name: $name, id: $id)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is Pokemon && other.name == name && other.url == url;
  }

  @override
  int get hashCode => name.hashCode ^ url.hashCode;
}
