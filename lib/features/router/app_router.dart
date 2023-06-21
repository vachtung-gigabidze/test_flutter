import 'package:flutter/material.dart';
import 'package:test_flutter/features/account/account_screen.dart';
import 'package:test_flutter/features/app/screen/main_screen.dart';
import 'package:test_flutter/features/cart/cart_screen.dart';
import 'package:test_flutter/features/categories/categories_screen.dart';
import 'package:test_flutter/features/categories/models/category.dart';
import 'package:test_flutter/features/category/category_screen.dart';
import 'package:test_flutter/features/search/search_screen.dart';

/// Навигация
abstract class AppRouter {
  static const String root = '/';
  static const String categories = '/categories';
  static const String category = '/category';
  static const String cart = '/cart';
  static const String search = '/search';
  static const String account = '/account';

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
      case AppRouter.search:
        return MaterialPageRoute(
          builder: (_) => const MainScreen(title: "", child: SearchScreen()),
        );
      case AppRouter.account:
        return MaterialPageRoute(
          builder: (_) => const MainScreen(title: "", child: AccountScreen()),
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
