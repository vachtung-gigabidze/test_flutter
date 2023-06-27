import 'package:dio/dio.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:test_flutter/features/category/models/dishes_entities.dart';
import 'package:test_flutter/features/category/services/dishes_service.dart';
import 'package:test_flutter/features/category/services/mock_dishes_service.dart';

part 'dishes_provider.g.dart';

@riverpod
Future<DishesDto> dishes(DishesRef ref) async {
  final dishesService =
      DishesService(Dio(BaseOptions(contentType: "application/json")));
  // MockDishesService();
  return dishesService.getDishes();
}

@riverpod
class Tag extends _$Tag {
  @override
  String build() => "Все меню";

  void setTag(String tag) => state = tag;
}
