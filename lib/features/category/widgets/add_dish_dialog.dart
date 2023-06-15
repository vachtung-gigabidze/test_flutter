import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:test_flutter/features/category/models/dishes_entities.dart';
import 'package:test_flutter/features/platform/widgets/alert_dialog/material_alert_dialog.dart';

class AddDishDialog extends StatelessWidget {
  const AddDishDialog({super.key, required this.dish});
  final DishDto dish;
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Container(
        decoration: BoxDecoration(
          color: const Color(0xfff8f7f5),
          borderRadius: BorderRadius.circular(10),
        ),
        width: 311,
        height: 232,
        child: Stack(children: [
          Center(
            child: Image.network(
              width: 198,
              height: 204,
              dish.imageUrl!,
              fit: BoxFit.contain,
            ),
          ),
          Positioned(
              top: 8,
              right: 8,
              child: Row(
                children: [
                  Container(
                    width: 40,
                    height: 40,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Align(
                      alignment: Alignment.center,
                      child: SvgPicture.asset(
                        'assets/images/heart.svg',
                        height: 24,
                        width: 24,
                        // fit: BoxFit.none,
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 8,
                  ),
                  Container(
                    width: 40,
                    height: 40,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Align(
                      alignment: Alignment.center,
                      child: SvgPicture.asset(
                        'assets/images/close.svg',
                        height: 22,
                        width: 22,
                        // fit: BoxFit.none,
                      ),
                    ),
                  ),
                ],
              ))
        ]),
      ),
      titlePadding: const EdgeInsets.only(top: 16, left: 16, right: 16),
      content: SizedBox(
        width: 311,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
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
            const SizedBox(
              height: 8,
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
            const SizedBox(
              height: 8,
            ),
            Text(dish.description!),
          ],
        ),
      ),
      contentPadding:
          const EdgeInsets.only(top: 8, bottom: 16, left: 16, right: 16),
      actionsAlignment: MainAxisAlignment.center,
      actionsPadding: const EdgeInsets.only(bottom: 16, left: 16, right: 16),
      actions: [
        ElevatedButton(
          style: ElevatedButton.styleFrom(
              fixedSize: const Size(311, 48),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              )),
          onPressed: () {},
          child: const Text(
            'Добавить в корзину',
            textAlign: TextAlign.center,
          ),
        )
      ],
    );
  }
}
