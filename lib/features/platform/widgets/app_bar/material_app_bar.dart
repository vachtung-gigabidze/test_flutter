import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class MaterialAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final Widget? actionButton;

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  const MaterialAppBar({
    required this.title,
    this.actionButton,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const fem = 1.0;
    const ffem = 1.0;
    return AppBar(
      title: Container(
        margin:
            const EdgeInsets.fromLTRB(0 * fem, 0 * fem, 1.66 * fem, 0 * fem),
        width: double.infinity,
        height: 44 * fem,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              margin: const EdgeInsets.fromLTRB(
                  0 * fem, 1 * fem, 108 * fem, 0.5 * fem),
              height: double.infinity,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    margin: const EdgeInsets.fromLTRB(
                        0 * fem, 5 * fem, 8.5 * fem, 0 * fem),
                    width: 15 * fem,
                    height: 18 * fem,
                    child: SvgPicture.asset(
                      'assets/images/location.svg',
                      width: 15 * fem,
                      height: 18 * fem,
                    ),
                  ),
                  Container(
                    height: double.infinity,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          margin: const EdgeInsets.fromLTRB(
                              0 * fem, 0 * fem, 0 * fem, 3.5 * fem),
                          child: const Text(
                            'Санкт-Петербург',
                            style: TextStyle(
                              fontFamily: 'SF Pro Display',
                              fontSize: 18 * ffem,
                              fontWeight: FontWeight.w500,
                              height: 1.2000000212 * ffem / fem,
                              color: Color(0xff000000),
                            ),
                          ),
                        ),
                        const Text(
                          '12 Августа, 2023',
                          style: TextStyle(
                            fontFamily: 'SF Pro Display',
                            fontSize: 14 * ffem,
                            fontWeight: FontWeight.w400,
                            height: 1.1500000272 * ffem / fem,
                            letterSpacing: 0.14 * fem,
                            color: Color(0x7f000000),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              width: 44 * fem,
              height: double.infinity,
              decoration: BoxDecoration(
                color: const Color(0xffffffff),
                borderRadius: BorderRadius.circular(100 * fem),
                image: const DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage('assets/images/account_image.png'),
                ),
              ),
            ),
          ],
        ),
      ),
      //centerTitle: true,
      // actions: actionButton != null ? [actionButton!] : null,
    );
  }
}
