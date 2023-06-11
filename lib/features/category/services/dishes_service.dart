import 'package:retrofit/retrofit.dart';
import 'package:dio/dio.dart';
import 'package:test_flutter/features/category/models/dishes_entities.dart';

part 'dishes_service.g.dart';

@RestApi(baseUrl: 'https://run.mocky.io')
abstract class DishesService {
  factory DishesService(Dio dio, {String baseUrl}) = _DishesService;

  @GET('/v3/aba7ecaa-0a70-453b-b62d-0e326c859b3b')
  Future<DishesDto> getDishes();
}
