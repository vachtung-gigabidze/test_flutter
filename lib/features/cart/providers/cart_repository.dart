import 'package:test_flutter/features/cart/models/cart_entity.dart';
// import 'package:test_flutter/features/cart/services/mock_cart_service.dart';
import 'package:test_flutter/features/category/models/dishes_entities.dart';

class CartRepository {
  CartRepository() {
    state = {};
  }

  late Map<String, CartItemDto> state;

  // @override
  // Map<String, CartItemDto> build() {
  //   return {};
  // }

  // void initFromCart() async {
  //   final CartDto cart = await MockCartService().getCart();

  //   cart.cartItems
  //       ?.map((e) => addItem(dish: e.dish!, dishName: e.dish?.name ?? ""));
  // }

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

  // double cost() {
  //   double? r = state.values
  //       .fold(.0, (t, e) => t ?? .0 + (e.dish?.price ?? .0 * e.qty!));
  //   return r ?? .0;
  // }
}
