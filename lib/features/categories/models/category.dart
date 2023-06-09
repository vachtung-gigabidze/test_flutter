import 'package:json_annotation/json_annotation.dart';

part 'category.g.dart';

@JsonSerializable()
class Categories {
  Categories({this.categories});

  factory Categories.fromJson(Map<String, dynamic> json) =>
      _$CategoriesFromJson(json);

  List<Category>? categories;

  Map<String, dynamic> toJson() => _$CategoriesToJson(this);
}

@JsonSerializable()
class Category {
  Category({this.id, this.name, this.imageUrl});

  factory Category.fromJson(Map<String, dynamic> json) =>
      _$CategoryFromJson(json);

  int? id;
  String? name;
  String? imageUrl;

  Map<String, dynamic> toJson() => _$CategoryToJson(this);
}
