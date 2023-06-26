import 'package:hooks_riverpod/hooks_riverpod.dart';
// import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:test_flutter/features/cart/providers/cart_repository.dart';

// part 'cart_provider.g.dart';

final cartProvider =
    StateNotifierProvider<CartRepositoryNotifier, CartRepository>((ref) {
  return CartRepositoryNotifier();
});
// @Riverpod(keepAlive: true)
// final cartProvider = StateProvider<CartRepository>(
//   // We return the default sort type, here name.
//   (ref) => CartRepository(),
// );

//     StateNotifierProvider<CartRepository, Map<String, CartItemDto>>((ref) {
//   return CartRepository();
// }, name: 'cart');
// @Riverpod(keepAlive: true)
// class Cart extends _$Cart {
//   @override
//   CartRepository build() => CartRepository();

//   // void increment() => state++;
// }
