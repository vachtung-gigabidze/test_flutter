import 'package:flutter/material.dart';
import 'package:test_flutter/features/categories/models/category.dart';
import 'package:test_flutter/features/categories/widgets/category_card.dart';
import 'package:test_flutter/features/common/constants/app_sizes.dart';
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
    return Padding(
      padding: const EdgeInsets.only(left: 16.0, right: 16.0, top: 8),
      child: RefreshIndicator(
        onRefresh: refreshPlaces,
        child: ListView.separated(
          separatorBuilder: (context, index) => AppSizes.sizedBoxH8,
          itemBuilder: (_, index) => CategoryCard(
            category: data[index],
            goCategoryDetails: goCategoryDetails,
          ),
          itemCount: data.length,
        ),
      ),
    );
  }
}
