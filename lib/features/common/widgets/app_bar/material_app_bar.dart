import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class MaterialAppBar extends StatelessWidget implements PreferredSizeWidget {
  final Widget? actionButton;

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  const MaterialAppBar({
    this.actionButton,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      automaticallyImplyLeading: true,
      title: SizedBox(
        // width: double.infinity,
        height: 44,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              width: 24,
              height: 24,
              child: Center(
                child: SvgPicture.asset(
                  'assets/images/location.svg',
                  width: 15,
                  height: 18,
                  fit: BoxFit.contain,
                ),
              ),
            ),
            const SizedBox(
              width: 4,
            ),
            const SizedBox(
              height: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Нижневартовск',
                    style: TextStyle(
                      fontFamily: 'SF Pro Display',
                      fontSize: 18,
                      fontWeight: FontWeight.w400,
                      height: 1.2,
                      // color: Color(0xff000000),
                    ),
                  ),
                  Text(
                    '20 Июля, 2023',
                    style: TextStyle(
                      fontFamily: 'SF Pro Display',
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      height: 1.15,
                      letterSpacing: 0.14,
                      // color: Color(0x7f000000),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      actions: [
        Padding(
          padding: const EdgeInsets.only(right: 16.0),
          child: Image.asset(
            'assets/images/account_image.png',
            fit: BoxFit.contain,
            height: 44,
            width: 44,
          ),
        ),
      ],
    );
  }
}
