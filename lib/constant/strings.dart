import 'package:flutter/material.dart';

class ManropeFont {
  static const String family = 'Manrope';

  static TextStyle getSemiStyle({
    FontWeight fontWeight = FontWeight.w600,
    FontStyle fontStyle = FontStyle.normal,
    double fontSize = 14.0,
    Color color = Colors.black,
  }) {
    return TextStyle(
      fontFamily: family,
      fontWeight: fontWeight,
      fontStyle: fontStyle,
      fontSize: fontSize,
      color: color,
    );
  }

  static TextStyle getBoldStyle({
    FontWeight fontWeight = FontWeight.w700,
    FontStyle fontStyle = FontStyle.normal,
    double fontSize = 14.0,
    Color color = Colors.black,
  }) {
    return TextStyle(
      fontFamily: family,
      fontWeight: fontWeight,
      fontStyle: fontStyle,
      fontSize: fontSize,
      color: color,
    );
  }

  static TextStyle getExtraBoldStyle({
    FontWeight fontWeight = FontWeight.w900,
    FontStyle fontStyle = FontStyle.normal,
    double fontSize = 14.0,
    Color color = Colors.black,
  }) {
    return TextStyle(
      fontFamily: family,
      fontWeight: fontWeight,
      fontStyle: fontStyle,
      fontSize: fontSize,
      color: color,
    );
  }

  static TextStyle getRegularStyle({
    FontWeight fontWeight = FontWeight.w400,
    FontStyle fontStyle = FontStyle.normal,
    double fontSize = 14.0,
    Color color = Colors.black,
  }) {
    return TextStyle(
      fontFamily: family,
      fontWeight: fontWeight,
      fontStyle: fontStyle,
      fontSize: fontSize,
      color: color,
    );
  }

  static TextStyle getMediumStyle({
    FontWeight fontWeight = FontWeight.w700,
    FontStyle fontStyle = FontStyle.normal,
    double fontSize = 14.0,
    Color color = Colors.black,
  }) {
    return TextStyle(
      fontFamily: family,
      fontWeight: fontWeight,
      fontStyle: fontStyle,
      fontSize: fontSize,
      color: color,
    );
  }
}
