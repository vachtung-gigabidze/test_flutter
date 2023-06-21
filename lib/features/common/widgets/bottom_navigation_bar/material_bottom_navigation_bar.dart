// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:test_flutter/features/app/providers/navbar_provider.dart';
import 'package:test_flutter/features/common/constants/app_string.dart';
import 'package:test_flutter/features/common/widgets/badge/cart_badge_widget.dart';
import 'package:test_flutter/features/router/app_router.dart';

class MaterialBottomNavigationBar extends ConsumerWidget {
  //final int currentIndex;
  //final ValueSetter<int> onTap;

  const MaterialBottomNavigationBar({
    //required this.currentIndex,
    //required this.onTap,
    Key? key,
  }) : super(key: key);

  Color? itemColor(bool selected, BuildContext context) {
    return selected
        ? Theme.of(context).bottomNavigationBarTheme.selectedItemColor
        : Theme.of(context).bottomNavigationBarTheme.unselectedItemColor;
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final currentIndex = ref.watch(navbarProvider);
    return BottomNavigationBar(
      currentIndex: ref.watch(navbarProvider),
      onTap: (value) {
        switch (value) {
          case 0:
            Navigator.pushReplacementNamed(
              context,
              AppRouter.root,
            );
            break;
          case 1:
            Navigator.pushReplacementNamed(
              context,
              AppRouter.search,
            );
            break;
          case 2:
            Navigator.pushReplacementNamed(
              context,
              AppRouter.cart,
            );
            break;
          case 3:
            Navigator.pushReplacementNamed(
              context,
              AppRouter.account,
            );
            break;
          default:
            Navigator.pushReplacementNamed(
              context,
              AppRouter.root,
            );

            ref.read(navbarProvider.notifier).select(value);
        }
      },
      items: [
        BottomNavigationBarItem(
          icon: SvgPicture.asset('assets/images/home.svg',
              color: itemColor(currentIndex == 0, context)),
          label: AppStrings.bottomNavBarItemLabelHome,
        ),
        BottomNavigationBarItem(
          icon: SvgPicture.asset('assets/images/search.svg',
              color: itemColor(currentIndex == 1, context)),
          label: AppStrings.bottomNavBarItemLabelSearch,
        ),
        BottomNavigationBarItem(
          icon: CartBadgeWidget(color: itemColor(currentIndex == 2, context)),
          label: AppStrings.bottomNavBarItemLabelCart,
        ),
        BottomNavigationBarItem(
          icon: SvgPicture.asset('assets/images/profile.svg',
              color: itemColor(currentIndex == 3, context)),
          label: AppStrings.bottomNavBarItemLabelAccount,
        ),
      ],
    );
  }
}
