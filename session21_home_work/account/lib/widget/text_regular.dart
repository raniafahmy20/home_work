import 'package:flutter/material.dart';

class TextRegular extends StatelessWidget {
  final String title;
  const TextRegular({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: TextStyle(
        fontSize: 16,
        color: Colors.white.withOpacity(0.9),
        letterSpacing: 0.5,
      ),
    );
  }
}
