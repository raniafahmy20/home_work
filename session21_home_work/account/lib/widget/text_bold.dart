import 'package:flutter/material.dart';

class TextBold extends StatelessWidget {
  final String title;
  const TextBold({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: TextStyle(
        fontSize: 28,
        fontWeight: FontWeight.bold,
        color: Colors.white,
        letterSpacing: 1.2,
      ),
    );
  }
}
