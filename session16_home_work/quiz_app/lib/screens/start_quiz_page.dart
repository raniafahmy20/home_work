import 'package:flutter/material.dart';

import 'package:quiz_app/models/question_model.dart';
import 'package:quiz_app/models/text_style_model.dart';
import 'package:quiz_app/screens/questions_page.dart';
import 'package:quiz_app/widgets/custom_button.dart';

class StartQuizPage extends StatelessWidget {
  QuizApp quizApp = QuizApp();
  StartQuizPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Color(0xFF2B0063),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.bottomLeft,
            end: Alignment.topRight,

            colors: [Color(0xFF060B26), Color(0xFF1A1F37)],
          ),
        ),
        child: Container(
          decoration: BoxDecoration(
            image: DecorationImage(image: AssetImage('assets/GRADINET.png')),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 50),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Good morning,', style: TextStyleModel.h3()),
                Text('New topic is waiting', style: TextStyleModel.h1()),
                Spacer(),
                Center(
                  child: Image(image: AssetImage('assets/home_image.png')),
                ),
                Spacer(),
                CustomButton(
                  page: QuestionsPage(quizApp: quizApp),
                  text: 'Start Quiz',
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
