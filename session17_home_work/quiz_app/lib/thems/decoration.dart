import 'package:flutter/material.dart';

class DecorationModel {
  static BoxDecoration mainDecoratuoin() {
    return BoxDecoration(
      gradient: LinearGradient(
        colors: [Color(0xFF060B26), Color(0xFF1A1F37)],
        begin: Alignment.topLeft,
        end: Alignment.bottomRight,
      ),
    );
  }

  static BoxDecoration secondryDecoratuoin() {
    return BoxDecoration(
      borderRadius: BorderRadius.circular(20),
      gradient: LinearGradient(
        colors: [Color(0xFFB8B2FF), Color(0xFFC6C2F8)],
        begin: Alignment.topLeft,
        end: Alignment.bottomRight,
      ),
    );
  }
}
