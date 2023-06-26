// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:test_flutter/assets/colors/colors.dart';
// import 'package:test_flutter/assets/themes/custom_colors.dart';
import 'package:test_flutter/assets/themes/text_style.dart';

class AppTheme {
  static ThemeData get lightTheme => _buildTheme();

  AppTheme._();

  // ignore: long-method
  static ThemeData _buildTheme() {
    final base = ThemeData.light();

    return base.copyWith(
      brightness: Brightness.light,
      primaryColor: AppColors.lightPrimaryColor,
      primaryColorLight: AppColors.lightPrimaryColorLight,
      primaryColorDark: AppColors.lightPrimaryColorLight,
      backgroundColor: AppColors.lightScaffoldBackgroundColor,
      scaffoldBackgroundColor: AppColors.lightScaffoldBackgroundColor,
      disabledColor: AppColors.lightPrimaryColorLight,
      primaryTextTheme: _buildPrimaryTextTheme(base.primaryTextTheme),
      textTheme: _buildTextTheme(base.textTheme),
      colorScheme: base.colorScheme.copyWith(
        background: AppColors.lightBackgroundColor,
        secondary: AppColors.lightSecondaryColor,
        onPrimary: AppColors.lightPrimaryColor,
        primary: AppColors.lightPrimaryColorDark,
      ),

      cardTheme: base.cardTheme.copyWith(color: AppColors.colorGrey2),
      // extensions: <ThemeExtension<dynamic>>[
      //   CustomColors.light,
      // ],
      appBarTheme: base.appBarTheme.copyWith(
        color: AppColors.lightPrimaryColor,
        iconTheme: base.appBarTheme.iconTheme?.copyWith(
          color: AppColors.colorBlack,
        ),
        titleTextStyle: AppTypography.textSubtitle18Medium.copyWith(
          color: AppColors.colorBlack,
        ),
        elevation: 0,
      ),
      tabBarTheme: base.tabBarTheme.copyWith(
        indicator: BoxDecoration(
          color: AppColors.lightSecondaryColor,
          borderRadius: BorderRadius.circular(40),
        ),
        labelStyle: AppTypography.textSmall14Bold,
        labelColor: AppColors.lightPrimaryColor,
        unselectedLabelColor: AppColors.lightBackgroundColor,
        unselectedLabelStyle: AppTypography.textSmall14Bold,
      ),
      bottomNavigationBarTheme: base.bottomNavigationBarTheme.copyWith(
        selectedIconTheme:
            base.bottomNavigationBarTheme.selectedIconTheme?.copyWith(
          color: AppColors.lightPrimaryColorDark,
        ),
        showSelectedLabels: true,
        selectedLabelStyle: AppTypography.textSuperSmall12Regular,
        showUnselectedLabels: true,
        unselectedLabelStyle: AppTypography.textSuperSmall12Regular,
        backgroundColor: AppColors.lightPrimaryColor,
        type: BottomNavigationBarType.fixed,
        selectedItemColor: AppColors.lightPrimaryColorDark,
        unselectedItemColor: AppColors.colorGrey,
      ),
      buttonTheme: base.buttonTheme.copyWith(
        buttonColor: AppColors.lightPrimaryColorDark,
        textTheme: ButtonTextTheme.primary,
        disabledColor: AppColors.lightPrimaryColorLight,
      ),
      iconTheme: base.iconTheme.copyWith(
        color: AppColors.lightIconColor,
        size: 24,
      ),
      sliderTheme: base.sliderTheme.copyWith(
        trackHeight: 2,
        thumbColor: AppColors.lightPrimaryColor,
        activeTrackColor: AppColors.lightAccentColor,
      ),
      floatingActionButtonTheme: base.floatingActionButtonTheme.copyWith(
        backgroundColor: AppColors.lightPrimaryColorDark,
        elevation: 0,
        highlightElevation: 0,
      ),
      inputDecorationTheme: base.inputDecorationTheme.copyWith(
        contentPadding:
            const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
        errorStyle: const TextStyle(fontSize: 0),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: BorderSide(
            color: AppColors.lightAccentColor.withOpacity(0.4),
            width: 2,
          ),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: const BorderSide(
            color: AppColors.colorGrey,
          ),
        ),
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: BorderSide(
            color: AppColors.lightErrorColor.withOpacity(0.4),
          ),
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: BorderSide(
            color: AppColors.lightErrorColor.withOpacity(0.4),
            width: 2,
          ),
        ),
      ),
      bottomSheetTheme: base.bottomSheetTheme.copyWith(
        backgroundColor: Colors.transparent,
      ),
    );
  }

  static TextTheme _buildTextTheme(TextTheme base) {
    return base.copyWith(
      headline6: AppTypography.textSubtitle18Medium
          .copyWith(color: AppColors.lightPrimaryColorDark),
      headline5: AppTypography.textText16Medium
          .copyWith(color: AppColors.lightSecondaryColor),
      headline4: AppTypography.textTitle24Bold
          .copyWith(color: AppColors.lightSecondaryColor),
      headline3: AppTypography.textLargeTitle32Bold
          .copyWith(color: AppColors.lightPrimaryColorDark),
      subtitle1: AppTypography.textSmall14Bold
          .copyWith(color: AppColors.lightSecondaryColor),
      subtitle2: AppTypography.textSmall14Bold
          .copyWith(color: AppColors.lightPrimaryColor),
      bodyText1: AppTypography.textSmall14Regular
          .copyWith(color: AppColors.lightSecondaryColor),
      bodyText2: AppTypography.textSmall14Regular
          .copyWith(color: AppColors.lightSecondaryVariant),
      caption: AppTypography.textSuperSmall12Regular
          .copyWith(color: AppColors.lightSecondaryColor),
      button: AppTypography.textButton,
    );
  }

  static TextTheme _buildPrimaryTextTheme(TextTheme base) {
    return base.copyWith(
      headline6: AppTypography.textSubtitle18Medium
          .copyWith(color: AppColors.lightBackgroundColor),
      subtitle1: AppTypography.textText16Regular
          .copyWith(color: AppColors.lightPrimaryColorDark),
      bodyText1: AppTypography.textSmall14Regular
          .copyWith(color: AppColors.lightAccentColor),
      bodyText2: AppTypography.textSmall14Regular
          .copyWith(color: AppColors.lightBackgroundColor),
      caption: AppTypography.textSuperSmall12Medium
          .copyWith(color: AppColors.colorWhite),
    );
  }
}
