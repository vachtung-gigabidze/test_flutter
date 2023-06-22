import 'package:flutter/material.dart';
import 'package:test_flutter/features/account/account_screen.dart';
import 'package:test_flutter/features/app/screen/main_screen.dart';
import 'package:test_flutter/features/cart/cart_screen.dart';
import 'package:test_flutter/features/categories/categories_screen.dart';
import 'package:test_flutter/features/categories/models/category.dart';
import 'package:test_flutter/features/category/category_screen.dart';
import 'package:test_flutter/features/category/widgets/appbar_category.dart';
import 'package:test_flutter/features/search/search_screen.dart';
import 'package:go_router/go_router.dart';

/// Навигация
abstract class AppRouter {
  static const String root = '/';
  static const String categories = '/categories';
  static const String category = '/category';
  static const String cart = '/cart';
  static const String search = '/search';
  static const String account = '/account';

  static GoRouter router = GoRouter(initialLocation: root, routes: <RouteBase>[
    ShellRoute(
      builder: (context, state, child) => MainScreen(
        body: child,
        appBar: state.path == AppRouter.category
            ? AppBarCategory(title: (state.extra as Category).name ?? "")
                as PreferredSizeWidget
            : null,
      ),
      routes: [
        GoRoute(
          path: root,
          builder: (BuildContext context, GoRouterState state) {
            return const CategoriesScreen();
          },
        ),
        GoRoute(
          path: category,
          builder: (BuildContext context, GoRouterState state) {
            return CategoryScreen(category: state.extra as Category);
          },
        ),
        GoRoute(
          path: cart,
          builder: (BuildContext context, GoRouterState state) {
            return const CartScreen();
          },
        ),
        GoRoute(
          path: search,
          builder: (BuildContext context, GoRouterState state) {
            return const SearchScreen();
          },
        ),
        GoRoute(
          path: account,
          builder: (BuildContext context, GoRouterState state) {
            return const AccountScreen();
          },
        ),
      ],
    ),
  ]);
}
