import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:pokedex_app/core/providers/providers_exports.dart' show hasSeenOnboardingProvider;
import 'package:pokedex_app/features/home/presentation/pages/home_page.dart';
import 'package:pokedex_app/features/onboarding/presentation/pages/onboarding_page.dart';

part 'app_router.g.dart';

/// Global router provider
final routerProvider = Provider<GoRouter>((ref) {
  final hasSeenOnboardingAsync = ref.watch(hasSeenOnboardingProvider);
  final hasSeenOnboarding = hasSeenOnboardingAsync.value ?? false;
  final initialRoute = hasSeenOnboarding ? HomeRoute().location : OnboardingRoute().location;

  return GoRouter(initialLocation: initialRoute, routes: $appRoutes);
});

/// Route: Onboarding
@TypedGoRoute<OnboardingRoute>(path: '/onboarding')
class OnboardingRoute extends GoRouteData with $OnboardingRoute {
  const OnboardingRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return const OnboardingPage();
  }
}

/// Route: Home
@TypedGoRoute<HomeRoute>(path: '/home')
class HomeRoute extends GoRouteData with $HomeRoute {
  const HomeRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return const HomePage();
  }
}
