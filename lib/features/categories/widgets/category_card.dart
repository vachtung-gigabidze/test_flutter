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
    return AspectRatio(
      aspectRatio: 3 / 1.8,
      child: Material(
        borderRadius: BorderRadius.circular(AppSizes.radiusCard),
        clipBehavior: Clip.antiAlias,
        color: Theme.of(context).cardColor,
        child: Stack(
          children: [
            Row(
              children: [
                Expanded(
                  child: SizedBox.expand(
                    child: DecoratedBox(
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage(category.imageUrl ?? ""),
                          fit: BoxFit.contain,
                        ),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: _CategoryCardContent(
                    category: category,
                  ),
                ),
              ],
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
      ),
    );
  }
}

class _CategoryCardContent extends StatelessWidget {
  final Category category;

  const _CategoryCardContent({
    Key? key,
    required this.category,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            category.name ?? "",
            style: theme.textTheme.headline6,
          ),
        ],
      ),
    );
  }
}
