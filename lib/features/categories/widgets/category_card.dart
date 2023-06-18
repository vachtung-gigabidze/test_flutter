import 'package:flutter/material.dart';
import 'package:test_flutter/features/categories/models/category.dart';
import 'package:test_flutter/features/common/constants/app_sizes.dart';

class CategoryCard extends StatelessWidget {
  final Category category;
  final ValueChanged<Category> goCategoryDetails;

  const CategoryCard({
    Key? key,
    required this.category,
    required this.goCategoryDetails,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      borderRadius: BorderRadius.circular(AppSizes.radiusCard),
      clipBehavior: Clip.antiAlias,
      color: Theme.of(context).cardColor,
      child: Stack(
        children: [
          Image.network(
            category.imageUrl ?? "",
            errorBuilder: (BuildContext context, Object exception,
                StackTrace? stackTrace) {
              return const Placeholder();
            },
            fit: BoxFit.contain,
          ),
          Positioned(
            left: 16,
            top: 12,
            child: SizedBox(
              width: 174,
              height: 50,
              child: Text(
                category.name ?? "",
                style: const TextStyle(
                  fontFamily: 'SF Pro Display',
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                  height: 1.25,
                  letterSpacing: 0.2,
                  // color: Color(0xff000000),
                ),
              ),
            ),
          ),
          Positioned.fill(
            child: Material(
              type: MaterialType.transparency,
              child: InkWell(
                highlightColor: Colors.transparent,
                onTap: () => goCategoryDetails(category),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
