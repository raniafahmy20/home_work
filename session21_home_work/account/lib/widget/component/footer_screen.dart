import 'package:account/widget/custom/text_button_underline.dart';
import 'package:flutter/material.dart';

class FoterScreen extends StatelessWidget {
  final String title;
  final String pageName;
  final VoidCallback onPressed;
  const FoterScreen({
    super.key,
    required this.title,
    required this.pageName,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          title,
          style: TextStyle(color: Colors.white.withOpacity(0.9), fontSize: 15),
        ),
        TextButtonUnderline(onPressed: onPressed, title: pageName),
      ],
    );
  }
}
