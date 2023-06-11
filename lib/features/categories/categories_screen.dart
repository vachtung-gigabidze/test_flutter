// import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:test_flutter/features/categories/providers/categories_provider.dart';
// import 'package:test_flutter/features/categories/services/categories_service.dart';
import 'package:test_flutter/features/categories/widgets/categories_builder.dart';
import 'package:test_flutter/features/platform/widgets/material_widgets.dart';

class CategoriesScreen extends ConsumerWidget {
  const CategoriesScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final categories = ref.watch(categoriesProvider.future);
    return FutureBuilder(
        future: categories,
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.done) {
            if (snapshot.hasData && snapshot.data!.categories != null) {
              final categories = snapshot.data!.categories!;

              return CategoriesBuilder(
                data: categories,
                goCategoryDetails: (value) {},
                refreshPlaces: () async {},
              );
            } else {
              return const Center(
                child: Text('No data'),
              );
            }
          } else {
            return const MaterialLoader();
          }
        });
    //const Placeholder();
  }
}