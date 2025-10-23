import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:pokedex_app/core/core_exports.dart' show hasSeenOnboardingProvider;
import 'package:pokedex_app/core/feature/presentation/app_pages_exports.dart';
import 'package:pokedex_app/features/pokemon/presentation/pages/pokemon_detail_page.dart';

part 'app_router.g.dart';

const onboarding = '/onboarding';
const home = '/home';
const regions = '/regions';
const favorites = '/favorites';
const profile = '/profile';
const pokemonDetail = '/pokemon/:id';

/// Global router provider
final routerProvider = Provider<GoRouter>((ref) {
  final hasSeenOnboardingAsync = ref.watch(hasSeenOnboardingProvider);
  final hasSeenOnboarding = hasSeenOnboardingAsync.value ?? false;
  final initialRoute = hasSeenOnboarding ? HomeRoute().location : OnboardingRoute().location;

  return GoRouter(initialLocation: initialRoute, routes: $appRoutes);
});

/// Route: Onboarding
@TypedGoRoute<OnboardingRoute>(path: onboarding)
class OnboardingRoute extends GoRouteData with $OnboardingRoute {
  const OnboardingRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return const OnboardingPage();
  }
}

/// Route: Home (Pokedex)
@TypedGoRoute<HomeRoute>(path: home)
class HomeRoute extends GoRouteData with $HomeRoute {
  const HomeRoute();

  @override
  Page<void> buildPage(BuildContext context, GoRouterState state) {
    // Sin animación
    return NoTransitionPage(key: state.pageKey, child: const PokedexPage());
  }
}

/// Route: Regions
@TypedGoRoute<RegionsRoute>(path: regions)
class RegionsRoute extends GoRouteData with $RegionsRoute {
  const RegionsRoute();

  @override
  Page<void> buildPage(BuildContext context, GoRouterState state) {
    return NoTransitionPage(key: state.pageKey, child: const RegionsPage());
  }
}

/// Route: Favorites
@TypedGoRoute<FavoritesRoute>(path: favorites)
class FavoritesRoute extends GoRouteData with $FavoritesRoute {
  const FavoritesRoute();

  @override
  Page<void> buildPage(BuildContext context, GoRouterState state) {
    return NoTransitionPage(key: state.pageKey, child: const FavoritesPage());
  }
}

/// Route: Profile
@TypedGoRoute<ProfileRoute>(path: profile)
class ProfileRoute extends GoRouteData with $ProfileRoute {
  const ProfileRoute();

  @override
  Page<void> buildPage(BuildContext context, GoRouterState state) {
    return NoTransitionPage(key: state.pageKey, child: const ProfilePage());
  }
}

/// Route: Pokemon Detail
@TypedGoRoute<PokemonDetailRoute>(path: pokemonDetail)
class PokemonDetailRoute extends GoRouteData with $PokemonDetailRoute {
  final String id;

  const PokemonDetailRoute({required this.id});

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return PokemonDetailPage(pokemonId: int.parse(id));
  }
}
