import 'package:flutter/material.dart';
import 'package:quiz_app/models/question_model.dart';
import 'package:quiz_app/widgets/question_widget.dart';

List<QuestionModel> questionsList = [
  QuestionModel(
    firstAnswer: 'Strongly satisfied',
    forthAnswer: 'Not satisfied',
    secondAnswer: 'Satisfied',
    title:
        'How would you describe your level of satisfaction with the healthcare system?',
    thirdAnswer: 'Neutral',
  ),
  QuestionModel(
    firstAnswer: 'Very healthy',
    forthAnswer: 'Unhealthy',
    secondAnswer: 'Somewhat healthy',
    title: 'How would you rate your overall eating habits?',
    thirdAnswer: 'Neutral',
  ),

  QuestionModel(
    firstAnswer: 'Vitamin D3',
    forthAnswer: 'Magnesium',
    secondAnswer: 'Vitamin B',
    title: 'What vitamins do you take?',
    thirdAnswer: 'Zinc',
  ),

  QuestionModel(
    firstAnswer: 'Once a year',
    forthAnswer: 'Rarely or never',
    secondAnswer: 'Every 6 months',
    title: 'How often do you go for a medical check-up?',
    thirdAnswer: 'Only when I feel sick',
  ),
];
List<Widget> questionListGet(List<QuestionModel> questions) {
  List<Widget> myQuestions = [];
  int i = 1;
  for (var element in questions) {
    myQuestions.add(
      Container(
        width: double.infinity,
        height: 600,
        child: QuestionWidget(questionModel: element, numberOfQuestion: i),
      ),
    );
    i++;
  }
  return myQuestions;
}
