import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:test_flutter/features/navigation/app_router.dart';

class AppBackButton extends StatelessWidget {
  const AppBackButton({super.key});

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () => context.go(AppRouter.root),
      icon: SvgPicture.asset(
        'assets/images/back.svg',
        width: 6,
        height: 12,
        fit: BoxFit.scaleDown,
      ),
    );
  }
}
