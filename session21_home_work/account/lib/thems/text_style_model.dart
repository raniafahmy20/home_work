import 'package:flutter/material.dart';

class TextStyleModel {
  static TextStyle textStyleTitleWidget() {
    return TextStyle(
      fontSize: 28,
      fontWeight: FontWeight.bold,
      color: Colors.white,
      letterSpacing: 1.2,
    );
  }

  static TextStyle textStyleTextButtonUnderLine() {
    return TextStyle(
      color: Colors.white,
      fontSize: 14,
      fontWeight: FontWeight.bold,
      decoration: TextDecoration.underline,
      decorationColor: Colors.white,
    );
  }

  static TextStyle textStyleSubTitle() {
    return TextStyle(
      fontSize: 16,
      color: Colors.white.withOpacity(0.9),
      letterSpacing: 0.5,
    );
  }

  static TextStyle textStyleTextInButton() {
    return TextStyle(
      fontSize: 18,
      fontWeight: FontWeight.bold,
      letterSpacing: 1.2,
    );
  }
}
