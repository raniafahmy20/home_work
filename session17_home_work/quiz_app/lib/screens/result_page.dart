import 'package:flutter/material.dart';
import 'package:quiz_app/models/quiz_app.dart';
import 'package:quiz_app/screens/home_page.dart';
import 'package:quiz_app/screens/question_page.dart';
import 'package:quiz_app/thems/asset.dart';
import 'package:quiz_app/thems/decoration.dart';
import 'package:quiz_app/thems/text_style.dart';
import 'package:quiz_app/widgets/custom_button.dart';

class ResultPage extends StatelessWidget {
  final QuizApp quizApp;
  const ResultPage({super.key, required this.quizApp});

  @override
  Widget build(BuildContext context) {
    double correctAnswers = quizApp.calculateResult();
    double numberOfQuestions = quizApp.questions.length.toDouble();
    double percent =
        (quizApp.calculateResult() / quizApp.questions.length) * 100;
    return Scaffold(
      body: Container(
        decoration: DecorationModel.mainDecoratuoin(),
        child: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(AssetModel.questionPageHome),
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Quiz Results",
                style: TextStyleModel.medium24H1(Colors.white),
              ),
              const SizedBox(height: 20),
              Container(
                height: 140,
                width: 140,
                decoration: BoxDecoration(
                  color: Colors.grey,
                  shape: BoxShape.circle,
                ),
                child: Center(
                  child: Text(
                    "$correctAnswers\n/$numberOfQuestions",
                    textAlign: TextAlign.center,
                    style: TextStyleModel.medium24H1(Colors.white),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              Text(
                "${percent.toStringAsFixed(0)}%",
                style: TextStyleModel.medium24H1(Colors.white),
              ),
              const SizedBox(height: 10),
              Text(
                "Keep Practicing!",
                style: TextStyleModel.medium18H2(Colors.white),
              ),
              const SizedBox(height: 30),
              const Icon(Icons.check, color: Colors.white, size: 70),
              const SizedBox(height: 50),
              CustomButton(buttonName: 'Back to Home', page: HomePage()),
              const SizedBox(height: 15),
              CustomButton(buttonName: 'Restart Quiz', page: QuestionPage()),
            ],
          ),
        ),
      ),
    );
  }
}
