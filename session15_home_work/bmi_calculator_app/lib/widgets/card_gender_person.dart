import 'package:flutter/material.dart';

class CardGenderPerson extends StatelessWidget {
  late String cardName;
  late IconData cardIconData;
  late Color cardBackgroundColor;
  CardGenderPerson({
    super.key,
    required this.cardName,
    required this.cardIconData,
    required this.cardBackgroundColor,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      color: cardBackgroundColor,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 15),
        child: Column(
          spacing: 1,
          children: [
            Icon(cardIconData, color: Colors.white, size: 120),
            Text(cardName, style: TextStyle(color: Color(0xFF8B8D99))),
          ],
        ),
      ),
    );
  }
}
