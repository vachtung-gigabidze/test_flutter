import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:test_flutter/features/categories/models/category.dart';

class CategoryScreen extends ConsumerWidget {
  const CategoryScreen({required this.category, super.key});

  final Category category;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return SizedBox(
      width: double.infinity,
      height: 330,
      // implement ListView
      child: ListView(
        // make it horizontal
        scrollDirection: Axis.horizontal,
        children: [
          Container(
              margin: const EdgeInsets.all(15),
              width: 200,
              height: 300,
              color: Colors.amber,
              alignment: Alignment.center,
              child: const Text(
                '1',
                style: TextStyle(fontSize: 80),
              )),
          Container(
              margin: const EdgeInsets.all(15),
              width: 200,
              height: 300,
              color: Colors.amber,
              alignment: Alignment.center,
              child: const Text(
                '2',
                style: TextStyle(fontSize: 80),
              )),
          Container(
              margin: const EdgeInsets.all(15),
              width: 200,
              height: 300,
              color: Colors.amber,
              alignment: Alignment.center,
              child: const Text(
                '3',
                style: TextStyle(fontSize: 80),
              )),
          Container(
              margin: const EdgeInsets.all(15),
              width: 200,
              height: 300,
              color: Colors.amber,
              alignment: Alignment.center,
              child: const Text(
                '4',
                style: TextStyle(fontSize: 80),
              )),
          Container(
              margin: const EdgeInsets.all(15),
              width: 200,
              height: 300,
              color: Colors.amber,
              alignment: Alignment.center,
              child: const Text(
                '5',
                style: TextStyle(fontSize: 80),
              )),
          Container(
              margin: const EdgeInsets.all(15),
              width: 200,
              height: 300,
              color: Colors.amber,
              alignment: Alignment.center,
              child: const Text(
                '6',
                style: TextStyle(fontSize: 80),
              )),
        ],
      ),
    );
  }
}
