import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:test_flutter/features/category/models/dishes_entities.dart';
import 'package:test_flutter/features/category/services/mock_dishes_service.dart';

part 'dishes_provider.g.dart';

@riverpod
Future<DishesDto> dishes(DishesRef ref) async {
  final dishesService = MockDishesService();
  return dishesService.getDishes();
}
