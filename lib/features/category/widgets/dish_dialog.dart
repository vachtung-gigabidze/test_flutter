import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:test_flutter/features/category/models/dishes_entities.dart';

class DishDialog extends StatelessWidget {
  const DishDialog({super.key, required this.dish});

  final DishDto dish;

  @override
  Widget build(BuildContext context) {
    // final width = MediaQuery.of(context).size.width;
    return Center(
      child: Container(
        padding: const EdgeInsets.fromLTRB(16, 16, 15, 16),
        height: double.infinity,
        width: double.infinity,
        // height: 546,
        decoration: BoxDecoration(
          color: const Color(0xffffffff),
          borderRadius: BorderRadius.circular(15),
        ),
        child: Scaffold(
          body: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                margin: const EdgeInsets.fromLTRB(0, 0, 1, 8),
                padding: const EdgeInsets.fromLTRB(57, 8, 8, 14),
                width: double.infinity,
                height: double.infinity,
                decoration: BoxDecoration(
                  color: const Color(0xfff8f7f5),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      // margin: const EdgeInsets.fromLTRB(0, 0, 8, 0),
                      // width: 198,
                      // height: double.infinity,
                      child: Stack(
                        children: [
                          Positioned(
                            left: 0,
                            top: 6,
                            child: Align(
                              child: SizedBox(
                                width: 198,
                                height: 204,
                                child: Image.network(
                                  dish.imageUrl!,
                                  errorBuilder: (context, error, stackTrace) =>
                                      const Placeholder(),
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                          ),
                          Positioned(
                            left: 108,
                            top: 0,
                            child: Row(
                              children: [
                                Container(
                                  height: 40,
                                  width: 40,
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(8),
                                  ),
                                  child: Align(
                                    child: Image.asset(
                                      'assets/images/heart2.png',
                                      width: 24,
                                      height: 24,
                                      fit: BoxFit.fill,
                                    ),
                                  ),
                                ),
                                const SizedBox(
                                  width: 8,
                                ),
                                Container(
                                  height: 40,
                                  width: 40,
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(8),
                                  ),
                                  child: Align(
                                    child: Image.asset(
                                      'assets/images/close2.png',
                                      width: 24,
                                      height: 24,
                                      fit: BoxFit.fill,
                                    ),
                                  ),
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
                margin: const EdgeInsets.fromLTRB(0, 0, 0, 8),
                child: Text(
                  dish.name!,
                  style: const TextStyle(
                    fontFamily: 'SF Pro Display',
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    height: 1.0,
                    letterSpacing: 0.16,
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
                      text: '${dish.price} ₽',
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
                      text: ' · ${dish.weight}г',
                    ),
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.fromLTRB(0, 0, 0, 8),
                constraints: const BoxConstraints(
                    // maxWidth: 312,
                    ),
                child: Text(
                  dish.description!,
                  style: const TextStyle(
                    fontFamily: 'SF Pro Display',
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    height: 1.1,
                    letterSpacing: 0.14,
                    color: Color(0xa5000000),
                  ),
                ),
              ),
              Container(
                width: 311,
                height: 48,
                decoration: BoxDecoration(
                  color: const Color(0xff3363e0),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Center(
                  child: Center(
                    child: TextButton(
                      onPressed: () {},
                      child: const Text(
                        'Добавить в корзину',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontFamily: 'SF Pro Display',
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          height: 1.1,
                          letterSpacing: 0.1,
                          color: Color(0xffffffff),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
