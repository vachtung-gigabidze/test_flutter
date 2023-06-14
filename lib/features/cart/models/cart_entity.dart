import 'package:json_annotation/json_annotation.dart';
import 'package:test_flutter/features/category/models/dishes_entities.dart';

part 'cart_entity.g.dart';

@JsonSerializable()
class CartDto {
  List<CartItemDto>? cartItems;

  CartDto({this.cartItems});

  factory CartDto.fromJson(Map<String, dynamic> json) =>
      _$CartDtoFromJson(json);

  Map<String, dynamic> toJson() => _$CartDtoToJson(this);
}

@JsonSerializable()
class CartItemDto {
  DishDto? dish;
  int? qty;

  CartItemDto({
    required this.dish,
    required this.qty,
  });

  factory CartItemDto.fromJson(Map<String, dynamic> json) =>
      _$CartItemDtoFromJson(json);

  Map<String, dynamic> toJson() => _$CartItemDtoToJson(this);
}
