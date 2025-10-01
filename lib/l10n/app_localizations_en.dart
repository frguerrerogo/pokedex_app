// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for English (`en`).
class AppLocalizationsEn extends AppLocalizations {
  AppLocalizationsEn([String locale = 'en']) : super(locale);

  @override
  String get appTitle => 'Pokédex';

  @override
  String get onboardingTitle1 => 'All Pokémon in one place';

  @override
  String get onboardingSubtitle1 => 'Access a wide list of Pokémon from all generations created by Nintendo';

  @override
  String get onboardingButton1 => 'Continue';

  @override
  String get onboardingTitle2 => 'Keep your Pokédex updated';

  @override
  String get onboardingSubtitle2 => 'Register and save your profile, favorite Pokémon, settings and much more';

  @override
  String get onboardingButton2 => 'Let\'s start';
}
