import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class TextStyleModel {
  static TextStyle medium24H1(Color color) {
    return TextStyle(
      fontSize: 24,
      fontWeight: FontWeight.w500,
      fontFamily: 'Gilroy',
      color: color,
    );
  }

  static TextStyle medium18H2(Color color) {
    return TextStyle(
      fontSize: 18,
      fontWeight: FontWeight.w500,
      fontFamily: 'Gilroy',
      color: color,
    );
  }

  static TextStyle medium16(Color color) {
    return TextStyle(
      fontSize: 16,
      fontWeight: FontWeight.w500,
      fontFamily: 'Gilroy',
      color: color,
    );
  }

  static TextStyle regular16H3(Color color) {
    return TextStyle(
      fontSize: 16,
      fontWeight: FontWeight.w400,
      fontFamily: 'Gilroy',
      color: color,
    );
  }

  static TextStyle regular12H4(Color color) {
    return TextStyle(
      fontSize: 12,
      fontWeight: FontWeight.w100,
      fontFamily: 'Gilroy',
      color: color,
    );
  }
}
