import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:test_flutter/assets/themes/text_style.dart';
import 'package:test_flutter/features/cart/models/cart_entity.dart';
import 'package:test_flutter/features/cart/providers/cart_provider.dart';

class CartRow extends HookConsumerWidget {
  const CartRow({super.key, required this.cartItem});

  final CartItemDto cartItem;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    CartItemDto dish = ref
        .watch(cartProvider)
        .state
        .values
        .firstWhere((d) => d.dish!.name! == cartItem.dish!.name!);
    return SizedBox(
      width: double.infinity,
      height: 62,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: double.infinity,
                decoration: BoxDecoration(
                  color: const Color(0xfff8f7f5),
                  borderRadius: BorderRadius.circular(6),
                ),
                child: SizedBox(
                  width: 62,
                  height: 62,
                  child: Center(
                    child: Image.network(
                      cartItem.dish?.imageUrl ?? "",
                      height: 48,
                      width: 48,
                      fit: BoxFit.contain,
                    ),
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.fromLTRB(8, 14, 0, 14),
                height: double.infinity,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      cartItem.dish!.name!,
                      style: const TextStyle(
                        fontFamily: 'SF Pro Display',
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        height: 1.0,
                        letterSpacing: 0.14,
                        color: Color(0xff000000),
                      ),
                    ),
                    RichText(
                      text: TextSpan(
                        style: AppTypography.textText14RegularBlack,
                        children: [
                          TextSpan(
                            text: '${cartItem.dish?.price ?? 0} ₽',
                            style: AppTypography.textText14RegularBlack,
                          ),
                          TextSpan(
                            text: ' · ${cartItem.dish?.weight ?? 0}г',
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          Container(
            width: 99,
            height: 32,
            decoration: BoxDecoration(
              color: const Color(0xffefeeec),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                GestureDetector(
                  onTap: () {
                    ref.read(cartProvider).removeItem(cartItem.dish!.name!);
                  },
                  child: SvgPicture.asset(
                    'assets/images/minus.svg',
                    width: 24,
                    height: 24,
                  ),
                ),
                Text('${dish.qty}', style: AppTypography.textText14MediumBlack),
                GestureDetector(
                  onTap: () {
                    ref.read(cartProvider).addItem(
                        dish: cartItem.dish!, dishName: cartItem.dish!.name!);
                  },
                  child: SvgPicture.asset(
                    'assets/images/plus.svg',
                    width: 24,
                    height: 24,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
