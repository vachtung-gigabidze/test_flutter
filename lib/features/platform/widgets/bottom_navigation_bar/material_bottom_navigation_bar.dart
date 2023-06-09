import 'package:flutter/material.dart';
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
      items: const [
        BottomNavigationBarItem(
          icon: Icon(Icons.abc),
          label: AppStrings.bottomNavBarItemLabelHome,
        ),
        BottomNavigationBarItem(
          icon: CartBadgeWidget(),
          label: AppStrings.bottomNavBarItemLabelCart,
        ),
      ],
      onTap: onTap,
    );
  }
}
