// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'uselessfacts_providers.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$randomUselessfactHash() => r'7bb41bf09467d5bf181de8a0d15516f38bd28680';

/// See also [randomUselessfact].
@ProviderFor(randomUselessfact)
final randomUselessfactProvider = FutureProvider<Uselessfact>.internal(
  randomUselessfact,
  name: r'randomUselessfactProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$randomUselessfactHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef RandomUselessfactRef = FutureProviderRef<Uselessfact>;
String _$savedUselessfactsHash() => r'0ea0de3530c6ee0805591e4b88c4e851727f6398';

/// See also [SavedUselessfacts].
@ProviderFor(SavedUselessfacts)
final savedUselessfactsProvider =
    StreamNotifierProvider<SavedUselessfacts, List<Uselessfact>>.internal(
  SavedUselessfacts.new,
  name: r'savedUselessfactsProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$savedUselessfactsHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$SavedUselessfacts = StreamNotifier<List<Uselessfact>>;
String _$isRandomUselessfactSavedHash() =>
    r'eb74df3ae912eba03a2c54453aa56b915eafa022';

/// See also [IsRandomUselessfactSaved].
@ProviderFor(IsRandomUselessfactSaved)
final isRandomUselessfactSavedProvider =
    AsyncNotifierProvider<IsRandomUselessfactSaved, bool>.internal(
  IsRandomUselessfactSaved.new,
  name: r'isRandomUselessfactSavedProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$isRandomUselessfactSavedHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$IsRandomUselessfactSaved = AsyncNotifier<bool>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
