// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dishes_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$dishesHash() => r'e3afd8ffed6ad10111b2c251784bc1387e8ecf65';

/// See also [dishes].
@ProviderFor(dishes)
final dishesProvider = AutoDisposeFutureProvider<DishesDto>.internal(
  dishes,
  name: r'dishesProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$dishesHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef DishesRef = AutoDisposeFutureProviderRef<DishesDto>;
String _$tagHash() => r'8b9bfe298b2c3e890a53f7fe578c63108eaf26c8';

/// See also [Tag].
@ProviderFor(Tag)
final tagProvider = AutoDisposeNotifierProvider<Tag, String>.internal(
  Tag.new,
  name: r'tagProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$tagHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$Tag = AutoDisposeNotifier<String>;
// ignore_for_file: unnecessary_raw_strings, subtype_of_sealed_class, invalid_use_of_internal_member, do_not_use_environment, prefer_const_constructors, public_member_api_docs, avoid_private_typedef_functions
