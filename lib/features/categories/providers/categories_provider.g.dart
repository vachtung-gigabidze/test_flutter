// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'categories_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$categoriesProviderHash() =>
    r'b0036c95f17274e4ae4adc5a5a803ed73ee055a5';

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

typedef CategoriesProviderRef = AutoDisposeFutureProviderRef<Categories>;

/// See also [categoriesProvider].
@ProviderFor(categoriesProvider)
const categoriesProviderProvider = CategoriesProviderFamily();

/// See also [categoriesProvider].
class CategoriesProviderFamily extends Family<AsyncValue<Categories>> {
  /// See also [categoriesProvider].
  const CategoriesProviderFamily();

  /// See also [categoriesProvider].
  CategoriesProviderProvider call(
    Uri uri,
  ) {
    return CategoriesProviderProvider(
      uri,
    );
  }

  @override
  CategoriesProviderProvider getProviderOverride(
    covariant CategoriesProviderProvider provider,
  ) {
    return call(
      provider.uri,
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
  String? get name => r'categoriesProviderProvider';
}

/// See also [categoriesProvider].
class CategoriesProviderProvider extends AutoDisposeFutureProvider<Categories> {
  /// See also [categoriesProvider].
  CategoriesProviderProvider(
    this.uri,
  ) : super.internal(
          (ref) => categoriesProvider(
            ref,
            uri,
          ),
          from: categoriesProviderProvider,
          name: r'categoriesProviderProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$categoriesProviderHash,
          dependencies: CategoriesProviderFamily._dependencies,
          allTransitiveDependencies:
              CategoriesProviderFamily._allTransitiveDependencies,
        );

  final Uri uri;

  @override
  bool operator ==(Object other) {
    return other is CategoriesProviderProvider && other.uri == uri;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, uri.hashCode);

    return _SystemHash.finish(hash);
  }
}
// ignore_for_file: unnecessary_raw_strings, subtype_of_sealed_class, invalid_use_of_internal_member, do_not_use_environment, prefer_const_constructors, public_member_api_docs, avoid_private_typedef_functions
