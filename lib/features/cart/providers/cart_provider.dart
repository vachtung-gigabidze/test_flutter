import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:test_flutter/features/cart/models/cart_entity.dart';
import 'package:test_flutter/features/category/models/dishes_entities.dart';

class CartRepository extends Notifier<Map<String, CartItem>> {
  @override
  Map<String, CartItem> build() {
    return {};
  }

  void addItem({required DishDto dish, required String dishName}) {
    if (state.containsKey(dishName)) {
      state.update(
          dishName, (value) => CartItem(dish: value.dish, qty: value.qty! + 1));
    }
    if (!state.containsKey(dishName)) {
      state.putIfAbsent(
        dishName,
        () => CartItem(dish: dish, qty: 0),
      );
    }
  }

  void removeItem(String dishName) {
    if (state.containsKey(dishName)) {
      state.update(
          dishName, (value) => CartItem(dish: value.dish, qty: value.qty! - 1));
    }
  }

  void clearCart() {
    state.clear();
  }

  getCartItem<String>(dishName) {
    if (state.containsKey(dishName)) {
      int quantity = state[dishName]!.qty ?? 0;
      return quantity;
    }
  }
}

final cartRepositoryProvider =
    NotifierProvider<CartRepository, Map<String, CartItem>>(CartRepository.new);
