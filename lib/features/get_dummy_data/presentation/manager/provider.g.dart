// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$getItemHash() => r'6abd3efc83be607bde18aad70218b242f85fc01e';

/// Copied from Dart SDK
class _SystemHash {
  _SystemHash._();

  static int combine(int hash, int value) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + value);
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x0007ffff & hash) << 10));
    return hash ^ (hash >> 6);
  }

  static int finish(int hash) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x03ffffff & hash) << 3));
    // ignore: parameter_assignments
    hash = hash ^ (hash >> 11);
    return 0x1fffffff & (hash + ((0x00003fff & hash) << 15));
  }
}

/// See also [getItem].
@ProviderFor(getItem)
const getItemProvider = GetItemFamily();

/// See also [getItem].
class GetItemFamily extends Family<AsyncValue<Either<String, Item>>> {
  /// See also [getItem].
  const GetItemFamily();

  /// See also [getItem].
  GetItemProvider call(
    int id,
  ) {
    return GetItemProvider(
      id,
    );
  }

  @override
  GetItemProvider getProviderOverride(
    covariant GetItemProvider provider,
  ) {
    return call(
      provider.id,
    );
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'getItemProvider';
}

/// See also [getItem].
class GetItemProvider extends AutoDisposeFutureProvider<Either<String, Item>> {
  /// See also [getItem].
  GetItemProvider(
    int id,
  ) : this._internal(
          (ref) => getItem(
            ref as GetItemRef,
            id,
          ),
          from: getItemProvider,
          name: r'getItemProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$getItemHash,
          dependencies: GetItemFamily._dependencies,
          allTransitiveDependencies: GetItemFamily._allTransitiveDependencies,
          id: id,
        );

  GetItemProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.id,
  }) : super.internal();

  final int id;

  @override
  Override overrideWith(
    FutureOr<Either<String, Item>> Function(GetItemRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: GetItemProvider._internal(
        (ref) => create(ref as GetItemRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        id: id,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<Either<String, Item>> createElement() {
    return _GetItemProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is GetItemProvider && other.id == id;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, id.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin GetItemRef on AutoDisposeFutureProviderRef<Either<String, Item>> {
  /// The parameter `id` of this provider.
  int get id;
}

class _GetItemProviderElement
    extends AutoDisposeFutureProviderElement<Either<String, Item>>
    with GetItemRef {
  _GetItemProviderElement(super.provider);

  @override
  int get id => (origin as GetItemProvider).id;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
