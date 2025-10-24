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

@ProviderFor(sharedPreferences)
const sharedPreferencesProvider = SharedPreferencesProvider._();

final class SharedPreferencesProvider
    extends
        $FunctionalProvider<
          AsyncValue<SharedPreferences>,
          SharedPreferences,
          FutureOr<SharedPreferences>
        >
    with
        $FutureModifier<SharedPreferences>,
        $FutureProvider<SharedPreferences> {
  const SharedPreferencesProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'sharedPreferencesProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$sharedPreferencesHash();

  @$internal
  @override
  $FutureProviderElement<SharedPreferences> $createElement(
    $ProviderPointer pointer,
  ) => $FutureProviderElement(pointer);

  @override
  FutureOr<SharedPreferences> create(Ref ref) {
    return sharedPreferences(ref);
  }
}

String _$sharedPreferencesHash() => r'dc403fbb1d968c7d5ab4ae1721a29ffe173701c7';

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

@ProviderFor(favoritesLocalDataSource)
const favoritesLocalDataSourceProvider = FavoritesLocalDataSourceProvider._();

final class FavoritesLocalDataSourceProvider
    extends
        $FunctionalProvider<
          AsyncValue<FavoritesLocalDataSource>,
          FavoritesLocalDataSource,
          FutureOr<FavoritesLocalDataSource>
        >
    with
        $FutureModifier<FavoritesLocalDataSource>,
        $FutureProvider<FavoritesLocalDataSource> {
  const FavoritesLocalDataSourceProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'favoritesLocalDataSourceProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$favoritesLocalDataSourceHash();

  @$internal
  @override
  $FutureProviderElement<FavoritesLocalDataSource> $createElement(
    $ProviderPointer pointer,
  ) => $FutureProviderElement(pointer);

  @override
  FutureOr<FavoritesLocalDataSource> create(Ref ref) {
    return favoritesLocalDataSource(ref);
  }
}

String _$favoritesLocalDataSourceHash() =>
    r'ba148293a4edc4beb8bb575c4b40cc08e8c7a900';

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

@ProviderFor(favoritesRepository)
const favoritesRepositoryProvider = FavoritesRepositoryProvider._();

final class FavoritesRepositoryProvider
    extends
        $FunctionalProvider<
          AsyncValue<FavoritesRepository>,
          FavoritesRepository,
          FutureOr<FavoritesRepository>
        >
    with
        $FutureModifier<FavoritesRepository>,
        $FutureProvider<FavoritesRepository> {
  const FavoritesRepositoryProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'favoritesRepositoryProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$favoritesRepositoryHash();

  @$internal
  @override
  $FutureProviderElement<FavoritesRepository> $createElement(
    $ProviderPointer pointer,
  ) => $FutureProviderElement(pointer);

  @override
  FutureOr<FavoritesRepository> create(Ref ref) {
    return favoritesRepository(ref);
  }
}

String _$favoritesRepositoryHash() =>
    r'36a90d93f49d247e49bb8527e2f4db59e9320ef0';

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

@ProviderFor(addFavoriteUseCase)
const addFavoriteUseCaseProvider = AddFavoriteUseCaseProvider._();

final class AddFavoriteUseCaseProvider
    extends
        $FunctionalProvider<
          AsyncValue<AddFavoriteUseCase>,
          AddFavoriteUseCase,
          FutureOr<AddFavoriteUseCase>
        >
    with
        $FutureModifier<AddFavoriteUseCase>,
        $FutureProvider<AddFavoriteUseCase> {
  const AddFavoriteUseCaseProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'addFavoriteUseCaseProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$addFavoriteUseCaseHash();

  @$internal
  @override
  $FutureProviderElement<AddFavoriteUseCase> $createElement(
    $ProviderPointer pointer,
  ) => $FutureProviderElement(pointer);

  @override
  FutureOr<AddFavoriteUseCase> create(Ref ref) {
    return addFavoriteUseCase(ref);
  }
}

String _$addFavoriteUseCaseHash() =>
    r'e073cd400230f9fac3b75e73397562b6cb296ffb';

@ProviderFor(removeFavoriteUseCase)
const removeFavoriteUseCaseProvider = RemoveFavoriteUseCaseProvider._();

final class RemoveFavoriteUseCaseProvider
    extends
        $FunctionalProvider<
          AsyncValue<RemoveFavoriteUseCase>,
          RemoveFavoriteUseCase,
          FutureOr<RemoveFavoriteUseCase>
        >
    with
        $FutureModifier<RemoveFavoriteUseCase>,
        $FutureProvider<RemoveFavoriteUseCase> {
  const RemoveFavoriteUseCaseProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'removeFavoriteUseCaseProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$removeFavoriteUseCaseHash();

  @$internal
  @override
  $FutureProviderElement<RemoveFavoriteUseCase> $createElement(
    $ProviderPointer pointer,
  ) => $FutureProviderElement(pointer);

  @override
  FutureOr<RemoveFavoriteUseCase> create(Ref ref) {
    return removeFavoriteUseCase(ref);
  }
}

String _$removeFavoriteUseCaseHash() =>
    r'2e8a81822a17a0aca5e1d4a7afbb20940c132bdf';

@ProviderFor(getFavoritesUseCase)
const getFavoritesUseCaseProvider = GetFavoritesUseCaseProvider._();

final class GetFavoritesUseCaseProvider
    extends
        $FunctionalProvider<
          AsyncValue<GetFavoritesUseCase>,
          GetFavoritesUseCase,
          FutureOr<GetFavoritesUseCase>
        >
    with
        $FutureModifier<GetFavoritesUseCase>,
        $FutureProvider<GetFavoritesUseCase> {
  const GetFavoritesUseCaseProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'getFavoritesUseCaseProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$getFavoritesUseCaseHash();

  @$internal
  @override
  $FutureProviderElement<GetFavoritesUseCase> $createElement(
    $ProviderPointer pointer,
  ) => $FutureProviderElement(pointer);

  @override
  FutureOr<GetFavoritesUseCase> create(Ref ref) {
    return getFavoritesUseCase(ref);
  }
}

String _$getFavoritesUseCaseHash() =>
    r'b3f77a13e9c9ae8fa5c8f0f8e6216c219bf8ae21';

@ProviderFor(isFavoritePokemonUseCase)
const isFavoritePokemonUseCaseProvider = IsFavoritePokemonUseCaseProvider._();

final class IsFavoritePokemonUseCaseProvider
    extends
        $FunctionalProvider<
          AsyncValue<IsFavoritePokemonUseCase>,
          IsFavoritePokemonUseCase,
          FutureOr<IsFavoritePokemonUseCase>
        >
    with
        $FutureModifier<IsFavoritePokemonUseCase>,
        $FutureProvider<IsFavoritePokemonUseCase> {
  const IsFavoritePokemonUseCaseProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'isFavoritePokemonUseCaseProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$isFavoritePokemonUseCaseHash();

  @$internal
  @override
  $FutureProviderElement<IsFavoritePokemonUseCase> $createElement(
    $ProviderPointer pointer,
  ) => $FutureProviderElement(pointer);

  @override
  FutureOr<IsFavoritePokemonUseCase> create(Ref ref) {
    return isFavoritePokemonUseCase(ref);
  }
}

String _$isFavoritePokemonUseCaseHash() =>
    r'411bd29721d46fc8b536dbbe2f441f501f9692aa';

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

String _$pokemonDetailHash() => r'2beb9a61a227e68a9931af8a63d3db08f0a743c2';

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

@ProviderFor(SelectedPokemonNotifier)
const selectedPokemonProvider = SelectedPokemonNotifierProvider._();

final class SelectedPokemonNotifierProvider
    extends $NotifierProvider<SelectedPokemonNotifier, PokemonDetail?> {
  const SelectedPokemonNotifierProvider._()
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
  String debugGetCreateSourceHash() => _$selectedPokemonNotifierHash();

  @$internal
  @override
  SelectedPokemonNotifier create() => SelectedPokemonNotifier();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(PokemonDetail? value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<PokemonDetail?>(value),
    );
  }
}

String _$selectedPokemonNotifierHash() =>
    r'e66b61e49457237e2690524352ed9ee1e546fddf';

abstract class _$SelectedPokemonNotifier extends $Notifier<PokemonDetail?> {
  PokemonDetail? build();
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build();
    final ref = this.ref as $Ref<PokemonDetail?, PokemonDetail?>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<PokemonDetail?, PokemonDetail?>,
              PokemonDetail?,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}

@ProviderFor(favorites)
const favoritesProvider = FavoritesProvider._();

final class FavoritesProvider
    extends
        $FunctionalProvider<
          AsyncValue<List<Favorite>>,
          List<Favorite>,
          FutureOr<List<Favorite>>
        >
    with $FutureModifier<List<Favorite>>, $FutureProvider<List<Favorite>> {
  const FavoritesProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'favoritesProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$favoritesHash();

  @$internal
  @override
  $FutureProviderElement<List<Favorite>> $createElement(
    $ProviderPointer pointer,
  ) => $FutureProviderElement(pointer);

  @override
  FutureOr<List<Favorite>> create(Ref ref) {
    return favorites(ref);
  }
}

String _$favoritesHash() => r'f7b20dc725f018bf750b34adaf1243e87382f2f4';

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

String _$isFavoritePokemonHash() => r'7f80b2cf16a2cb7a69ae94ab3a283d6df2a603fe';

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
