import 'package:flutter/material.dart';

class TextStyleModel {
  static TextStyle bold({required double fontSize, required Color color}) {
    return TextStyle(
      fontFamily: 'Nunito',
      color: color,
      fontSize: fontSize,
      fontWeight: FontWeight.bold,
    );
  }

  static TextStyle medium({required double fontSize, required Color color}) {
    return TextStyle(
      fontFamily: 'Nunito',
      color: color,
      fontSize: fontSize,
      fontWeight: FontWeight.w500,
    );
  }
}
