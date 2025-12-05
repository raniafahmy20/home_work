import 'package:bmi_calculator_app/screens/bmi_calculator_page.dart';
import 'package:bmi_calculator_app/sections/height_section.dart';
import 'package:bmi_calculator_app/sections/weight_and_age_section.dart';
import 'package:bmi_calculator_app/widgets/bmi_result_card.dart';
import 'package:bmi_calculator_app/widgets/custom_button.dart';
import 'package:bmi_calculator_app/widgets/expanded_weight_and_age_item.dart';
import 'package:flutter/material.dart';

class BmiResultPage extends StatefulWidget {
  BmiResultPage({super.key});

  @override
  State<BmiResultPage> createState() => _BmiResultPageState();
}

class _BmiResultPageState extends State<BmiResultPage> {
  final int weight = ExpandedWeightAndAgeItem.cardValueWeight;

  final int height = HeightSection.currentHeught;

  @override
  Widget build(BuildContext context) {
    print(weight);
    print(height);
    return Scaffold(
      backgroundColor: Color(0xFF03051A),
      appBar: AppBar(
        title: Text('BMI CALCULATOR', style: TextStyle(color: Colors.white)),
        backgroundColor: Color(0xFF04061D),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        spacing: 20,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12),
            child: Text(
              'Your Result',
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 32,
              ),
            ),
          ),
          BmiResultCard(height: height, weight: weight),
          CustomButton(buttonName: 'Re-Calculator', page: BmiCalculatorPage()),
        ],
      ),
    );
  }
}
