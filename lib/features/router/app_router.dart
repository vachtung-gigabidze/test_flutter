import 'package:flutter/material.dart';
import 'package:test_flutter/features/app/screen/main_screen.dart';
import 'package:test_flutter/features/categories/categories_screen.dart';
import 'package:test_flutter/features/categories/models/category.dart';
import 'package:test_flutter/features/category/category_screen.dart';

import 'package:test_flutter/features/platform/factory/platform_widget_factory.dart';

/// Навигация
abstract class AppRouter {
  static const String root = '/';
  static const String categories = '/categories';
  static const String category = '/category';

  static Route<dynamic> generateRoute(
    RouteSettings settings,
    PlatformWidgetsFactory widgetsFactory,
  ) {
    switch (settings.name) {
      case AppRouter.root:
        return widgetsFactory.createPageRouter(
          builder: (_) => const MainScreen(
            child: CategoriesScreen(),
          ),
        );
      case AppRouter.category:
        // final arguments = settings.arguments as Map<String, dynamic>;
        // final category = arguments['category'] as Category;

        return widgetsFactory.createPageRouter(
          builder: (_) =>
              MainScreen(child: CategoryScreen(category: Category())),
        );
      default:
        return widgetsFactory.createPageRouter(
          builder: (_) => const MainScreen(),
        );
    }
  }
}
