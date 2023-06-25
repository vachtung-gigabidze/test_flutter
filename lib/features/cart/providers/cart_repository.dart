import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:test_flutter/features/cart/models/cart_entity.dart';
// import 'package:test_flutter/features/cart/services/mock_cart_service.dart';
import 'package:test_flutter/features/category/models/dishes_entities.dart';

class CartRepository {
  final Map<String, CartItemDto> cart;

  CartRepository(this.cart);
}

class CartRepositoryNotifier extends StateNotifier<CartRepository> {
  CartRepositoryNotifier(super.state);

  void addItem({required DishDto dish, required String dishName}) {
    if (state.containsKey(dishName)) {
      state.update(dishName,
          (value) => CartItemDto(dish: value.dish, qty: value.qty! + 1));
    }
    if (!state.containsKey(dishName)) {
      state.putIfAbsent(
        dishName,
        () => CartItemDto(dish: dish, qty: 1),
      );
    }
  }

  void removeItem(String dishName) {
    if (state.containsKey(dishName)) {
      state.update(dishName,
          (value) => CartItemDto(dish: value.dish, qty: value.qty! - 1));
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

  double? cost() =>
      state.values.fold(.0, (t, e) => t! + (e.dish!.price! * e.qty!));
}
