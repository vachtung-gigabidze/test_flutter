import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:test_flutter/features/cart/models/cart_entity.dart';
import 'package:test_flutter/features/cart/providers/cart_provider.dart';
import 'package:test_flutter/features/cart/widgets/cart_row.dart';

class CartScreen extends ConsumerWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(cartRepositoryProvider);

    return Column(
      children: [
        Expanded(
            child: ListView.builder(
          itemCount: state.length,
          itemBuilder: (context, index) =>
              CartRow(cartItem: state.values.toList()[index]),
        )),
        Container(
          margin: const EdgeInsets.fromLTRB(16, 0, 16, 16),
          width: double.infinity,
          height: 48,
          decoration: BoxDecoration(
            color: Color(0xff3363e0),
            borderRadius: BorderRadius.circular(10),
          ),
          child: Center(
            child: Center(
              child: RichText(
                textAlign: TextAlign.center,
                text: TextSpan(
                  style: TextStyle(
                    fontFamily: 'SF Pro Display',
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    height: 1.1,
                    letterSpacing: 0.1,
                    color: Color(0xffffffff),
                  ),
                  children: [
                    TextSpan(
                      text: 'Оплатить 2 004 ₽',
                      style: TextStyle(
                        fontFamily: 'SF Pro Display',
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        height: 1.1,
                        letterSpacing: 0.1,
                        color: Color(0xffffffff),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
