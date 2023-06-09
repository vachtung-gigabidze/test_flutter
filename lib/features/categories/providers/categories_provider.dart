import 'package:http/http.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:test_flutter/features/categories/models/category.dart';

part 'categories_provider.g.dart';

@riverpod
Future<Categories> categoriesProvider(
    CategoriesProviderRef ref, Uri uri) async {
  return Categories();
}
