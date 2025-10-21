import 'package:bmi_calculator_app/widgets/weight_and_age_item.dart';
import 'package:flutter/material.dart';

class WeightAndAgeSection extends StatelessWidget {
  const WeightAndAgeSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Row(
        children: [
          WeightAndAgeItem(cardName: 'WEIGHT'),
          SizedBox(width: 15),
          WeightAndAgeItem(cardName: 'AGE', cardValueAge: 45),
        ],
      ),
    );
  }
}
