import 'package:dio/dio.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:test_flutter/features/categories/models/category.dart';
import 'package:test_flutter/features/categories/services/categories_service.dart';

part 'categories_provider.g.dart';

@riverpod
Future<Categories> categories(CategoriesRef ref) async {
  final categoriesService =
      CategoriesService(Dio(BaseOptions(contentType: "application/json")));
  return categoriesService.getCategories();
}
