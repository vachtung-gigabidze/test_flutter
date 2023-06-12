import 'package:flutter/material.dart';
import 'package:test_flutter/features/category/models/dishes_entities.dart';

class DishDialog extends StatelessWidget {
  const DishDialog({super.key, required this.dish});

  final DishDto dish;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        padding: EdgeInsets.fromLTRB(16, 16, 15, 16),
        width: 343,
        height: 446,
        decoration: BoxDecoration(
          color: Color(0xffffffff),
          borderRadius: BorderRadius.circular(15),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: EdgeInsets.fromLTRB(0, 0, 1, 8),
              padding: EdgeInsets.fromLTRB(57, 8, 8, 14),
              width: double.infinity,
              height: 232,
              decoration: BoxDecoration(
                color: Color(0xfff8f7f5),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    margin: EdgeInsets.fromLTRB(0, 0, 8, 0),
                    width: 198,
                    height: double.infinity,
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
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          left: 158,
                          top: 0,
                          child: Align(
                            child: SizedBox(
                              width: 40,
                              height: 40,
                              child: Image.network(
                                ' [Image url]',
                                width: 40,
                                height: 40,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width: 40,
                    height: 40,
                    child: Image.network(
                      ' [Image url]',
                      width: 40,
                      height: 40,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(0, 0, 0, 8),
              child: Text(
                dish.name!,
                style: TextStyle(
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
              text: const TextSpan(
                style: TextStyle(
                  fontFamily: 'SF Pro Display',
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                  height: 1.0,
                  letterSpacing: 0.14,
                  color: Color(0x66000000),
                ),
                children: [
                  TextSpan(
                    text: '799 ₽',
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
                    text: ' · 560г',
                  ),
                ],
              ),
            ),
            Container(
              // previewwER (4:339)
              margin: EdgeInsets.fromLTRB(0, 0, 0, 8),
              constraints: BoxConstraints(
                maxWidth: 312,
              ),
              child: Text(
                dish.description!,
                style: const TextStyle(
                  fontFamily: 'SF Pro Display',
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                  height: 1.1000000409,
                  letterSpacing: 0.14,
                  color: Color(0xa5000000),
                ),
              ),
            ),
            Container(
              // buttonsprimarybuttons3YM (4:331)
              width: 311,
              height: 48,
              decoration: BoxDecoration(
                color: Color(0xff3363e0),
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
    );
  }
}
