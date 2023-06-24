import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:test_flutter/features/cart/providers/cart_provider.dart';

/// Бейдж с количеством для корзины
class CartBadgeWidget extends ConsumerWidget {
  const CartBadgeWidget({
    Key? key,
    required this.color,
  }) : super(key: key);

  final Color? color;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final cart = ref.watch(cartRepositoryProvider);
    return Badge(
      label: Text("${cart.values.length}"),
      child: SvgPicture.asset(
        'assets/images/bag.svg',
        color: color,
      ),
    );
  }
}
