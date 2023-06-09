import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:test_flutter/features/common/constants/app_string.dart';
import 'package:test_flutter/features/common/widgets/badge/cart_badge_widget.dart';

class MaterialBottomNavigationBar extends StatelessWidget {
  final int currentIndex;
  final ValueSetter<int> onTap;

  const MaterialBottomNavigationBar({
    required this.currentIndex,
    required this.onTap,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: currentIndex,
      items: [
        BottomNavigationBarItem(
          icon: SvgPicture.asset('assets/images/home.svg'),
          label: AppStrings.bottomNavBarItemLabelHome,
        ),
        BottomNavigationBarItem(
          icon: SvgPicture.asset('assets/images/search.svg'),
          label: AppStrings.bottomNavBarItemLabelSearch,
        ),
        BottomNavigationBarItem(
          icon: CartBadgeWidget(),
          label: AppStrings.bottomNavBarItemLabelCart,
        ),
        BottomNavigationBarItem(
          icon: SvgPicture.asset('assets/images/profile.svg'),
          label: AppStrings.bottomNavBarItemLabelAccount,
        ),
      ],
      onTap: onTap,
    );
  }
}
