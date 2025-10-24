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

@ProviderFor(sharedPreferencesProvider)
const sharedPreferencesProviderProvider = SharedPreferencesProviderProvider._();

final class SharedPreferencesProviderProvider
    extends
        $FunctionalProvider<
          AsyncValue<SharedPreferences>,
          SharedPreferences,
          FutureOr<SharedPreferences>
        >
    with
        $FutureModifier<SharedPreferences>,
        $FutureProvider<SharedPreferences> {
  const SharedPreferencesProviderProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'sharedPreferencesProviderProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$sharedPreferencesProviderHash();

  @$internal
  @override
  $FutureProviderElement<SharedPreferences> $createElement(
    $ProviderPointer pointer,
  ) => $FutureProviderElement(pointer);

  @override
  FutureOr<SharedPreferences> create(Ref ref) {
    return sharedPreferencesProvider(ref);
  }
}

String _$sharedPreferencesProviderHash() =>
    r'376c8f5d29f1f9ebe7ae053414a61a402cc7683e';

@ProviderFor(favoritesLocalDataSourceProvider)
const favoritesLocalDataSourceProviderProvider =
    FavoritesLocalDataSourceProviderProvider._();

final class FavoritesLocalDataSourceProviderProvider
    extends
        $FunctionalProvider<
          AsyncValue<FavoritesLocalDataSource>,
          FavoritesLocalDataSource,
          FutureOr<FavoritesLocalDataSource>
        >
    with
        $FutureModifier<FavoritesLocalDataSource>,
        $FutureProvider<FavoritesLocalDataSource> {
  const FavoritesLocalDataSourceProviderProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'favoritesLocalDataSourceProviderProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$favoritesLocalDataSourceProviderHash();

  @$internal
  @override
  $FutureProviderElement<FavoritesLocalDataSource> $createElement(
    $ProviderPointer pointer,
  ) => $FutureProviderElement(pointer);

  @override
  FutureOr<FavoritesLocalDataSource> create(Ref ref) {
    return favoritesLocalDataSourceProvider(ref);
  }
}

String _$favoritesLocalDataSourceProviderHash() =>
    r'4d8c3b4eb291780ab4ea61c19d7059dc638c3a79';

@ProviderFor(favoritesRepositoryProvider)
const favoritesRepositoryProviderProvider =
    FavoritesRepositoryProviderProvider._();

final class FavoritesRepositoryProviderProvider
    extends
        $FunctionalProvider<
          AsyncValue<FavoritesRepository>,
          FavoritesRepository,
          FutureOr<FavoritesRepository>
        >
    with
        $FutureModifier<FavoritesRepository>,
        $FutureProvider<FavoritesRepository> {
  const FavoritesRepositoryProviderProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'favoritesRepositoryProviderProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$favoritesRepositoryProviderHash();

  @$internal
  @override
  $FutureProviderElement<FavoritesRepository> $createElement(
    $ProviderPointer pointer,
  ) => $FutureProviderElement(pointer);

  @override
  FutureOr<FavoritesRepository> create(Ref ref) {
    return favoritesRepositoryProvider(ref);
  }
}

String _$favoritesRepositoryProviderHash() =>
    r'776298e6aa21c36b110deadd3d4464c1e8fdc3e3';

@ProviderFor(addFavoriteUseCaseProvider)
const addFavoriteUseCaseProviderProvider =
    AddFavoriteUseCaseProviderProvider._();

final class AddFavoriteUseCaseProviderProvider
    extends
        $FunctionalProvider<
          AsyncValue<AddFavoriteUseCase>,
          AddFavoriteUseCase,
          FutureOr<AddFavoriteUseCase>
        >
    with
        $FutureModifier<AddFavoriteUseCase>,
        $FutureProvider<AddFavoriteUseCase> {
  const AddFavoriteUseCaseProviderProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'addFavoriteUseCaseProviderProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$addFavoriteUseCaseProviderHash();

  @$internal
  @override
  $FutureProviderElement<AddFavoriteUseCase> $createElement(
    $ProviderPointer pointer,
  ) => $FutureProviderElement(pointer);

  @override
  FutureOr<AddFavoriteUseCase> create(Ref ref) {
    return addFavoriteUseCaseProvider(ref);
  }
}

String _$addFavoriteUseCaseProviderHash() =>
    r'4b4bc01712892fd24a8213477776136668fdf6bf';

@ProviderFor(removeFavoriteUseCaseProvider)
const removeFavoriteUseCaseProviderProvider =
    RemoveFavoriteUseCaseProviderProvider._();

final class RemoveFavoriteUseCaseProviderProvider
    extends
        $FunctionalProvider<
          AsyncValue<RemoveFavoriteUseCase>,
          RemoveFavoriteUseCase,
          FutureOr<RemoveFavoriteUseCase>
        >
    with
        $FutureModifier<RemoveFavoriteUseCase>,
        $FutureProvider<RemoveFavoriteUseCase> {
  const RemoveFavoriteUseCaseProviderProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'removeFavoriteUseCaseProviderProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$removeFavoriteUseCaseProviderHash();

  @$internal
  @override
  $FutureProviderElement<RemoveFavoriteUseCase> $createElement(
    $ProviderPointer pointer,
  ) => $FutureProviderElement(pointer);

  @override
  FutureOr<RemoveFavoriteUseCase> create(Ref ref) {
    return removeFavoriteUseCaseProvider(ref);
  }
}

String _$removeFavoriteUseCaseProviderHash() =>
    r'5cd0ac1b4bb9c1a3606de3cf8c9c847e8a03da0b';

@ProviderFor(getFavoritesUseCaseProvider)
const getFavoritesUseCaseProviderProvider =
    GetFavoritesUseCaseProviderProvider._();

final class GetFavoritesUseCaseProviderProvider
    extends
        $FunctionalProvider<
          AsyncValue<GetFavoritesUseCase>,
          GetFavoritesUseCase,
          FutureOr<GetFavoritesUseCase>
        >
    with
        $FutureModifier<GetFavoritesUseCase>,
        $FutureProvider<GetFavoritesUseCase> {
  const GetFavoritesUseCaseProviderProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'getFavoritesUseCaseProviderProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$getFavoritesUseCaseProviderHash();

  @$internal
  @override
  $FutureProviderElement<GetFavoritesUseCase> $createElement(
    $ProviderPointer pointer,
  ) => $FutureProviderElement(pointer);

  @override
  FutureOr<GetFavoritesUseCase> create(Ref ref) {
    return getFavoritesUseCaseProvider(ref);
  }
}

String _$getFavoritesUseCaseProviderHash() =>
    r'3cd0ce9e3a8c4b65cdf2b54e2c8a5f460268b443';

@ProviderFor(isFavoritePokemonUseCaseProvider)
const isFavoritePokemonUseCaseProviderProvider =
    IsFavoritePokemonUseCaseProviderProvider._();

final class IsFavoritePokemonUseCaseProviderProvider
    extends
        $FunctionalProvider<
          AsyncValue<IsFavoritePokemonUseCase>,
          IsFavoritePokemonUseCase,
          FutureOr<IsFavoritePokemonUseCase>
        >
    with
        $FutureModifier<IsFavoritePokemonUseCase>,
        $FutureProvider<IsFavoritePokemonUseCase> {
  const IsFavoritePokemonUseCaseProviderProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'isFavoritePokemonUseCaseProviderProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$isFavoritePokemonUseCaseProviderHash();

  @$internal
  @override
  $FutureProviderElement<IsFavoritePokemonUseCase> $createElement(
    $ProviderPointer pointer,
  ) => $FutureProviderElement(pointer);

  @override
  FutureOr<IsFavoritePokemonUseCase> create(Ref ref) {
    return isFavoritePokemonUseCaseProvider(ref);
  }
}

String _$isFavoritePokemonUseCaseProviderHash() =>
    r'78b0872e5b9b226f42cd80e514fc08f1f4985425';

@ProviderFor(favoritesProvider)
const favoritesProviderProvider = FavoritesProviderProvider._();

final class FavoritesProviderProvider
    extends
        $FunctionalProvider<
          AsyncValue<List<Favorite>>,
          List<Favorite>,
          FutureOr<List<Favorite>>
        >
    with $FutureModifier<List<Favorite>>, $FutureProvider<List<Favorite>> {
  const FavoritesProviderProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'favoritesProviderProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$favoritesProviderHash();

  @$internal
  @override
  $FutureProviderElement<List<Favorite>> $createElement(
    $ProviderPointer pointer,
  ) => $FutureProviderElement(pointer);

  @override
  FutureOr<List<Favorite>> create(Ref ref) {
    return favoritesProvider(ref);
  }
}

String _$favoritesProviderHash() => r'020ff25e419d1d8ee8d9dd58377441a435cd12c2';

@ProviderFor(isFavoritePokemon)
const isFavoritePokemonProvider = IsFavoritePokemonFamily._();

final class IsFavoritePokemonProvider
    extends $FunctionalProvider<AsyncValue<bool>, bool, FutureOr<bool>>
    with $FutureModifier<bool>, $FutureProvider<bool> {
  const IsFavoritePokemonProvider._({
    required IsFavoritePokemonFamily super.from,
    required int super.argument,
  }) : super(
         retry: null,
         name: r'isFavoritePokemonProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$isFavoritePokemonHash();

  @override
  String toString() {
    return r'isFavoritePokemonProvider'
        ''
        '($argument)';
  }

  @$internal
  @override
  $FutureProviderElement<bool> $createElement($ProviderPointer pointer) =>
      $FutureProviderElement(pointer);

  @override
  FutureOr<bool> create(Ref ref) {
    final argument = this.argument as int;
    return isFavoritePokemon(ref, argument);
  }

  @override
  bool operator ==(Object other) {
    return other is IsFavoritePokemonProvider && other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$isFavoritePokemonHash() => r'0991b9b09a68f0671464705ff7baec605b222db3';

final class IsFavoritePokemonFamily extends $Family
    with $FunctionalFamilyOverride<FutureOr<bool>, int> {
  const IsFavoritePokemonFamily._()
    : super(
        retry: null,
        name: r'isFavoritePokemonProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  IsFavoritePokemonProvider call(int pokemonId) =>
      IsFavoritePokemonProvider._(argument: pokemonId, from: this);

  @override
  String toString() => r'isFavoritePokemonProvider';
}
