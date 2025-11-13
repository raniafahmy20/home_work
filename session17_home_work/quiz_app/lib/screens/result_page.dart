import 'package:flutter/material.dart';
import 'package:quiz_app/models/quiz_app.dart';
import 'package:quiz_app/screens/home_page.dart';
import 'package:quiz_app/screens/question_page.dart';
import 'package:quiz_app/thems/asset.dart';
import 'package:quiz_app/thems/color.dart';
import 'package:quiz_app/thems/decoration.dart';
import 'package:quiz_app/thems/text_style.dart';
import 'package:quiz_app/widgets/custom_button.dart';

class ResultPage extends StatelessWidget {
  final QuizApp quizApp;
  const ResultPage({super.key, required this.quizApp});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: DecorationModel.mainDecoratuoin(),
      child: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(AssetModel.questionPageHome),
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          spacing: 20,
          children: [
            CircleAvatar(
              radius: 70,
              backgroundColor: Colors.white,
              child: Padding(
                padding: const EdgeInsets.only(top: 20),
                child: Column(
                  children: [
                    Text(
                      '${quizApp.calculateResult()}',
                      style: TextStyleModel.medium24H1(ColorModel.mainViolet),
                    ),
                    Text(
                      '/',
                      style: TextStyleModel.medium24H1(ColorModel.mainViolet),
                    ),
                    Text(
                      '${quizApp.questions.length}',
                      style: TextStyleModel.medium24H1(ColorModel.mainViolet),
                    ),
                  ],
                ),
              ),
            ),
            CustomButton(buttonName: 'Reset Quiz', page: QuestionPage()),
            CustomButton(buttonName: 'Home Page', page: HomePage()),
          ],
        ),
      ),
    );
  }
}
