import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:test_flutter/features/category/providers/dishes_provider.dart';

class TagButton extends ConsumerWidget {
  const TagButton({super.key, required this.tag, this.active = false});

  final String tag;
  final bool active;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return GestureDetector(
      onTap: () => ref.read(tagProvider.notifier).setTag(tag),
      child: active
          ? Container(
              width: 100,
              height: 35,
              decoration: BoxDecoration(
                color: const Color(0xff3363e0),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Center(
                child: Text(
                  tag,
                  style: const TextStyle(
                    fontFamily: 'SF Pro Display',
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    height: 1,
                    letterSpacing: 0.14,
                    color: Color(0xffffffff),
                  ),
                ),
              ),
            )
          : Container(
              width: 100,
              height: 35,
              decoration: BoxDecoration(
                color: const Color(0xfff8f7f5),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Center(
                child: Text(
                  tag,
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
            ),
    );
  }
}
