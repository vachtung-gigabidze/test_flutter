import 'dart:convert';
import 'package:flutter/services.dart';
import 'package:test_flutter/features/category/models/dishes_entities.dart';

class MockDishesService {
  Future<DishesDto> getDishes() async {
    final dm = await dishes();

    return DishesDto.fromJson(dm);
  }

  Future<Map<String, dynamic>> dishes() async {
    return rootBundle
        .loadString('assets/json/dishes.json')
        .then((value) => jsonDecode(value));
  }
}
