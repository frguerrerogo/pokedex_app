import 'package:flutter/material.dart';

import 'features/pokemon/presentation/pages/onboarding_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Pokedex App',
      theme: ThemeData(primarySwatch: Colors.red),
      initialRoute: '/onboarding',
      routes: {
        '/onboarding': (_) => const OnboardingPage(),
        '/home': (_) => Container(), // HomePage(),
      },
    );
  }
}
