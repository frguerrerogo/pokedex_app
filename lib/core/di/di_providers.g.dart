// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'di_providers.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(dio)
const dioProvider = DioProvider._();

final class DioProvider extends $FunctionalProvider<Dio, Dio, Dio>
    with $Provider<Dio> {
  const DioProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'dioProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$dioHash();

  @$internal
  @override
  $ProviderElement<Dio> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  Dio create(Ref ref) {
    return dio(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(Dio value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<Dio>(value),
    );
  }
}

String _$dioHash() => r'088d5c03610503c2407a8d7429b0e9f3ee76406f';

@ProviderFor(pokemonRemoteDataSource)
const pokemonRemoteDataSourceProvider = PokemonRemoteDataSourceProvider._();

final class PokemonRemoteDataSourceProvider
    extends
        $FunctionalProvider<
          PokemonRemoteDataSource,
          PokemonRemoteDataSource,
          PokemonRemoteDataSource
        >
    with $Provider<PokemonRemoteDataSource> {
  const PokemonRemoteDataSourceProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'pokemonRemoteDataSourceProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$pokemonRemoteDataSourceHash();

  @$internal
  @override
  $ProviderElement<PokemonRemoteDataSource> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  PokemonRemoteDataSource create(Ref ref) {
    return pokemonRemoteDataSource(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(PokemonRemoteDataSource value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<PokemonRemoteDataSource>(value),
    );
  }
}

String _$pokemonRemoteDataSourceHash() =>
    r'b9a08ffa5961efad6e453464775a6290ec3666e0';

@ProviderFor(pokemonRepository)
const pokemonRepositoryProvider = PokemonRepositoryProvider._();

final class PokemonRepositoryProvider
    extends
        $FunctionalProvider<
          PokemonRepository,
          PokemonRepository,
          PokemonRepository
        >
    with $Provider<PokemonRepository> {
  const PokemonRepositoryProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'pokemonRepositoryProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$pokemonRepositoryHash();

  @$internal
  @override
  $ProviderElement<PokemonRepository> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  PokemonRepository create(Ref ref) {
    return pokemonRepository(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(PokemonRepository value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<PokemonRepository>(value),
    );
  }
}

String _$pokemonRepositoryHash() => r'c19eed03bc949a0c043808355c2544e6f89deb9f';

@ProviderFor(getPokemonList)
const getPokemonListProvider = GetPokemonListProvider._();

final class GetPokemonListProvider
    extends $FunctionalProvider<GetPokemonList, GetPokemonList, GetPokemonList>
    with $Provider<GetPokemonList> {
  const GetPokemonListProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'getPokemonListProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$getPokemonListHash();

  @$internal
  @override
  $ProviderElement<GetPokemonList> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  GetPokemonList create(Ref ref) {
    return getPokemonList(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(GetPokemonList value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<GetPokemonList>(value),
    );
  }
}

String _$getPokemonListHash() => r'fa838f3c61119751b42b97942f44761ec084c89c';

@ProviderFor(getPokemonDetail)
const getPokemonDetailProvider = GetPokemonDetailProvider._();

final class GetPokemonDetailProvider
    extends
        $FunctionalProvider<
          GetPokemonDetail,
          GetPokemonDetail,
          GetPokemonDetail
        >
    with $Provider<GetPokemonDetail> {
  const GetPokemonDetailProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'getPokemonDetailProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$getPokemonDetailHash();

  @$internal
  @override
  $ProviderElement<GetPokemonDetail> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  GetPokemonDetail create(Ref ref) {
    return getPokemonDetail(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(GetPokemonDetail value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<GetPokemonDetail>(value),
    );
  }
}

String _$getPokemonDetailHash() => r'0291d5b8d41c7f6e54ad00d1e327210e8727d4bb';

@ProviderFor(pokemonDetail)
const pokemonDetailProvider = PokemonDetailFamily._();

final class PokemonDetailProvider
    extends
        $FunctionalProvider<
          AsyncValue<PokemonDetail>,
          PokemonDetail,
          FutureOr<PokemonDetail>
        >
    with $FutureModifier<PokemonDetail>, $FutureProvider<PokemonDetail> {
  const PokemonDetailProvider._({
    required PokemonDetailFamily super.from,
    required String super.argument,
  }) : super(
         retry: null,
         name: r'pokemonDetailProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$pokemonDetailHash();

  @override
  String toString() {
    return r'pokemonDetailProvider'
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
    final argument = this.argument as String;
    return pokemonDetail(ref, argument);
  }

  @override
  bool operator ==(Object other) {
    return other is PokemonDetailProvider && other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$pokemonDetailHash() => r'0d7396279ceab50c88847055f02e9ecd45accd47';

final class PokemonDetailFamily extends $Family
    with $FunctionalFamilyOverride<FutureOr<PokemonDetail>, String> {
  const PokemonDetailFamily._()
    : super(
        retry: null,
        name: r'pokemonDetailProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  PokemonDetailProvider call(String name) =>
      PokemonDetailProvider._(argument: name, from: this);

  @override
  String toString() => r'pokemonDetailProvider';
}

@ProviderFor(selectedPokemon)
const selectedPokemonProvider = SelectedPokemonProvider._();

final class SelectedPokemonProvider
    extends
        $FunctionalProvider<
          ValueNotifier<PokemonDetail?>,
          ValueNotifier<PokemonDetail?>,
          ValueNotifier<PokemonDetail?>
        >
    with $Provider<ValueNotifier<PokemonDetail?>> {
  const SelectedPokemonProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'selectedPokemonProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$selectedPokemonHash();

  @$internal
  @override
  $ProviderElement<ValueNotifier<PokemonDetail?>> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  ValueNotifier<PokemonDetail?> create(Ref ref) {
    return selectedPokemon(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(ValueNotifier<PokemonDetail?> value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<ValueNotifier<PokemonDetail?>>(
        value,
      ),
    );
  }
}

String _$selectedPokemonHash() => r'b2b7fa336190ba48cd70763613d334ec41294813';
