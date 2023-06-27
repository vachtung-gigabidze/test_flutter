import 'package:flutter/material.dart';
import 'package:test_flutter/assets/themes/text_style.dart';
import 'package:test_flutter/features/category/widgets/app_back_button.dart';

class AppBarCategory extends StatelessWidget implements PreferredSizeWidget {
  final String title;

  const AppBarCategory({super.key, required this.title});

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      centerTitle: true,
      leading: const AppBackButton(),
      title: SizedBox(
          height: 44,
          child: Center(
              child: Text(
            title,
            style: AppTypography.textTitle18Regular,
          ))),
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
}
