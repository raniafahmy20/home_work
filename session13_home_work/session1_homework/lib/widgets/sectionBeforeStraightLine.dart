import 'package:flutter/material.dart';
import 'package:session1_homework/widgets/myContainer.dart';

class SectionBeforeLine extends StatelessWidget {
  const SectionBeforeLine({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        MyContainer(color: Color(0xFFE4F2FD), hight: 130, width: 400),
        Row(
          children: [
            MyContainer(color: Color(0xFFE0E0E0), hight: 20, width: 20),
            MyContainer(color: Color(0xFFE0E0E0), hight: 20, width: 337),
          ],
        ),
      ],
    );
  }
}
