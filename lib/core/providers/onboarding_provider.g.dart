// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'onboarding_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(hasSeenOnboarding)
const hasSeenOnboardingProvider = HasSeenOnboardingProvider._();

final class HasSeenOnboardingProvider extends $FunctionalProvider<AsyncValue<bool>, bool, FutureOr<bool>>
    with $FutureModifier<bool>, $FutureProvider<bool> {
  const HasSeenOnboardingProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'hasSeenOnboardingProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$hasSeenOnboardingHash();

  @$internal
  @override
  $FutureProviderElement<bool> $createElement($ProviderPointer pointer) => $FutureProviderElement(pointer);

  @override
  FutureOr<bool> create(Ref ref) {
    return hasSeenOnboarding(ref);
  }
}

String _$hasSeenOnboardingHash() => r'a77fcdefee329b7c40e19346cf5de8a678a20e7b';
