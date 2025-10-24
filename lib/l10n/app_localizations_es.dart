// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Spanish Castilian (`es`).
class AppLocalizationsEs extends AppLocalizations {
  AppLocalizationsEs([String locale = 'es']) : super(locale);

  @override
  String get appTitle => 'Pokédex';

  @override
  String get onboardingTitle1 => 'Todos los Pokémon en un solo lugar';

  @override
  String get onboardingSubtitle1 =>
      'Accede a una amplia lista de Pokémon de todas las generaciones creadas por Nintendo';

  @override
  String get onboardingButton1 => 'Continuar';

  @override
  String get onboardingTitle2 => 'Mantén tu Pokédex actualizada';

  @override
  String get onboardingSubtitle2 =>
      'Regístrate y guarda tu perfil, Pokémon favoritos, configuraciones y mucho más';

  @override
  String get onboardingButton2 => 'Empecemos';

  @override
  String get regions => 'Regiones';

  @override
  String get favorites => 'Favoritos';

  @override
  String get profile => 'Perfil';

  @override
  String get somethingWentWrong => 'Algo salió mal...';

  @override
  String get dataLoadErrorMessage =>
      'No pudimos cargar la información en este momento. Verifica tu conexión o intenta nuevamente más tarde.';

  @override
  String get noFavoritePokemonMessage =>
      'No has marcado ningún Pokémon como favorito';

  @override
  String get favoritePokemonInstruction =>
      'Haz clic en el ícono de corazón de tus Pokémon favoritos y aparecerán aquí.';

  @override
  String get comingSoon => '¡Muy pronto disponible!';

  @override
  String get sectionComingSoonMessage =>
      'Estamos trabajando para traerte esta sección. Vuelve más adelante para descubrir todas las novedades.';

  @override
  String get typeNormal => 'Normal';

  @override
  String get typeFire => 'Fuego';

  @override
  String get typeWater => 'Agua';

  @override
  String get typeGrass => 'Planta';

  @override
  String get typeFlying => 'Volador';

  @override
  String get typeBug => 'Bicho';

  @override
  String get typeRock => 'Roca';

  @override
  String get typeGround => 'Tierra';

  @override
  String get typePoison => 'Veneno';

  @override
  String get typeElectric => 'Eléctrico';

  @override
  String get typePsychic => 'Psíquico';

  @override
  String get typeIce => 'Hielo';

  @override
  String get typeDragon => 'Dragón';

  @override
  String get typeSteel => 'Acero';

  @override
  String get typeFairy => 'Hada';

  @override
  String get typeFighting => 'Lucha';

  @override
  String get typeGhost => 'Fantasma';

  @override
  String get typeDark => 'Siniestro';

  @override
  String get information => 'Información';

  @override
  String get weight => 'Peso';

  @override
  String get height => 'Altura';

  @override
  String get ability1 => 'Habilidad 1';

  @override
  String get ability2 => 'Habilidad 2';

  @override
  String get statistics => 'Estadísticas';

  @override
  String get hp => 'PS';

  @override
  String get attack => 'Ataque';

  @override
  String get defense => 'Defensa';

  @override
  String get specialAttack => 'Atq. Esp.';

  @override
  String get weaknesses => 'Debilidades';

  @override
  String get noFavorites => 'Sin favoritos';

  @override
  String get addFavoritesInstruction =>
      'Agrega Pokémon a tu lista de favoritos';

  @override
  String get noPokemonAvailable => 'Sin Pokémon disponibles';

  @override
  String errorMessage(Object error) {
    return 'Error: $error';
  }
}
