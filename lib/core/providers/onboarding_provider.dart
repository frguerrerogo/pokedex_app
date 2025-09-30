import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pokedex_app/core/core_exports.dart' show prefs;

final hasSeenOnboardingProvider = FutureProvider<bool>((ref) async {
  return prefs.getBool('hasSeenOnboarding') ?? false;
});
