import 'package:flutter/material.dart';
import 'package:test_flutter/features/categories/models/category.dart';
import 'package:test_flutter/features/categories/widgets/category_card.dart';
import 'package:test_flutter/utils/typedefs.dart';

class CategoriesBuilder extends StatelessWidget {
  final List<Category> data;
  final FutureVoidCallback refreshPlaces;
  final ValueChanged<Category> goCategoryDetails;

  const CategoriesBuilder({
    Key? key,
    required this.data,
    required this.refreshPlaces,
    required this.goCategoryDetails,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RefreshIndicator(
      onRefresh: refreshPlaces,
      child: ListView.builder(
        itemBuilder: (_, index) => Padding(
          padding: const EdgeInsets.all(8),
          child: CategoryCard(
            category: data[index],
            goCategoryDetails: goCategoryDetails,
          ),
        ),
        itemCount: data.length,
      ),
    );
  }
}
