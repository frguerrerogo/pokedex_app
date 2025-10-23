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
    extends $AsyncNotifierProvider<Pokedex, List<PokemonDetail>> {
  const PokedexProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'pokedexProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$pokedexHash();

  @$internal
  @override
  Pokedex create() => Pokedex();
}

String _$pokedexHash() => r'49cad72fd4a6e11baec35801c8d0847fc52379d7';

abstract class _$Pokedex extends $AsyncNotifier<List<PokemonDetail>> {
  FutureOr<List<PokemonDetail>> build();
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build();
    final ref =
        this.ref as $Ref<AsyncValue<List<PokemonDetail>>, List<PokemonDetail>>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<AsyncValue<List<PokemonDetail>>, List<PokemonDetail>>,
              AsyncValue<List<PokemonDetail>>,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}
