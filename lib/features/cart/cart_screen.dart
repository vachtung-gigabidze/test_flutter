import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:test_flutter/assets/themes/text_style.dart';
import 'package:test_flutter/features/cart/providers/cart_provider.dart';
import 'package:test_flutter/features/cart/widgets/cart_row.dart';
import 'package:test_flutter/features/common/constants/app_sizes.dart';

class CartScreen extends ConsumerWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final cartRepository = ref.watch(cartProvider);

    return Column(
      children: [
        Expanded(
            child: Padding(
          padding: const EdgeInsets.fromLTRB(16, 16, 16, 0),
          child: ListView.separated(
            separatorBuilder: (context, index) => AppSizes.sizedBoxH16,
            itemCount: cartRepository.cart.length,
            itemBuilder: (context, index) =>
                CartRow(cartItem: cartRepository.cart.values.toList()[index]),
          ),
        )),
        Padding(
          padding: const EdgeInsets.fromLTRB(16, 0, 16, 16),
          child: ElevatedButton(
            onPressed: () {},
            style: ButtonStyle(
                minimumSize: MaterialStateProperty.all<Size>(
                    const Size(double.infinity, 48)),
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ))),
            child: Text(
              'Оплатить ${cartRepository.cost()} ₽',
              style: AppTypography.textText16MediumWhite,
            ),
          ),
        ),
      ],
    );
  }
}
