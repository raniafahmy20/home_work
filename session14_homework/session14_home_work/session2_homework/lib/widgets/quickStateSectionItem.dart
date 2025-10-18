import 'package:flutter/material.dart';

class QuickStateSectionItem extends StatelessWidget {
  late Widget icon;
  late String number;
  late String describtion;

  QuickStateSectionItem({
    super.key,
    required this.icon,
    required this.number,
    required this.describtion,
  });

  @override
  Widget build(BuildContext context) {
    return Material(
      borderRadius: BorderRadius.circular(10),
      elevation: 25,
      child: Container(
        width: 80,
        height: 80,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            icon,
            Text(number),
            Text(
              describtion,
              style: TextStyle(color: Color(0xFF9F9F9F), fontSize: 8),
            ),
          ],
        ),
      ),
    );
  }
}
