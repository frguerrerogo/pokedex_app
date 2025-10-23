// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pokemon_detail_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(pokemonDetailById)
const pokemonDetailByIdProvider = PokemonDetailByIdFamily._();

final class PokemonDetailByIdProvider
    extends
        $FunctionalProvider<
          AsyncValue<PokemonDetail>,
          PokemonDetail,
          FutureOr<PokemonDetail>
        >
    with $FutureModifier<PokemonDetail>, $FutureProvider<PokemonDetail> {
  const PokemonDetailByIdProvider._({
    required PokemonDetailByIdFamily super.from,
    required int super.argument,
  }) : super(
         retry: null,
         name: r'pokemonDetailByIdProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$pokemonDetailByIdHash();

  @override
  String toString() {
    return r'pokemonDetailByIdProvider'
        ''
        '($argument)';
  }

  @$internal
  @override
  $FutureProviderElement<PokemonDetail> $createElement(
    $ProviderPointer pointer,
  ) => $FutureProviderElement(pointer);

  @override
  FutureOr<PokemonDetail> create(Ref ref) {
    final argument = this.argument as int;
    return pokemonDetailById(ref, argument);
  }

  @override
  bool operator ==(Object other) {
    return other is PokemonDetailByIdProvider && other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$pokemonDetailByIdHash() => r'a29bfb71b351ae555411165d31dc9d39702c9253';

final class PokemonDetailByIdFamily extends $Family
    with $FunctionalFamilyOverride<FutureOr<PokemonDetail>, int> {
  const PokemonDetailByIdFamily._()
    : super(
        retry: null,
        name: r'pokemonDetailByIdProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  PokemonDetailByIdProvider call(int id) =>
      PokemonDetailByIdProvider._(argument: id, from: this);

  @override
  String toString() => r'pokemonDetailByIdProvider';
}
