// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pokedex_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(pokedex)
const pokedexProvider = PokedexProvider._();

final class PokedexProvider
    extends
        $FunctionalProvider<
          AsyncValue<List<PokemonDetailEntity>>,
          List<PokemonDetailEntity>,
          FutureOr<List<PokemonDetailEntity>>
        >
    with
        $FutureModifier<List<PokemonDetailEntity>>,
        $FutureProvider<List<PokemonDetailEntity>> {
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
  $FutureProviderElement<List<PokemonDetailEntity>> $createElement(
    $ProviderPointer pointer,
  ) => $FutureProviderElement(pointer);

  @override
  FutureOr<List<PokemonDetailEntity>> create(Ref ref) {
    return pokedex(ref);
  }
}

String _$pokedexHash() => r'47e8a0576ccbe3fa2709fe65f40b0c32c14f145d';
