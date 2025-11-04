import 'package:bmi_calculator_app/widgets/card_gender_person.dart';
import 'package:flutter/material.dart';

class GenderSection extends StatefulWidget {
  const GenderSection({super.key});

  @override
  State<GenderSection> createState() => _GenderPersonState();
}

class _GenderPersonState extends State<GenderSection> {
  Color activeColor = Color(0xFF090B24);

  Color inActive = Color(0xFF17172F);

  late Color maleColor = inActive;

  late Color femaleColor = inActive;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsetsGeometry.symmetric(horizontal: 10),
      child: Row(
        children: [
          Expanded(
            child: InkWell(
              onTap: () {
                setState(() {
                  maleColor = activeColor;
                  femaleColor = inActive;
                });
              },
              child: CardGenderPerson(
                cardName: 'MALE',
                cardIconData: Icons.male,
                cardBackgroundColor: maleColor,
              ),
            ),
          ),

          SizedBox(width: 15),
          Expanded(
            child: InkWell(
              onTap: () {
                setState(() {
                  femaleColor = activeColor;
                  maleColor = inActive;
                });
              },
              child: CardGenderPerson(
                cardName: 'FEMALE',
                cardIconData: Icons.female,
                cardBackgroundColor: femaleColor,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
