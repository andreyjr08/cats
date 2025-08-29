// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cat_state_notifier.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$breedsHash() => r'a7b9b4020af8c8f880c120cda7ea1baa2384a8c3';

/// See also [breeds].
@ProviderFor(breeds)
final breedsProvider = FutureProvider<List<BreedsEntity>>.internal(
  breeds,
  name: r'breedsProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$breedsHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
typedef BreedsRef = FutureProviderRef<List<BreedsEntity>>;
String _$breedDetailHash() => r'e7f67fa13b8584499a8fbcec0146d0277c7f9903';

/// See also [breedDetail].
@ProviderFor(breedDetail)
final breedDetailProvider = FutureProvider<BreedsEntity>.internal(
  breedDetail,
  name: r'breedDetailProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$breedDetailHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
typedef BreedDetailRef = FutureProviderRef<BreedsEntity>;
String _$getBreedImageHash() => r'9eda3a6e6d6275ce2c233412ff29c099e77d6a3c';

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

/// See also [getBreedImage].
@ProviderFor(getBreedImage)
const getBreedImageProvider = GetBreedImageFamily();

/// See also [getBreedImage].
class GetBreedImageFamily extends Family<AsyncValue<BreedImageEntity>> {
  /// See also [getBreedImage].
  const GetBreedImageFamily();

  /// See also [getBreedImage].
  GetBreedImageProvider call(String imageId) {
    return GetBreedImageProvider(imageId);
  }

  @override
  GetBreedImageProvider getProviderOverride(
    covariant GetBreedImageProvider provider,
  ) {
    return call(provider.imageId);
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'getBreedImageProvider';
}

/// See also [getBreedImage].
class GetBreedImageProvider extends FutureProvider<BreedImageEntity> {
  /// See also [getBreedImage].
  GetBreedImageProvider(String imageId)
    : this._internal(
        (ref) => getBreedImage(ref as GetBreedImageRef, imageId),
        from: getBreedImageProvider,
        name: r'getBreedImageProvider',
        debugGetCreateSourceHash:
            const bool.fromEnvironment('dart.vm.product')
                ? null
                : _$getBreedImageHash,
        dependencies: GetBreedImageFamily._dependencies,
        allTransitiveDependencies:
            GetBreedImageFamily._allTransitiveDependencies,
        imageId: imageId,
      );

  GetBreedImageProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.imageId,
  }) : super.internal();

  final String imageId;

  @override
  Override overrideWith(
    FutureOr<BreedImageEntity> Function(GetBreedImageRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: GetBreedImageProvider._internal(
        (ref) => create(ref as GetBreedImageRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        imageId: imageId,
      ),
    );
  }

  @override
  FutureProviderElement<BreedImageEntity> createElement() {
    return _GetBreedImageProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is GetBreedImageProvider && other.imageId == imageId;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, imageId.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin GetBreedImageRef on FutureProviderRef<BreedImageEntity> {
  /// The parameter `imageId` of this provider.
  String get imageId;
}

class _GetBreedImageProviderElement
    extends FutureProviderElement<BreedImageEntity>
    with GetBreedImageRef {
  _GetBreedImageProviderElement(super.provider);

  @override
  String get imageId => (origin as GetBreedImageProvider).imageId;
}

String _$breedIdSelectedHash() => r'b45eb46821f8db8e2a71f18853591ba012f4b2d6';

/// See also [BreedIdSelected].
@ProviderFor(BreedIdSelected)
final breedIdSelectedProvider =
    NotifierProvider<BreedIdSelected, String>.internal(
      BreedIdSelected.new,
      name: r'breedIdSelectedProvider',
      debugGetCreateSourceHash:
          const bool.fromEnvironment('dart.vm.product')
              ? null
              : _$breedIdSelectedHash,
      dependencies: null,
      allTransitiveDependencies: null,
    );

typedef _$BreedIdSelected = Notifier<String>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
