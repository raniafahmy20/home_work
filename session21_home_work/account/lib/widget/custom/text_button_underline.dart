import 'package:account/thems/text_style_model.dart';
import 'package:flutter/material.dart';

class TextButtonUnderline extends StatelessWidget {
  final VoidCallback onPressed;
  final String title;
  const TextButtonUnderline({
    super.key,
    required this.onPressed,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      child: Text(title, style: TextStyleModel.textStyleTextButtonUnderLine()),
    );
  }
}
