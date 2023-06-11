import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:test_flutter/features/categories/models/category.dart';
import 'package:test_flutter/features/category/providers/dishes_provider.dart';
import 'package:test_flutter/features/category/widgets/dish.dart';
import 'package:test_flutter/features/category/widgets/tag.dart';
import 'package:test_flutter/features/platform/widgets/material_widgets.dart';

class CategoryScreen extends ConsumerWidget {
  const CategoryScreen({required this.category, super.key});

  final Category category;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final dishes = ref.watch(dishesProvider.future);

    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: SafeArea(
        child: FutureBuilder(
            future: dishes,
            builder: (context, snapshot) {
              if (snapshot.connectionState == ConnectionState.done) {
                // allTags
                if (snapshot.hasData) {
                  final allTags = snapshot.data?.allTags();
                  return Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 35,
                        child: ListView.separated(
                            itemCount: allTags?.length ?? 0,
                            // padding: const EdgeInsets.all(8),
                            shrinkWrap: true,
                            separatorBuilder:
                                (BuildContext context, int index) =>
                                    const SizedBox(
                                      width: 8,
                                    ),
                            scrollDirection: Axis.horizontal,
                            itemBuilder: (context, index) {
                              return Tag(
                                  tag: allTags![index], active: index == 0);
                            }),
                      ),
                      const SizedBox(
                        height: 16,
                      ),
                      Expanded(
                        child: GridView.count(
                          crossAxisCount: 3,
                          children: [
                            for (final dish in snapshot.data!.dishes!)
                              Dish(dish: dish)
                          ],
                        ),
                      )
                    ],
                  );
                } else {
                  return const Text("No data");
                }
              } else {
                return const MaterialLoader();
              }
            }),
      ),
    );
  }
}
