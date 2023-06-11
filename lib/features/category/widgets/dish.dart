import 'package:flutter/material.dart';
import 'package:test_flutter/features/category/models/dishes_entities.dart';
import 'package:test_flutter/features/category/widgets/dish_dialog.dart';

class Dish extends StatelessWidget {
  const Dish({super.key, required this.dish});

  final DishDto dish;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => Navigator.of(context).push(new PageRouteBuilder(
          opaque: false,
          barrierDismissible: true,
          pageBuilder: (BuildContext context, _, __) {
            return DishDialog(dish: dish);
          })),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: 109,
            height: 109,
            decoration: BoxDecoration(
              color: const Color(0xfff8f7f5),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Padding(
              padding: const EdgeInsets.all(17.0),
              child: Align(
                alignment: Alignment.bottomCenter,
                child: Image.network(
                  dish.imageUrl ?? "",
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
        ],
      ),
    );
  }
}
