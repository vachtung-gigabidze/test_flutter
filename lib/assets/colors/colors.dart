import 'package:flutter/material.dart';

/// Цвета приложения
/// У темной и светлой темы в некоторых случаях будут общие цвета, поэтому определение цветов
/// сделала публичным
class AppColors {
  /// цвета и названия из макета фигмы
  static const colorWhite = Colors.white;
  static const colorBlack = Colors.black;
  static const colorGrey = Color(0xffA5A9B2);
  static const colorGrey2 = Color(0xffF8F7F5);
  static const colorBlue = Color(0xff3364E0);
  static const colorGrey3 = Color(0xffE8E9EC);

  ///светлая тема
  static const Color lightPrimaryColor = colorWhite;
  static const Color lightPrimaryColorLight = colorGrey2;
  static const Color lightPrimaryColorDark = colorBlue;
  static const Color lightOnPrimaryColor = colorBlue;
  static const Color lightAccentColor = colorGrey2;
  static const Color lightScaffoldBackgroundColor = colorWhite;
  // static const Color lightScaffoldBackgroundColor = colorWhite;
  static const Color lightErrorColor = colorBlue;
  static const Color lightBackgroundColor = colorWhite;
  static const Color lightSecondaryColor = colorGrey;
  static const Color lightSecondaryVariant = colorBlack;
  static const Color lightDividerColor = colorGrey;
  static const Color lightIconColor = colorBlack;
  static const Color lightButtonColor = colorBlue;

  ///Тёмная тема
  // static const Color darkPrimaryColor = colorBlackMain;
  // static const Color darkPrimaryColorLight = colorBlackMain;
  // static const Color darkPrimaryColorDark = colorBlackDark;
  // static const Color darkOnPrimaryColor = colorWhite;
  // static const Color darkAccentColor = colorBlackGreen;
  // static const Color darkScaffoldBackgroundColor = colorBlackMain;
  // static const Color darkErrorColor = colorBlackError;
  // static const Color darkBackgroundColor = colorInactiveBlack;
  // static const Color darkSecondaryColor = colorSecondary;
  // static const Color darkSecondaryVariant = colorSecondary2;
  // static const Color darkDividerColor = colorInactiveBlack;
  // static const Color darkIconColor = colorWhite;
  // static const Color darkButtonColor = colorBlackGreen;

  AppColors._();
}
