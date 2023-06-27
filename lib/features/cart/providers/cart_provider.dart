import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:test_flutter/features/cart/providers/cart_repository.dart';

final cartProvider =
    StateNotifierProvider<CartRepositoryNotifier, CartRepository>((ref) {
  return CartRepositoryNotifier();
});
