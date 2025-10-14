import 'package:flutter/material.dart';
import 'package:session1_homework/widgets/myContainer.dart';

class SecondSectionAfterLine extends StatelessWidget {
  const SecondSectionAfterLine({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        MyContainer(color: Color(0xFFF3E5F6), hight: 50, width: 400),
        Row(
          children: [
            MyContainer(color: Color(0xFFE1BEE8), hight: 50, width: 100),
            Column(
              children: [
                MyContainer(color: Color(0xFFCF93D9), hight: 21, width: 80),
                MyContainer(color: Color(0xFFCF93D9), hight: 21, width: 80),
              ],
            ),
            MyContainer(color: Color(0xFFE1BEE8), hight: 50, width: 80),
          ],
        ),
      ],
    );
  }
}
