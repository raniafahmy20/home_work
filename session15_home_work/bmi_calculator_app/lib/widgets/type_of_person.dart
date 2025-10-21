import 'package:bmi_calculator_app/widgets/expended_card_type_of_person.dart';
import 'package:flutter/material.dart';

class TypeOfPerson extends StatelessWidget {
  const TypeOfPerson({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsetsGeometry.symmetric(horizontal: 10),
      child: Row(
        children: [
          ExpendedCardTypeOfPerson(
            cardName: 'MALE',
            cardIconData: Icons.male,
            cardBackgroundColor: Color(0xFF090B24),
          ),
          SizedBox(width: 15),
          ExpendedCardTypeOfPerson(
            cardName: 'FEMALE',
            cardIconData: Icons.female,
            cardBackgroundColor: Color(0xFF17172F),
          ),
        ],
      ),
    );
  }
}
