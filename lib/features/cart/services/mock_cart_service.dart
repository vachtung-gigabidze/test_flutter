import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:test_flutter/features/cart/models/cart_entity.dart';

class MockCartService {
  Future<CartDto> getCart() async {
    final dm = await dmap();

    return CartDto.fromJson(dm);
  }

  Future<Map<String, dynamic>> dmap() async {
    return rootBundle
        .loadString('assets/json/cart.json')
        .then((value) => jsonDecode(value));
  }
}
