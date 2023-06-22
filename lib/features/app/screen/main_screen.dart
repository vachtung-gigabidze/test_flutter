import 'package:flutter/material.dart';
import 'package:test_flutter/features/common/widgets/app_bar/material_app_bar.dart';
import 'package:test_flutter/features/common/widgets/bottom_navigation_bar/material_bottom_navigation_bar.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({
    Key? key,
    required this.body,
    required this.appBar,
  }) : super(key: key);

  final Widget body;
  final PreferredSizeWidget? appBar;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar ?? const MaterialAppBar(),
      body: body,
      bottomNavigationBar: const MaterialBottomNavigationBar(),
    );
  }
}
