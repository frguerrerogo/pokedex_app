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
  String get onboardingSubtitle2 => 'Regístrate y guarda tu perfil, Pokémon favoritos, configuraciones y mucho más';

  @override
  String get onboardingButton2 => 'Empecemos';
}
