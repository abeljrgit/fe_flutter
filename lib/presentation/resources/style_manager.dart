import 'package:flutter/material.dart';

import 'package:fe_flutter/presentation/resources/font_manager.dart';

TextStyle _getTextStyle(
  double fs,
  String ff,
  FontWeight fw,
  Color c,
) {
  return TextStyle(
    fontSize: fs,
    fontFamily: ff,
    fontWeight: fw,
    color: c,
  );
}

// light text style
TextStyle getLightStyle({
  double fontSize = FontSize.fs12,
  required Color color,
}) {
  return _getTextStyle(
    fontSize,
    FontConstant.fontFamily,
    FontWeightManager.light300,
    color,
  );
}

// regular style
TextStyle getRegularStyle({
  double fontSize = FontSize.fs12,
  required Color color,
}) {
  return _getTextStyle(
    fontSize,
    FontConstant.fontFamily,
    FontWeightManager.regular400,
    color,
  );
}

// mediume style
TextStyle getMediumStyle({
  double fontSize = FontSize.fs12,
  required Color color,
}) {
  return _getTextStyle(
    fontSize,
    FontConstant.fontFamily,
    FontWeightManager.medium500,
    color,
  );
}

// semibold text style
TextStyle getSemiBoldStyle({
  double fontSize = FontSize.fs12,
  required Color color,
}) {
  return _getTextStyle(
    fontSize,
    FontConstant.fontFamily,
    FontWeightManager.semibold600,
    color,
  );
}

// bold text style
TextStyle getBoldStyle({
  double fontSize = FontSize.fs12,
  required Color color,
}) {
  return _getTextStyle(
    fontSize,
    FontConstant.fontFamily,
    FontWeightManager.bold700,
    color,
  );
}
