import 'package:flutter/material.dart';
import 'package:quiz_app/models/question_model.dart';

class ResultQuizPage extends StatelessWidget {
  QuizApp quizApp;
  ResultQuizPage({super.key, required this.quizApp});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.bottomLeft,
            end: Alignment.topRight,

            colors: [Color(0xFF060B26), Color(0xFF1A1F37)],
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 200),
          child: Center(
            child: Card(
              color: Colors.white,
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 30,
                  vertical: 50,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('your result is:'),
                    Text('${quizApp.calculateCorrectAnswer()}'),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
