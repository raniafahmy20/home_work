import 'package:flutter/material.dart';

class MyContainer extends StatelessWidget {
  late Color color;
  late double width;
  late double hight;
  MyContainer({required this.color, required this.hight, required this.width});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 4),
      child: Container(width: width, height: hight, color: color),
    );
  }
}
