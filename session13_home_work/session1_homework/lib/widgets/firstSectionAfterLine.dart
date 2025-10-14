import 'package:flutter/material.dart';
import 'package:session1_homework/widgets/myContainer.dart';

class FirstSectionAfterLine extends StatelessWidget {
  const FirstSectionAfterLine({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Stack(
          children: [
            MyContainer(color: Color(0xFFE7F6EA), hight: 70, width: 179),
            Column(
              children: [
                MyContainer(color: Color(0xFFA5D6A7), hight: 30, width: 179),
                MyContainer(color: Color(0xFFA5D6A7), hight: 30, width: 179),
              ],
            ),
          ],
        ),

        Stack(
          children: [
            MyContainer(color: Color(0xFFFFF2DF), hight: 69, width: 175),
            Row(
              children: [
                MyContainer(color: Color(0xFFFFCC80), hight: 69, width: 85),
                MyContainer(color: Color(0xFFFFCC80), hight: 69, width: 85),
              ],
            ),
          ],
        ),
      ],
    );
  }
}
