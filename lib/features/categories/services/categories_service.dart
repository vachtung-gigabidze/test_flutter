import 'package:retrofit/retrofit.dart';
import 'package:dio/dio.dart';
import 'package:test_flutter/features/categories/models/category.dart';

part 'categories_service.g.dart';

@RestApi(baseUrl: 'https://run.mocky.io')
abstract class CategoriesService {
  factory CategoriesService(Dio dio, {String baseUrl}) = _CategoriesService;

  @GET('/v3/058729bd-1402-4578-88de-265481fd7d54')
  Future<Categories> getCategories();
}
