// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:test_flutter/assets/themes/custom_colors.dart';
import 'package:test_flutter/features/common/constants/app_sizes.dart';

class CustomMaterialButton extends StatelessWidget {
  final Widget child;
  final VoidCallback? onPressed;

  const CustomMaterialButton({
    required this.child,
    this.onPressed,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        primary: theme.extension<CustomColors>()!.green,
        onPrimary: theme.cardColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(AppSizes.radiusCard),
        ),
      ),
      child: child,
    );
  }
}
