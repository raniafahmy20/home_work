import 'package:flutter/material.dart';
import 'package:quiz_app/screens/questions_page.dart';
import 'package:quiz_app/widgets/custom_button.dart';

class StartQuizPage extends StatelessWidget {
  const StartQuizPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF2B0063),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Color(0xFF000000),
              Color(0xFF2B0063), // بنفسجي غامق

              Color(0xFF2B0063),
              Color(0xFF000000), // بنفسجي فاتح
            ],
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 50),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Good morning,',
                style: TextStyle(fontSize: 16, color: Colors.white),
              ),
              Text(
                'New topic is waiting',
                style: TextStyle(fontSize: 24, color: Colors.white),
              ),
              Spacer(),
              CustomButton(page: QuestionsPage(), text: 'Start Quiz'),
            ],
          ),
        ),
      ),
    );
  }
}
