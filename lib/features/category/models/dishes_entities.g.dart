// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dishes_entities.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DishesDto _$DishesDtoFromJson(Map<String, dynamic> json) => DishesDto(
      dishes: (json['dishes'] as List<dynamic>?)
          ?.map((e) => DishDto.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$DishesDtoToJson(DishesDto instance) => <String, dynamic>{
      'dishes': instance.dishes,
    };

DishDto _$DishDtoFromJson(Map<String, dynamic> json) => DishDto(
      id: json['id'] as int?,
      name: json['name'] as String?,
      price: (json['price'] as num?)?.toDouble(),
      weight: json['weight'] as int?,
      description: json['description'] as String?,
      imageUrl: json['image_url'] as String?,
      tags: (json['tegs'] as List<dynamic>?)?.map((e) => e as String).toList(),
    );

Map<String, dynamic> _$DishDtoToJson(DishDto instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'price': instance.price,
      'weight': instance.weight,
      'description': instance.description,
      'image_url': instance.imageUrl,
      'tegs': instance.tags,
    };
