import 'package:flutter/material.dart';
import 'package:session2_homework/widgets/buttonCustom.dart';

class HelloSection extends StatelessWidget {
  const HelloSection({super.key});
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Color(0xFF8160B9),
        borderRadius: BorderRadius.circular(8),
      ),
      width: 350,
      height: 140,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 8),
        child: Column(
          spacing: 7,

          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Text(
                  'Hello!',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Icon(Icons.front_hand_rounded, color: Color(0xFFFFCD53)),
              ],
            ),
            Text(
              'Try Your best to build this ui',
              style: TextStyle(color: Color(0xFF9F9F9F)),
            ),
            ButtonCustom(
              actionName: 'Get Started',
              colorButton: Color(0xFF673BB7),
              height: 30,
              width: 330,
            ),
          ],
        ),
      ),
    );
  }
}
