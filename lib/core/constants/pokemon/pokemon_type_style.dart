import 'package:flutter/widgets.dart';
import 'package:pokedex_app/core/constants/app_images.dart';
import 'package:pokedex_app/l10n/app_localizations.dart';

class PokemonTypeStyle {
  // Only keep the color mapping here (const) — icons and labels are provided by
  // AppImages and AppLocalizations respectively to support l10n and central assets.
  static final Map<String, String> _colors = {
    'normal': '#FF9FA19F',
    'fire': '#FFE62829',
    'water': '#FF2980EF',
    'electric': '#FFFAC000',
    'grass': '#FF3FA129',
    'ice': '#FF3FD8FF',
    'fighting': '#FFFF8000',
    'poison': '#FF9141CB',
    'ground': '#FF915121',
    'flying': '#FF81B9EF',
    'psychic': '#FFEF4179',
    'bug': '#FF91A119',
    'rock': '#FFAFA981',
    'ghost': '#FF704170',
    'dragon': '#FF5060E1',
    'dark': '#FF50413F',
    'steel': '#FF60A1B8',
    'fairy': '#FFEF70EF',
  };

  /// Returns the Color associated with the Pokémon type
  static Color getColor(String type) {
    final hex = _colors[type.toLowerCase()] ?? '#FFA8A878'; // default color
    return _fromHex(hex);
  }

  /// Converts a HEX string (for example '#FFE62829') into a Color object
  static Color _fromHex(String hex) {
    final buffer = StringBuffer();
    buffer.write(hex.replaceFirst('#', ''));
    return Color(int.parse(buffer.toString(), radix: 16));
  }

  /// Returns the icon path using `AppImages` constants. This keeps
  /// asset paths centralized and easy to change.
  static String getIcon(String type) {
    switch (type.toLowerCase()) {
      case 'bug':
        return AppImages.iconBug;
      case 'dark':
        return AppImages.iconDark;
      case 'dragon':
        return AppImages.iconDragon;
      case 'electric':
        return AppImages.iconElectric;
      case 'fairy':
        return AppImages.iconFairy;
      case 'fighting':
        return AppImages.iconFighting;
      case 'fire':
        return AppImages.iconFire;
      case 'flying':
        return AppImages.iconFlying;
      case 'ghost':
        return AppImages.iconGhost;
      case 'grass':
        return AppImages.iconGrass;
      case 'ground':
        return AppImages.iconGround;
      case 'ice':
        return AppImages.iconIce;
      case 'normal':
        return AppImages.iconNormal;
      case 'poison':
        return AppImages.iconPoison;
      case 'psychic':
        return AppImages.iconPsychic;
      case 'rock':
        return AppImages.iconRock;
      case 'steel':
        return AppImages.iconSteel;
      case 'water':
        return AppImages.iconWater;
      default:
        return AppImages.iconNormal;
    }
  }

  /// Returns the localized name using AppLocalizations.
  static String getLabel(BuildContext context, String type) {
    final l10n = AppLocalizations.of(context);
    switch (type.toLowerCase()) {
      case 'normal':
        return l10n.typeNormal;
      case 'fire':
        return l10n.typeFire;
      case 'water':
        return l10n.typeWater;
      case 'grass':
        return l10n.typeGrass;
      case 'electric':
        return l10n.typeElectric;
      case 'psychic':
        return l10n.typePsychic;
      case 'fighting':
        return l10n.typeFighting;
      case 'ground':
        return l10n.typeGround;
      case 'rock':
        return l10n.typeRock;
      case 'bug':
        return l10n.typeBug;
      case 'ghost':
        return l10n.typeGhost;
      case 'ice':
        return l10n.typeIce;
      case 'dragon':
        return l10n.typeDragon;
      case 'dark':
        return l10n.typeDark;
      case 'steel':
        return l10n.typeSteel;
      case 'fairy':
        return l10n.typeFairy;
      case 'poison':
        return l10n.typePoison;
      case 'flying':
        return l10n.typeFlying;
      default:
        return type.isEmpty ? type : '${type[0].toUpperCase()}${type.substring(1)}';
    }
  }
}
