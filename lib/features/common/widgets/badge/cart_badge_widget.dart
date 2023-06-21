import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

/// Бейдж с количеством для корзины
class CartBadgeWidget extends StatelessWidget {
  const CartBadgeWidget({
    Key? key,
    required this.color,
  }) : super(key: key);

  final Color? color;

  @override
  Widget build(BuildContext context) {
    return Badge(
      child: SvgPicture.asset(
        'assets/images/bag.svg',
        color: color,
      ),
    );
  }
}
