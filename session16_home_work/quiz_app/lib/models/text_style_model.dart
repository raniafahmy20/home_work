import 'package:flutter/material.dart';

class TextStyleModel {
  static TextStyle h1() {
    return TextStyle(
      fontSize: 24,
      fontFamily: 'Gilroy',
      color: Colors.white,
      fontWeight: FontWeight.w500,
    );
  }

  static TextStyle h2() {
    return TextStyle(
      fontSize: 18,
      fontFamily: 'Gilroy',
      color: Color(0xFF2B0063),
      fontWeight: FontWeight.w500,
    ); // medium
  }

  static TextStyle h3() {
    return TextStyle(
      fontSize: 16,
      fontFamily: 'Gilroy',
      color: Colors.white,
      fontWeight: FontWeight.w400,
    ); //regular
  }

  static TextStyle h4() {
    return TextStyle(
      fontSize: 12,
      fontFamily: 'Gilroy',
      color: Colors.white,
      fontWeight: FontWeight.w400,
    );
  }
}
