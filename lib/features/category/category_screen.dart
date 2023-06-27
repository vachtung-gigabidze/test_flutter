import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:test_flutter/features/categories/models/category.dart';
import 'package:test_flutter/features/category/providers/dishes_provider.dart';
import 'package:test_flutter/features/category/widgets/dish.dart';
import 'package:test_flutter/features/category/widgets/tag.dart';
import 'package:test_flutter/features/common/constants/app_sizes.dart';
import 'package:test_flutter/features/common/widgets/loader/material_loader.dart';

class CategoryScreen extends ConsumerWidget {
  const CategoryScreen({required this.category, super.key});

  final Category category;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final dishes = ref.watch(dishesProvider.future);
    final tag = ref.watch(tagProvider);
    return Padding(
      padding: const EdgeInsets.fromLTRB(16, 8, 16, 0),
      child: SafeArea(
        child: FutureBuilder(
            future: dishes,
            builder: (context, snapshot) {
              if (snapshot.connectionState == ConnectionState.done) {
                if (snapshot.hasData) {
                  final allTags = snapshot.data?.allTags();
                  return Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 35,
                        child: ListView.separated(
                            itemCount: allTags?.length ?? 0,
                            shrinkWrap: true,
                            separatorBuilder:
                                (BuildContext context, int index) =>
                                    AppSizes.sizedBoxW8,
                            scrollDirection: Axis.horizontal,
                            itemBuilder: (context, index) {
                              return TagButton(
                                  tag: allTags![index],
                                  active: tag == allTags[index]);
                            }),
                      ),
                      AppSizes.sizedBoxH16,
                      Expanded(
                        child: GridView.builder(
                          gridDelegate:
                              const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 3,
                            mainAxisExtent: 160,
                          ),
                          primary: false,
                          shrinkWrap: false,
                          itemCount: snapshot.data!.dishes
                              ?.where((d) => d.tags!.contains(tag))
                              .length,
                          itemBuilder: (context, index) => Dish(
                              dish: (snapshot.data!.dishes
                                  ?.where((d) => d.tags!.contains(tag))
                                  .toList())![index]),
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
