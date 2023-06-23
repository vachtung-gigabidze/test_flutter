import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:test_flutter/features/cart/models/cart_entity.dart';

class CartRow extends StatelessWidget {
  const CartRow({super.key, required this.cartItem});

  final CartItemDto cartItem;

  @override
  Widget build(BuildContext context) {
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
                            text: '${cartItem.dish?.price ?? 0} ₽',
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
                SvgPicture.asset(
                  'assets/images/minus.svg',
                  width: 24,
                  height: 24,
                ),
                Text(
                  '${cartItem.qty}',
                  style: const TextStyle(
                    fontFamily: 'SF Pro Display',
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    height: 1.0,
                    letterSpacing: 0.14,
                    color: Color(0xff000000),
                  ),
                ),
                SvgPicture.asset(
                  'assets/images/plus.svg',
                  width: 24,
                  height: 24,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
