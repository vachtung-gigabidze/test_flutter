// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'package:test_flutter/features/cart/models/cart_entity.dart';
import 'package:test_flutter/features/category/models/dishes_entities.dart';

@immutable
class CartRepository {
  final Map<String, CartItemDto> cart;

  const CartRepository(
    this.cart,
  );

  CartRepository copyWith({
    Map<String, CartItemDto>? cart,
  }) {
    return CartRepository(
      cart ?? this.cart,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cart': cart,
    };
  }

  factory CartRepository.fromMap(Map<String, dynamic> map) {
    return CartRepository(Map<String, CartItemDto>.from(
      (map['cart'] as Map<String, CartItemDto>),
    ));
  }

  String toJson() => json.encode(toMap());

  factory CartRepository.fromJson(String source) =>
      CartRepository.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() => 'CartRepository(cart: $cart)';

  @override
  bool operator ==(covariant CartRepository other) {
    if (identical(this, other)) return true;

    return mapEquals(other.cart, cart);
  }

  @override
  int get hashCode => cart.hashCode;

  double? cost() =>
      cart.values.fold(.0, (t, e) => t! + (e.dish!.price! * e.qty!));
}

class CartRepositoryNotifier extends StateNotifier<CartRepository> {
  CartRepositoryNotifier() : super(const CartRepository({}));

  void addItem({required DishDto dish, required String dishName}) {
    if (state.cart.containsKey(dishName)) {
      final newState = Map<String, CartItemDto>.from(state.cart)
        ..update(dishName,
            (value) => CartItemDto(dish: value.dish, qty: value.qty! + 1));
      state = state.copyWith(cart: {...newState});
    }
    if (!state.cart.containsKey(dishName)) {
      state = state.copyWith(
          cart: Map<String, CartItemDto>.from(state.cart)
            ..putIfAbsent(
              dishName,
              () => CartItemDto(dish: dish, qty: 1),
            ));
    }
  }

  void removeItem(String dishName) {
    state = state.copyWith(
        cart: Map<String, CartItemDto>.from(state.cart)
          ..removeWhere((key, value) => key == dishName && value.qty == 1));

    if (state.cart.containsKey(dishName)) {
      state = state.copyWith(
          cart: Map<String, CartItemDto>.from(state.cart)
            ..update(dishName,
                (value) => CartItemDto(dish: value.dish, qty: value.qty! - 1)));
    }
  }

  void clearCart() {
    state.cart.clear();
  }

  getCartItem<String>(dishName) {
    if (state.cart.containsKey(dishName)) {
      int quantity = state.cart[dishName]!.qty ?? 0;
      return quantity;
    }
  }
}
