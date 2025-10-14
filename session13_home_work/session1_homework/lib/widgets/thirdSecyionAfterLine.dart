import 'package:flutter/material.dart';
import 'package:session1_homework/widgets/myContainer.dart';

class ThirdSectionAfterLine extends StatelessWidget {
  const ThirdSectionAfterLine({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        MyContainer(color: Color(0xFFB2DFDC), hight: 50, width: 179),
        MyContainer(color: Color(0xFF80CBC4), hight: 50, width: 179),
      ],
    );
  }
}
