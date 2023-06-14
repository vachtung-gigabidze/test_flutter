import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:test_flutter/features/cart/models/cart_entity.dart';

class CartRow extends StatelessWidget {
  const CartRow({super.key, required this.cartItem});

  final CartItemDto cartItem;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.fromLTRB(16, 0, 16, 16),
      width: double.infinity,
      height: 62,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            margin: const EdgeInsets.fromLTRB(0, 0, 62, 0),
            height: double.infinity,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  margin: const EdgeInsets.fromLTRB(0, 0, 8, 0),
                  padding: const EdgeInsets.fromLTRB(9.67, 7.39, 3.98, 1.71),
                  height: double.infinity,
                  decoration: BoxDecoration(
                    color: const Color(0xfff8f7f5),
                    borderRadius: BorderRadius.circular(6),
                  ),
                  child: Align(
                    alignment: Alignment.bottomCenter,
                    child: SizedBox(
                      width: 48.35,
                      height: 52.9,
                      child: Image.network(
                        cartItem.dish?.imageUrl ?? "",
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.fromLTRB(0, 14, 0, 14),
                  height: double.infinity,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        margin: const EdgeInsets.fromLTRB(0, 0, 0, 4),
                        child: Text(
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
          ),
          Container(
            margin: const EdgeInsets.fromLTRB(0, 15, 0, 15),
            padding: const EdgeInsets.fromLTRB(13, 8.5, 13, 8.5),
            height: double.infinity,
            decoration: BoxDecoration(
              color: const Color(0xffefeeec),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  width: 10,
                  height: 10,
                  child: SvgPicture.asset(
                    'assets/images/minus.svg',
                    width: 10,
                    height: 10,
                  ),
                ),
                Container(
                  margin: const EdgeInsets.fromLTRB(0, 0, 22, 0),
                  child: Text(
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
                ),
                SizedBox(
                  width: 10,
                  height: 10,
                  child: SvgPicture.asset(
                    'assets/images/plus.svg',
                    width: 10,
                    height: 10,
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
