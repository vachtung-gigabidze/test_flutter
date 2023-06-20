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
    return AppBar(
      // automaticallyImplyLeading: ,
      leading: title == ""
          ? null
          : GestureDetector(
              onTap: () => Navigator.of(context).pop(),
              child: SvgPicture.asset(
                'assets/images/back.svg',
                width: 6,
                height: 12,
                fit: BoxFit.scaleDown,
              ),
            ),
      title: SizedBox(
        // width: double.infinity,
        height: 44,
        child: title != ""
            ? Center(child: Text(title))
            : Row(
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
                  SizedBox(
                    height: double.infinity,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          // margin: const EdgeInsets.fromLTRB(0, 0, 0, 3.5),
                          child: const Text(
                            'Нижневартовск',
                            style: TextStyle(
                              fontFamily: 'SF Pro Display',
                              fontSize: 18,
                              fontWeight: FontWeight.w400,
                              height: 1.2,
                              // color: Color(0xff000000),
                            ),
                          ),
                        ),
                        const Text(
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
        // Container(
        //   width: 44,
        //   height: double.infinity,
        //   decoration: BoxDecoration(
        //     //color: const Color(0xffffffff),
        //     borderRadius: BorderRadius.circular(100),
        //     image: const DecorationImage(
        //       fit: BoxFit.cover,
        //       image: AssetImage(),
        //     ),
        //   ),
        // ),
      ],
      centerTitle: true,
      // actions: actionButton != null ? [actionButton!] : null,
    );
  }
}
