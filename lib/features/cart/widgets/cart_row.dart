import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:test_flutter/assets/themes/text_style.dart';
import 'package:test_flutter/features/cart/models/cart_entity.dart';
import 'package:test_flutter/features/cart/providers/cart_provider.dart';
import 'package:test_flutter/features/common/constants/app_sizes.dart';

class CartRow extends HookConsumerWidget {
  const CartRow({super.key, required this.cartItem});

  final CartItemDto cartItem;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    CartItemDto dish = ref
        .watch(cartProvider)
        .cart
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
                margin: const EdgeInsets.fromLTRB(8, 0, 0, 0),
                height: double.infinity,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: 150,
                      child: Text(
                        cartItem.dish!.name!,
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: const TextStyle(
                          fontFamily: 'SF Pro Display',
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          height: 1.0,
                          letterSpacing: 0.14,
                          color: Color(0xff000000),
                        ),
                      ),
                    ),
                    AppSizes.sizedBoxH4,
                    RichText(
                      text: TextSpan(
                        style: const TextStyle(
                          fontFamily: 'SF Pro Display',
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          height: 1.0,
                          letterSpacing: 0.14,
                          color: Color(0x66000000),
                        ),
                        children: [
                          TextSpan(
                            text: '${cartItem.dish!.price} ₽',
                            style: const TextStyle(
                              fontFamily: 'SF Pro Display',
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                              height: 1.0,
                              letterSpacing: 0.14,
                              color: Color(0xff000000),
                            ),
                          ),
                          TextSpan(
                            text: ' · ${cartItem.dish!.weight}г',
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
                    ref
                        .read(cartProvider.notifier)
                        .removeItem(cartItem.dish!.name!);
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
                    ref.read(cartProvider.notifier).addItem(
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
