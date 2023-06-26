import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

/// названия из фигмы
/// LargeTitle 32
/// Title 24
/// Subtitle 18
/// Text 16
/// Small 14
/// Super small 12

/// Стили текстов
class AppTypography {
  static const textLargeTitle32Bold = TextStyle(
    fontFamily: 'SF Pro Display',
    fontSize: 32.0,
    height: 1.125,
    fontWeight: FontWeight.w700,
  );

  static const textTitle24Bold = TextStyle(
    fontFamily: 'SF Pro Display',
    fontSize: 24.0,
    height: 1.2,
    fontWeight: FontWeight.w700,
  );

  static const textSubtitle18Medium = TextStyle(
    fontFamily: 'SF Pro Display',
    fontSize: 18.0,
    height: 1.33,
    fontWeight: FontWeight.w500,
  );

  static const textText16Medium = TextStyle(
    fontFamily: 'SF Pro Display',
    fontSize: 16.0,
    height: 1.1,
    letterSpacing: 0.1,
    fontWeight: FontWeight.w500,
  );
// style: TextStyle(
  //   fontFamily: 'SF Pro Display',
  //   fontSize: 16,
  //   fontWeight: FontWeight.w500,
  //   height: 1.1,
  //   letterSpacing: 0.1,
  //   color: Color(0xffffffff),
  // ),
  static const textText16Regular = TextStyle(
    fontFamily: 'SF Pro Display',
    fontSize: 16.0,
    height: 1.25,
    fontWeight: FontWeight.w400,
  );
  static const textText16RegularBlack = TextStyle(
    fontFamily: 'SF Pro Display',
    fontSize: 16.0,
    height: 1.25,
    fontWeight: FontWeight.w400,
    color: Colors.black,
  );

  static const textSmall14Bold = TextStyle(
    fontFamily: 'SF Pro Display',
    fontSize: 14.0,
    height: 1.1,
    letterSpacing: 0.14,
    fontWeight: FontWeight.w400,
  );

  static const textSmall14Regular = TextStyle(
    fontFamily: 'SF Pro Display',
    fontSize: 14.0,
    height: 1.29,
    fontWeight: FontWeight.w400,
  );

  static const textText16MediumWhite = TextStyle(
    fontFamily: 'SF Pro Display',
    fontSize: 16,
    fontWeight: FontWeight.w500,
    height: 1.1,
    letterSpacing: 0.1,
    color: Color(0xffffffff),
  );

  static const textText14MediumBlack = TextStyle(
    fontFamily: 'SF Pro Display',
    fontSize: 14,
    fontWeight: FontWeight.w500,
    height: 1.0,
    letterSpacing: 0.14,
    color: Color(0xff000000),
  );

  static const textText14RegularBlack = TextStyle(
    fontFamily: 'SF Pro Display',
    fontSize: 14,
    fontWeight: FontWeight.w400,
    height: 1.0,
    letterSpacing: 0.14,
    color: Color(0xff000000),
  );

  static const textButton = TextStyle(
    fontFamily: 'SF Pro Display',
    fontSize: 16,
    fontWeight: FontWeight.w400,
    height: 1.1,
    letterSpacing: 0.1,
  );

  static const textSuperSmall12Medium = TextStyle(
    fontFamily: 'SF Pro Display',
    fontSize: 12.0,
    height: 1.33,
    fontWeight: FontWeight.w500,
  );

  static const textSuperSmall12Regular = TextStyle(
    fontFamily: 'SF Pro Display',
    fontSize: 12.0,
    height: 1.33,
    fontWeight: FontWeight.w400,
  );

  static const textDebugMedium = TextStyle(
    fontFamily: 'SF Pro Display',
    fontSize: 20.0,
    height: 1.2,
    fontWeight: FontWeight.w500,
  );

  static const textDebug = TextStyle(
    fontFamily: 'SF Pro Display',
    fontSize: 16.0,
    height: 1.25,
    fontWeight: FontWeight.w400,
  );

  AppTypography._();
}
