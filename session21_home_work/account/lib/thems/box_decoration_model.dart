import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

class BoxDecorationModel {
  static BoxDecoration decorationLoginScreen() {
    return BoxDecoration(
      gradient: LinearGradient(
        begin: Alignment.topLeft,
        end: Alignment.bottomRight,
        colors: [
          const Color(0xFF667eea),
          const Color(0xFF764ba2),
          const Color(0xFFf093fb),
        ],
      ),
    );
  }

  static BoxDecoration decorationSignUpScreen() {
    return BoxDecoration(
      gradient: LinearGradient(
        begin: Alignment.topRight,
        end: Alignment.bottomLeft,
        colors: [
          const Color(0xFF11998e),
          const Color(0xFF38ef7d),
          const Color(0xFF06beb6),
        ],
      ),
    );
  }

  static BoxDecoration decorationFormScreen() {
    return BoxDecoration(
      color: Colors.white.withOpacity(0.95),
      borderRadius: BorderRadius.circular(20),
      boxShadow: [
        BoxShadow(
          color: Colors.black.withOpacity(0.1),
          blurRadius: 30,
          offset: const Offset(0, 15),
        ),
      ],
    );
  }

  static BoxDecoration decorationIconView() {
    return BoxDecoration(
      color: Colors.white.withOpacity(0.2),
      shape: BoxShape.circle,
      boxShadow: [
        BoxShadow(
          color: Colors.black.withOpacity(0.1),
          blurRadius: 20,
          offset: const Offset(0, 10),
        ),
      ],
    );
  }
}
