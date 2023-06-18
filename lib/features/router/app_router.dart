import 'package:flutter/material.dart';
import 'package:test_flutter/features/app/screen/main_screen.dart';
import 'package:test_flutter/features/cart/cart_screen.dart';
import 'package:test_flutter/features/categories/categories_screen.dart';
import 'package:test_flutter/features/categories/models/category.dart';
import 'package:test_flutter/features/category/category_screen.dart';

/// Навигация
abstract class AppRouter {
  static const String root = '/';
  static const String categories = '/categories';
  static const String category = '/category';
  static const String cart = '/cart';

  static Route<dynamic> generateRoute(
    RouteSettings settings,
  ) {
    switch (settings.name) {
      case AppRouter.root:
        return MaterialPageRoute(
          builder: (_) => const MainScreen(
            title: "",
            child: CategoriesScreen(),
          ),
        );
      case AppRouter.category:
        return MaterialPageRoute(
          builder: (_) => MainScreen(
              title: "", child: CategoryScreen(category: Category())),
        );
      case AppRouter.cart:
        return MaterialPageRoute(
          builder: (_) => const MainScreen(title: "", child: CartScreen()),
        );
      default:
        return MaterialPageRoute(
          builder: (_) => const MainScreen(
            title: "",
            child: Placeholder(),
          ),
        );
    }
  }
}
