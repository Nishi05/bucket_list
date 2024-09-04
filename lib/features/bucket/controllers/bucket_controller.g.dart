// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'bucket_controller.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$getBucketHash() => r'1406648fed11345e5ea0a1a6a27733d5a07440dd';

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

/// See also [getBucket].
@ProviderFor(getBucket)
const getBucketProvider = GetBucketFamily();

/// See also [getBucket].
class GetBucketFamily extends Family<Bucket?> {
  /// See also [getBucket].
  const GetBucketFamily();

  /// See also [getBucket].
  GetBucketProvider call(
    int id,
  ) {
    return GetBucketProvider(
      id,
    );
  }

  @override
  GetBucketProvider getProviderOverride(
    covariant GetBucketProvider provider,
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
  String? get name => r'getBucketProvider';
}

/// See also [getBucket].
class GetBucketProvider extends AutoDisposeProvider<Bucket?> {
  /// See also [getBucket].
  GetBucketProvider(
    int id,
  ) : this._internal(
          (ref) => getBucket(
            ref as GetBucketRef,
            id,
          ),
          from: getBucketProvider,
          name: r'getBucketProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$getBucketHash,
          dependencies: GetBucketFamily._dependencies,
          allTransitiveDependencies: GetBucketFamily._allTransitiveDependencies,
          id: id,
        );

  GetBucketProvider._internal(
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
    Bucket? Function(GetBucketRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: GetBucketProvider._internal(
        (ref) => create(ref as GetBucketRef),
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
  AutoDisposeProviderElement<Bucket?> createElement() {
    return _GetBucketProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is GetBucketProvider && other.id == id;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, id.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin GetBucketRef on AutoDisposeProviderRef<Bucket?> {
  /// The parameter `id` of this provider.
  int get id;
}

class _GetBucketProviderElement extends AutoDisposeProviderElement<Bucket?>
    with GetBucketRef {
  _GetBucketProviderElement(super.provider);

  @override
  int get id => (origin as GetBucketProvider).id;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
