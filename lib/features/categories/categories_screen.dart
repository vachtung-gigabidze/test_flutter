import 'package:flutter/material.dart';
import 'package:test_flutter/features/categories/widgets/categories_builder.dart';

class CategoriesPage extends StatelessWidget {
  const CategoriesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return CategoriesBuilder(
      data: [],
      goCategoryDetails: (value) {},
      refreshPlaces: () async {},
    );
    //const Placeholder();
  }
}
