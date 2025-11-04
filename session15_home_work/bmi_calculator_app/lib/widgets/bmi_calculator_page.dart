import 'package:bmi_calculator_app/widgets/bmi_result_page.dart';
import 'package:bmi_calculator_app/widgets/custom_button.dart';
import 'package:bmi_calculator_app/widgets/gender_section.dart';
import 'package:bmi_calculator_app/widgets/height_section.dart';

import 'package:bmi_calculator_app/widgets/expanded_weight_and_age_item.dart';
import 'package:bmi_calculator_app/widgets/weight_and_age_section.dart';
import 'package:flutter/material.dart';

class BmiCalculatorPage extends StatelessWidget {
  const BmiCalculatorPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'BMI CALCULATOR',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Color(0xFF04061D),
      ),
      backgroundColor: Color(0xFF03051A),
      body: Column(
        spacing: 15,
        children: [
          const GenderSection(),
          const HeightSection(),
          const WeightAndAgeSection(),
          CustomButton(
            buttonName: 'CALCULATE',
            page: BmiResultPage(
              height: HeightSection.currentHeught,
              weight: ExpandedWeightAndAgeItem.cardValueWeight,
            ),
          ),
        ],
      ),
    );
  }
}
