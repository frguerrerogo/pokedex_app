// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pokedex_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(Pokedex)
const pokedexProvider = PokedexProvider._();

final class PokedexProvider
    extends $AsyncNotifierProvider<Pokedex, List<PokemonDetailEntity>> {
  const PokedexProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'pokedexProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$pokedexHash();

  @$internal
  @override
  Pokedex create() => Pokedex();
}

String _$pokedexHash() => r'b6fb94fcf9593832ea191e340d3e6ebfecc3820f';

abstract class _$Pokedex extends $AsyncNotifier<List<PokemonDetailEntity>> {
  FutureOr<List<PokemonDetailEntity>> build();
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build();
    final ref =
        this.ref
            as $Ref<
              AsyncValue<List<PokemonDetailEntity>>,
              List<PokemonDetailEntity>
            >;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<
                AsyncValue<List<PokemonDetailEntity>>,
                List<PokemonDetailEntity>
              >,
              AsyncValue<List<PokemonDetailEntity>>,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}
