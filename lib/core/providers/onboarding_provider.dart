import 'package:pokedex_app/core/core_exports.dart' show prefs;
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'onboarding_provider.g.dart';

@riverpod
Future<bool> hasSeenOnboarding(Ref ref) async {
  return prefs.getBool('hasSeenOnboarding') ?? false;
}
