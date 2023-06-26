import 'package:flutter/material.dart';
import 'package:test_flutter/assets/themes/text_style.dart';
import 'package:test_flutter/features/category/models/dishes_entities.dart';
import 'package:test_flutter/features/category/widgets/add_dish_dialog.dart';

class Dish extends StatelessWidget {
  const Dish({super.key, required this.dish});

  final DishDto dish;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        showDialog(
          context: context,
          builder: (context) => AddDishDialog(dish: dish),
        );
      },
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: 109,
            height: 109,
            decoration: BoxDecoration(
              color: const Color(0xfff8f7f5),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Center(
              child: Hero(
                tag: dish.imageUrl!,
                child: Image.network(
                  dish.imageUrl ?? "",
                  height: 87,
                  width: 87,
                  errorBuilder: (context, error, stackTrace) =>
                      const Placeholder(),
                  fit: BoxFit.contain,
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 5,
          ),
          SizedBox(
            width: 109,
            child: Text(
              dish.name ?? "",
              style: AppTypography.textText14RegularBlack,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.left,
            ),
          ),
          const SizedBox(
            height: 14,
          ),
        ],
      ),
    );
  }
}
