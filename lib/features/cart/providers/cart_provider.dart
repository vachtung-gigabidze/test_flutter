import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:test_flutter/features/cart/models/cart_entity.dart';
import 'package:test_flutter/features/cart/services/mock_cart_service.dart';
import 'package:test_flutter/features/category/models/dishes_entities.dart';

class CartRepository extends Notifier<Map<String, CartItemDto>> {
  @override
  Map<String, CartItemDto> build() {
    return {};
  }

  void initFromCart() async {
    final CartDto cart = await MockCartService().getCart();

    cart.cartItems
        ?.map((e) => addItem(dish: e.dish!, dishName: e.dish?.name ?? ""));
  }

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
}

final cartRepositoryProvider =
    NotifierProvider<CartRepository, Map<String, CartItemDto>>(
        CartRepository.new);
