import 'package:flutter/widgets.dart';
import 'package:shared_preferences/shared_preferences.dart';

/// Global provider for SharedPreferences
late final SharedPreferences prefs;

/// Configures the application before running runApp().
/// This is where Flutter bindings and app-wide services are initialized.
Future<void> configureApp() async {
  // Ensure Flutter bindings are initialized
  WidgetsFlutterBinding.ensureInitialized();

  // Initialize SharedPreferences
  prefs = await SharedPreferences.getInstance();

  await prefs.setBool('hasSeenOnboarding', false); //Eliminar
}
