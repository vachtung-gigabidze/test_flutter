import 'package:flutter/material.dart';
import 'package:test_flutter/features/platform/factory/platform_widget_factory.dart';

/// Main widget for MainScreen module
class MainScreen extends StatelessWidget {
  const MainScreen({
    Key? key,
    this.child,
  }) : super(key: key);

  final Widget? child;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: child,
    );
  }
}

// class _BottomNavigationBar extends StatelessWidget {
//   final PlatformWidgetsFactory widgetsFactory;
//   final int currentIndex;
//   final ValueSetter<int> switchTab;

//   const _BottomNavigationBar({
//     Key? key,
//     required this.widgetsFactory,
//     required this.currentIndex,
//     required this.switchTab,
//   }) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return widgetsFactory.createBottomNavigationBar(
//       currentIndex: currentIndex,
//       onTap: switchTab,
//     );
//   }
// }