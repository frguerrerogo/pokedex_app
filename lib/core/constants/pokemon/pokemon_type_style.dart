class PokemonTypeStyle {
  static const Map<String, Map<String, String>> typeStyles = {
    'normal': {
      'color': '#A8A77A',
      'icon': 'assets/icons/types/normal.svg',
      'label': 'Normal',
    },
    'fire': {
      'color': '#EE8130',
      'icon': 'assets/icons/types/fire.svg',
      'label': 'Fuego',
    },
    'water': {
      'color': '#6390F0',
      'icon': 'assets/icons/types/water.svg',
      'label': 'Agua',
    },
    'electric': {
      'color': '#F7D02C',
      'icon': 'assets/icons/types/electric.svg',
      'label': 'Eléctrico',
    },
    'grass': {
      'color': '#7AC74C',
      'icon': 'assets/icons/types/grass.svg',
      'label': 'Planta',
    },
    'ice': {
      'color': '#96D9D6',
      'icon': 'assets/icons/types/ice.svg',
      'label': 'Hielo',
    },
    'fighting': {
      'color': '#C22E28',
      'icon': 'assets/icons/types/fighting.svg',
      'label': 'Lucha',
    },
    'poison': {
      'color': '#A33EA1',
      'icon': 'assets/icons/types/poison.svg',
      'label': 'Veneno',
    },
    'ground': {
      'color': '#E2BF65',
      'icon': 'assets/icons/types/ground.svg',
      'label': 'Tierra',
    },
    'flying': {
      'color': '#A98FF3',
      'icon': 'assets/icons/types/flying.svg',
      'label': 'Volador',
    },
    'psychic': {
      'color': '#F95587',
      'icon': 'assets/icons/types/psychic.svg',
      'label': 'Psíquico',
    },
    'bug': {
      'color': '#A6B91A',
      'icon': 'assets/icons/types/bug.svg',
      'label': 'Bicho',
    },
    'rock': {
      'color': '#B6A136',
      'icon': 'assets/icons/types/rock.svg',
      'label': 'Roca',
    },
    'ghost': {
      'color': '#735797',
      'icon': 'assets/icons/types/ghost.svg',
      'label': 'Fantasma',
    },
    'dragon': {
      'color': '#6F35FC',
      'icon': 'assets/icons/types/dragon.svg',
      'label': 'Dragón',
    },
    'dark': {
      'color': '#705746',
      'icon': 'assets/icons/types/dark.svg',
      'label': 'Siniestro',
    },
    'steel': {
      'color': '#B7B7CE',
      'icon': 'assets/icons/types/steel.svg',
      'label': 'Acero',
    },
    'fairy': {
      'color': '#D685AD',
      'icon': 'assets/icons/types/fairy.svg',
      'label': 'Hada',
    },
  };

  /// Devuelve el color hex para un tipo
  static String getColor(String type) {
    return typeStyles[type.toLowerCase()]?['color'] ?? '#A8A878';
  }

  /// Devuelve la ruta del ícono
  static String getIcon(String type) {
    return typeStyles[type.toLowerCase()]?['icon'] ?? 'assets/icons/types/normal.svg';
  }

  /// Devuelve el nombre amigable (español)
  static String getLabel(String type) {
    return typeStyles[type.toLowerCase()]?['label'] ?? type.capitalize();
  }
}

extension StringCasingExtension on String {
  String capitalize() => isEmpty ? this : '${this[0].toUpperCase()}${substring(1)}';
}
