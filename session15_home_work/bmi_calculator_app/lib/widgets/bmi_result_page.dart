import 'package:bmi_calculator_app/widgets/bmi_calculator_page.dart';
import 'package:bmi_calculator_app/widgets/bmi_result_card.dart';
import 'package:bmi_calculator_app/widgets/custom_button.dart';
import 'package:flutter/material.dart';

class BmiResultPage extends StatelessWidget {
  late int weight;
  late int height;
  BmiResultPage({super.key, required this.height, required this.weight});

  @override
  Widget build(BuildContext context) {
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
