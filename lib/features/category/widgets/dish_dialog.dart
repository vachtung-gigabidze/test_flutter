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
              // frame5838sK (4:224)
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
                    // autogroupy6zooTf (HSYqf6LgYf5HqywERUy6Zo)
                    margin: EdgeInsets.fromLTRB(0, 0, 8, 0),
                    width: 198,
                    height: double.infinity,
                    child: Stack(
                      children: [
                        Positioned(
                          // fishfiletwithrice1XuT (4:225)
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
                          // frame60148h (4:226)
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
                    // frame602Nv5 (4:228)
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
              // preview7sf (4:230)
              margin: EdgeInsets.fromLTRB(0, 0, 0, 8),
              child: Text(
                dish.name!,
                style: TextStyle(
                  fontFamily: 'SF Pro Display',
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  height: 1.0499999523,
                  letterSpacing: 0.16,
                  color: Color(0xff000000),
                ),
              ),
            ),
            RichText(
              // preview2Uq (4:599)
              text: TextSpan(
                style: const TextStyle(
                  fontFamily: 'SF Pro Display',
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                  height: 1.0499999183,
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
                      height: 1.0499999183,
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
                  child: Text(
                    'Добавить в корзину',
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                      fontFamily: 'SF Pro Display',
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      height: 1.1000000238,
                      letterSpacing: 0.1000000015,
                      color: Color(0xffffffff),
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
