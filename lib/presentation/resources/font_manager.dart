import 'package:flutter/material.dart';

class FontConstant {
  static const String fontFamily = 'Poppins';
}

class FontWeightManager {
  static const FontWeight thin100 = FontWeight.w100;
  static const FontWeight extraLight200 = FontWeight.w200;
  static const FontWeight light300 = FontWeight.w300;
  static const FontWeight regular400 = FontWeight.w400;
  static const FontWeight medium500 = FontWeight.w500;
  static const FontWeight semibold600 = FontWeight.w600;
  static const FontWeight bold700 = FontWeight.w700;
  static const FontWeight extraBold800 = FontWeight.w800;
  static const FontWeight black900 = FontWeight.w900;
}

class FontSize {
  static const double fs12 = 12.0;
  static const double fs14 = 14.0;
  static const double fs16 = 16.0;
  static const double fs18 = 18.0;
  static const double fs20 = 20.0;
  static const double fs22 = 22.0;
  static const double fs24 = 24.0;
  static const double fs32 = 32.0;
  static const double fs36 = 36.0;
  static const double fs48 = 48.0;
}

TextStyle _getTextStyle(
  double fs,
  String ff,
  FontWeight fw,
  double lh,
  Color c,
) {
  return TextStyle(
    fontSize: fs,
    fontFamily: ff,
    fontWeight: fw,
    height: lh,
    color: c,
  );
}

// thin text style
TextStyle getThinStyle({
  double fontSize = FontSize.fs12,
  double lineHeight = 1.0,
  required Color color,
}) {
  return _getTextStyle(
    fontSize,
    FontConstant.fontFamily,
    FontWeightManager.thin100,
    lineHeight,
    color,
  );
}

// extralight text style
TextStyle getExtraLightStyle({
  double fontSize = FontSize.fs12,
  double lineHeight = 1.0,
  required Color color,
}) {
  return _getTextStyle(
    fontSize,
    FontConstant.fontFamily,
    FontWeightManager.extraLight200,
    lineHeight,
    color,
  );
}

// light text style
TextStyle getLightStyle({
  double fontSize = FontSize.fs12,
  double lineHeight = 1.0,
  required Color color,
}) {
  return _getTextStyle(
    fontSize,
    FontConstant.fontFamily,
    FontWeightManager.light300,
    lineHeight,
    color,
  );
}

// regular style
TextStyle getRegularStyle({
  double fontSize = FontSize.fs12,
  double lineHeight = 1.0,
  required Color color,
}) {
  return _getTextStyle(
    fontSize,
    FontConstant.fontFamily,
    FontWeightManager.regular400,
    lineHeight,
    color,
  );
}

// mediume style
TextStyle getMediumStyle({
  double fontSize = FontSize.fs12,
  double lineHeight = 1.0,
  required Color color,
}) {
  return _getTextStyle(
    fontSize,
    FontConstant.fontFamily,
    FontWeightManager.medium500,
    lineHeight,
    color,
  );
}

// semibold text style
TextStyle getSemiBoldStyle({
  double fontSize = FontSize.fs12,
  double lineHeight = 1.0,
  required Color color,
}) {
  return _getTextStyle(
    fontSize,
    FontConstant.fontFamily,
    FontWeightManager.semibold600,
    lineHeight,
    color,
  );
}

// bold text style
TextStyle getBoldStyle({
  double fontSize = FontSize.fs12,
  double lineHeight = 1.0,
  required Color color,
}) {
  return _getTextStyle(
    fontSize,
    FontConstant.fontFamily,
    FontWeightManager.bold700,
    lineHeight,
    color,
  );
}

// extrabold text style
TextStyle getExtraBoldStyle({
  double fontSize = FontSize.fs12,
  double lineHeight = 1.0,
  required Color color,
}) {
  return _getTextStyle(
    fontSize,
    FontConstant.fontFamily,
    FontWeightManager.extraBold800,
    lineHeight,
    color,
  );
}

// black text style
TextStyle getBlackStyle({
  double fontSize = FontSize.fs12,
  double lineHeight = 1.0,
  required Color color,
}) {
  return _getTextStyle(
    fontSize,
    FontConstant.fontFamily,
    FontWeightManager.black900,
    lineHeight,
    color,
  );
}
