import 'package:flutter/material.dart';

/// Бейдж с количеством для корзины
class CartBadgeWidget extends StatelessWidget {
  const CartBadgeWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Badge(
      child: Icon(Icons.card_travel),
    );
  }
}
