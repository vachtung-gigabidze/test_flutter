// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cart_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CartDto _$CartDtoFromJson(Map<String, dynamic> json) => CartDto(
      cartItems: (json['cartItems'] as List<dynamic>?)
          ?.map((e) => CartItemDto.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$CartDtoToJson(CartDto instance) => <String, dynamic>{
      'cartItems': instance.cartItems,
    };

CartItemDto _$CartItemDtoFromJson(Map<String, dynamic> json) => CartItemDto(
      dish: json['dish'] == null
          ? null
          : DishDto.fromJson(json['dish'] as Map<String, dynamic>),
      qty: json['qty'] as int?,
    );

Map<String, dynamic> _$CartItemDtoToJson(CartItemDto instance) =>
    <String, dynamic>{
      'dish': instance.dish,
      'qty': instance.qty,
    };
