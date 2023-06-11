import 'package:flutter/material.dart';
import 'package:test_flutter/features/category/models/dishes_entities.dart';

class Dish extends StatelessWidget {
  const Dish({super.key, required this.dish});

  final DishDto dish;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 109,
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
            child: Align(
              alignment: Alignment.bottomCenter,
              child: SizedBox(
                width: 87,
                height: 98,
                child: Image.network(
                  dish.imageUrl ?? "",
                  fit: BoxFit.contain,
                ),
              ),
            ),
          ),
          Text(
            dish.name ?? "",
            overflow: TextOverflow.ellipsis,
            style: const TextStyle(
              fontFamily: 'SF Pro Display',
              fontSize: 14,
              fontWeight: FontWeight.w400,
              height: 1.0,
              letterSpacing: 0.14,
              color: Color(0xff000000),
            ),
          ),
        ],
      ),
    );
  }
}
