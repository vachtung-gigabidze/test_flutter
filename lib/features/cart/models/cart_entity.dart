import 'package:test_flutter/features/category/models/dishes_entities.dart';

class Cart {
  List<CartItem>? cartItems;

  Cart({this.cartItems});
}

class CartItem {
  DishDto? dish;
  int? qty;

  CartItem({
    required this.dish,
    required this.qty,
  });
}
