import 'package:flutter/material.dart';
import 'package:test_flutter/features/common/widgets/app_bar/material_app_bar.dart';
import 'package:test_flutter/features/common/widgets/bottom_navigation_bar/material_bottom_navigation_bar.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({
    Key? key,
    required this.child,
    required this.title,
  }) : super(key: key);

  final Widget? child;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MaterialAppBar(
        title: title,
      ),
      body: child,
      bottomNavigationBar: const _BottomNavigationBar(),
    );
  }
}

class _BottomNavigationBar extends StatelessWidget {
  const _BottomNavigationBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialBottomNavigationBar();
  }
}
