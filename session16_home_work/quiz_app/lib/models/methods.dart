import 'package:flutter/material.dart';
import 'package:quiz_app/models/question_model.dart';
import 'package:quiz_app/widgets/question_widget.dart';

List<Widget> questionListGet(QuizApp quizApp) {
  List<Widget> myQuestions = [];
  int i = 1;
  for (var element in quizApp.questions) {
    myQuestions.add(
      QuestionWidget(
        questionModel: element,
        numberOfQuestion: i,
        quizApp: quizApp,
      ),
    );
    i++;
  }
  return myQuestions;
}

List<QuestionModel> getQuestions() {
  List<QuestionModel> ques = [
    QuestionModel(
      options: ['Strongly satisfied', 'Not satisfied', 'Satisfied', 'Neutral'],
      title:
          'How would you describe your level of satisfaction with the healthcare system?',
      correctAnswer: ['Neutral'],
    ),
    QuestionModel(
      options: ['Very healthy', 'Unhealthy', 'Somewhat healthy', 'Neutral'],
      correctAnswer: ['Very healthy', 'Neutral'],
      title: 'How would you rate your overall eating habits?',
    ),

    QuestionModel(
      options: ['Vitamin D3', 'Magnesium', 'Vitamin B', 'Zinc'],
      correctAnswer: ['Vitamin B', 'Vitamin D3'],
      title: 'What vitamins do you take?',
    ),

    QuestionModel(
      options: [
        'Every 6 months',
        'Rarely or never',
        'Only when I feel sick',
        'Once a year',
      ],
      correctAnswer: ['Every 6 months', 'Only when I feel sick'],
      title: 'How often do you go for a medical check-up?',
    ),
  ];
  return ques;
}
