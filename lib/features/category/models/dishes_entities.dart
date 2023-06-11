import 'package:json_annotation/json_annotation.dart';

part 'dishes_entities.g.dart';

@JsonSerializable()
class DishesDto {
  DishesDto({this.dishes});

  List<DishDto>? dishes;

  factory DishesDto.fromJson(Map<String, dynamic> json) =>
      _$DishesDtoFromJson(json);

  Map<String, dynamic> toJson() => _$DishesDtoToJson(this);

  List<String> allTags() {
    Set<String> allTags = <String>{};
    dishes?.forEach((dish) => allTags.addAll(dish.tags as Iterable<String>));
    return allTags.toList();
  }
}

@JsonSerializable()
class DishDto {
  DishDto(
      {this.id,
      this.name,
      this.price,
      this.weight,
      this.description,
      this.imageUrl,
      this.tags});

  int? id;
  String? name;
  double? price;
  int? weight;
  String? description;
  @JsonKey(name: 'image_url')
  String? imageUrl;
  @JsonKey(name: 'tegs')
  List<String>? tags;

  factory DishDto.fromJson(Map<String, dynamic> json) =>
      _$DishDtoFromJson(json);

  Map<String, dynamic> toJson() => _$DishDtoToJson(this);
}
