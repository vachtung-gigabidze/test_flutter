import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:test_flutter/assets/themes/text_style.dart';
import 'package:test_flutter/features/cart/providers/cart_provider.dart';
import 'package:test_flutter/features/category/models/dishes_entities.dart';
import 'package:test_flutter/features/common/constants/app_sizes.dart';

class AddDishDialog extends ConsumerWidget {
  const AddDishDialog({super.key, required this.dish});
  final DishDto dish;
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return AlertDialog(
      shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(15.0))),
      title: Container(
        decoration: BoxDecoration(
          color: const Color(0xfff8f7f5),
          borderRadius: BorderRadius.circular(10),
        ),
        width: 311,
        height: 232,
        child: Stack(children: [
          Center(
            child: Hero(
              tag: dish.imageUrl!,
              child: Image.network(
                width: 198,
                height: 204,
                dish.imageUrl!,
                fit: BoxFit.contain,
              ),
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
                    child: SvgPicture.asset(
                      'assets/images/heart.svg',
                      height: 16,
                      width: 18.67,
                      fit: BoxFit.scaleDown,
                    ),
                  ),
                  AppSizes.sizedBoxW8,
                  GestureDetector(
                    onTap: () => Navigator.pop(context),
                    child: Container(
                      width: 40,
                      height: 40,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: SvgPicture.asset(
                        'assets/images/close.svg',
                        alignment: Alignment.center,
                        height: 10,
                        width: 10,
                        fit: BoxFit.scaleDown,
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
            Text(dish.name!, style: AppTypography.textText16RegularBlack),
            AppSizes.sizedBoxH8,
            RichText(
              text: TextSpan(
                style: AppTypography.textText14RegularBlack,
                children: [
                  TextSpan(
                    text: '${dish.price} ₽',
                    style: AppTypography.textText14RegularBlack,
                  ),
                  TextSpan(
                    text: ' · ${dish.weight}г',
                    style: const TextStyle(
                      fontFamily: 'SF Pro Display',
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      height: 1.0,
                      letterSpacing: 0.14,
                      color: Colors.black38,
                    ),
                  ),
                ],
              ),
            ),
            AppSizes.sizedBoxH8,
            Text(
              dish.description!,
              style: AppTypography.textText14Description,
            ),
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
                borderRadius: BorderRadius.circular(AppSizes.radiusButton),
              )),
          onPressed: () {
            ref
                .read(cartProvider.notifier)
                .addItem(dish: dish, dishName: dish.name!);
            Navigator.pop(context);
          },
          child: const Text(
            'Добавить в корзину',
            textAlign: TextAlign.center,
            style: AppTypography.textText16Medium,
          ),
        )
      ],
    );
  }
}
