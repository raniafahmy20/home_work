import 'package:flutter/material.dart';

class BmiResultCard extends StatelessWidget {
  late int height;
  late int weight;
  late String stateBmi;

  late double heightInMeter = height / 100;
  late double bmiResult = (weight / (heightInMeter * heightInMeter)).toDouble();
  BmiResultCard({super.key, required this.height, required this.weight});
  String get myBmiClaculate {
    if (bmiResult < 18.5) {
      stateBmi = 'Underweight';
    } else if (bmiResult <= 24.9) {
      stateBmi = 'Normal';
    } else if (bmiResult <= 29.9) {
      stateBmi = 'Overweight';
    } else if (bmiResult <= 34.9) {
      stateBmi = 'Obesity Class I';
    } else if (bmiResult <= 39.9) {
      stateBmi = 'Obesity Class II';
    } else {
      stateBmi = 'Obesity Class III';
    }
    return stateBmi;
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12),
      child: Card(
        color: Color(0xFF17172F),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 35, vertical: 50),
          child: Column(
            spacing: 30,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(myBmiClaculate, style: TextStyle(color: Colors.green)),
              Text(
                '${bmiResult.toStringAsFixed(2)}',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 44,
                ),
              ),
              const SizedBox(height: 20),
              Text(
                'You Have A $myBmiClaculate Body weight.',
                style: TextStyle(
                  color: Color(0xFF8B8D99),
                  fontSize: 13,
                  fontWeight: FontWeight.w200,
                ),
              ),
              const SizedBox(height: 50),
            ],
          ),
        ),
      ),
    );
  }
}
