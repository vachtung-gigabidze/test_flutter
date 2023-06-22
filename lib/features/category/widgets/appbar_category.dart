import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';

class AppBarCategory extends StatelessWidget implements PreferredSizeWidget {
  const AppBarCategory({super.key, required this.title});
  final String title;
  @override
  Widget build(BuildContext context) {
    return AppBar(
      centerTitle: true,
      leading: GestureDetector(
        onTap: () => context.pop(),
        child: SvgPicture.asset(
          'assets/images/back.svg',
          width: 6,
          height: 12,
          fit: BoxFit.scaleDown,
        ),
      ),
      title: SizedBox(height: 44, child: Center(child: Text(title))),
      actions: [
        Padding(
          padding: const EdgeInsets.only(right: 16.0),
          child: Image.asset(
            'assets/images/account_image.png',
            fit: BoxFit.contain,
            height: 44,
            width: 44,
          ),
        ),
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
