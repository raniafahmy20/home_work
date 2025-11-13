import 'package:flutter/material.dart';
import 'package:quiz_app/models/question.dart';
import 'package:quiz_app/models/quiz_app.dart';
import 'package:quiz_app/widgets/option_item_check.dart';
import 'package:quiz_app/widgets/option_item_radio.dart';

class OptionItems extends StatelessWidget {
  QuestionModel questionModel;
  int numberOfQuestion;
  QuizApp quizApp;
  List<String> selsected;

  OptionItems({
    super.key,
    required this.quizApp,
    required this.selsected,
    required this.numberOfQuestion,
    required this.questionModel,
  });

  @override
  Widget build(BuildContext context) {
    print(questionModel.correctAnswer.length);
    return Column(
      spacing: 5,
      children: [
        questionModel.correctAnswer.length == 1
            ? OptionItemRadio(quizApp: quizApp, questionModel: questionModel)
            : OptionItemCheck(quizApp: quizApp, questionModel: questionModel),
      ],
    );
  }
}
