import 'package:flutter/material.dart';
import 'package:test_flutter/features/app/screen/main_screen.dart';
import 'package:test_flutter/features/categories/categories.dart';

import 'package:test_flutter/features/platform/factory/platform_widget_factory.dart';

/// Навигация
abstract class AppRouter {
  static const String root = '/';
  static const String categories = '/categories';

  static Route<dynamic> generateRoute(
    RouteSettings settings,
    PlatformWidgetsFactory widgetsFactory,
  ) {
    switch (settings.name) {
      case AppRouter.root:
        return widgetsFactory.createPageRouter(
          builder: (_) => const MainScreen(
            child: CategoriesPage(),
          ),
        );
      // case AppRouter.pizzaDetails:
      //   final arguments = settings.arguments as Map<String, dynamic>;
      //   final pizza = arguments['pizza'] as Pizza;

      //   return widgetsFactory.createPageRouter(
      //     builder: (_) => PizzaDetailsScreen(pizza: pizza),
      //   );
      default:
        return widgetsFactory.createPageRouter(
          builder: (_) => const MainScreen(),
        );
    }
  }
}
