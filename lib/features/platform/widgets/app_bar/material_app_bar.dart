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
      automaticallyImplyLeading: false,
      title: Padding(
        padding: const EdgeInsets.only(left: 16.0, right: 16.0),
        child: Container(
          margin: const EdgeInsets.fromLTRB(0, 0, 1.66, 0),
          width: double.infinity,
          height: 44,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                margin: const EdgeInsets.fromLTRB(0, 1, 108, 0.5),
                height: double.infinity,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      margin: const EdgeInsets.fromLTRB(0, 5, 8.5, 0),
                      width: 15,
                      height: 18,
                      child: SvgPicture.asset(
                        'assets/images/location.svg',
                        width: 15,
                        height: 18,
                      ),
                    ),
                    Container(
                      height: double.infinity,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            margin: const EdgeInsets.fromLTRB(0, 0, 0, 3.5),
                            child: const Text(
                              'Санкт-Петербург',
                              style: TextStyle(
                                fontFamily: 'SF Pro Display',
                                fontSize: 18,
                                fontWeight: FontWeight.w500,
                                height: 1.2000000212,
                                //color: Color(0xff000000),
                              ),
                            ),
                          ),
                          const Text(
                            '12 Августа, 2023',
                            style: TextStyle(
                              fontFamily: 'SF Pro Display',
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                              height: 1.1500000272,
                              letterSpacing: 0.14,
                              //color: Color(0x7f000000),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                width: 44,
                height: double.infinity,
                decoration: BoxDecoration(
                  //color: const Color(0xffffffff),
                  borderRadius: BorderRadius.circular(100),
                  image: const DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage('assets/images/account_image.png'),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      //centerTitle: true,
      // actions: actionButton != null ? [actionButton!] : null,
    );
  }
}
