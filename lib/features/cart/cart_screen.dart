import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:test_flutter/assets/themes/text_style.dart';
// import 'package:test_flutter/features/cart/models/cart_entity.dart';
import 'package:test_flutter/features/cart/providers/cart_provider.dart';
import 'package:test_flutter/features/cart/widgets/cart_row.dart';

class CartScreen extends ConsumerWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(cartRepositoryProvider);
    double? cost =
        state.values.fold(.0, (t, e) => t! + (e.dish!.price! * e.qty!));
    return Column(
      children: [
        Expanded(
            child: Padding(
          padding: const EdgeInsets.fromLTRB(16, 16, 16, 0),
          child: ListView.separated(
            separatorBuilder: (context, index) => const SizedBox(
              height: 16,
            ),
            itemCount: state.length,
            itemBuilder: (context, index) =>
                CartRow(cartItem: state.values.toList()[index]),
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
              'Оплатить $cost ₽',
              style: AppTypography.textText16MediumWhite,
            ),
          ),
        ),
      ],
    );
  }
}
