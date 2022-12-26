import 'package:flutter/material.dart';

import 'package:fe_flutter/presentation/resources/color_manager.dart';
import 'package:fe_flutter/presentation/resources/font_manager.dart';
import 'package:fe_flutter/presentation/resources/values_manager.dart';

ThemeData getApplicationTheme() {
  return ThemeData(
    // main colors of the app
    primaryColor: ColorManager.primary,
    primaryColorLight: ColorManager.primaryOpacity70,
    primaryColorDark: ColorManager.darkPrimary,

    // ripple color
    splashColor: ColorManager.primaryOpacity70,

    // card view theme
    cardTheme: const CardTheme(
      color: ColorManager.white,
      shadowColor: ColorManager.grey,
      elevation: AppSize.s4,
    ),

    // App bar theme
    appBarTheme: AppBarTheme(
      centerTitle: true,
      color: ColorManager.primary,
      elevation: AppSize.s4,
      shadowColor: ColorManager.primaryOpacity70,
      titleTextStyle:
          getRegularStyle(color: ColorManager.white, fontSize: FontSize.fs16),
    ),

    // button theme
    buttonTheme: const ButtonThemeData(
      shape: StadiumBorder(),
      disabledColor: ColorManager.grey1,
      buttonColor: ColorManager.primary,
      splashColor: ColorManager.primaryOpacity70,
    ),

    // Text theme
    textTheme: TextTheme(
      headline1: getLightStyle(
        fontSize: FontSize.fs48,
        lineHeight: 2.0,
        color: ColorManager.primary,
      ),
      headline2: getRegularStyle(
        fontSize: FontSize.fs36,
        lineHeight: 2.0,
        color: ColorManager.primary,
      ),
      headline3: getMediumStyle(
        fontSize: FontSize.fs32,
        lineHeight: 2.0,
        color: ColorManager.primary,
      ),
      headline4: getSemiBoldStyle(
        fontSize: FontSize.fs24,
        lineHeight: 1.75,
        color: ColorManager.primary,
      ),
      headline5: getBoldStyle(
        fontSize: FontSize.fs20,
        lineHeight: 1.75,
        color: ColorManager.primary,
      ),
      headline6: getBoldStyle(
        fontSize: FontSize.fs16,
        lineHeight: 1.75,
        color: ColorManager.primary,
      ),
      subtitle1: getMediumStyle(
        color: ColorManager.lightGrey,
        fontSize: FontSize.fs16,
      ),
      subtitle2: getMediumStyle(
        color: ColorManager.primary,
        fontSize: FontSize.fs16,
      ),
      bodyText1: getRegularStyle(
        fontSize: FontSize.fs16,
        lineHeight: 1.75,
        color: ColorManager.primary,
      ),
      bodyText2: getLightStyle(
        fontSize: FontSize.fs16,
        lineHeight: 1.75,
        color: ColorManager.primary,
      ),
      caption: getRegularStyle(
        fontSize: FontSize.fs12,
        color: ColorManager.primary,
      ),
    ),

    // input decoration theme (text form field)
    inputDecorationTheme: InputDecorationTheme(
      contentPadding: const EdgeInsets.all(AppPadding.p8),
      // hint style
      hintStyle: getRegularStyle(color: ColorManager.grey1),

      // label style
      labelStyle: getMediumStyle(color: ColorManager.darkGrey),
      // error style
      errorStyle: getRegularStyle(color: ColorManager.error),

      // enabled border
      enabledBorder: const OutlineInputBorder(
        borderSide: BorderSide(color: ColorManager.grey, width: AppSize.s1_5),
        borderRadius: BorderRadius.all(Radius.circular(AppSize.s8)),
      ),

      // focused border
      focusedBorder: const OutlineInputBorder(
        borderSide:
            BorderSide(color: ColorManager.primary, width: AppSize.s1_5),
        borderRadius: BorderRadius.all(Radius.circular(AppSize.s8)),
      ),

      // error border
      errorBorder: const OutlineInputBorder(
        borderSide: BorderSide(color: ColorManager.error, width: AppSize.s1_5),
        borderRadius: BorderRadius.all(Radius.circular(AppSize.s8)),
      ),
      // focused error border
      focusedErrorBorder: const OutlineInputBorder(
        borderSide:
            BorderSide(color: ColorManager.primary, width: AppSize.s1_5),
        borderRadius: BorderRadius.all(Radius.circular(AppSize.s8)),
      ),
    ),
  );
}
