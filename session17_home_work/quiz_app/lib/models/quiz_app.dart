import 'package:quiz_app/models/question.dart';
import 'package:quiz_app/thems/asset.dart';

class QuizApp {
  List<QuestionModel> questions = [
    QuestionModel(
      image: AssetModel.question1,
      options: ['Strongly satisfied', 'Not satisfied', 'Satisfied', 'Neutral'],
      title:
          'How would you describe your level of satisfaction with the healthcare system?',
      correctAnswer: ['Neutral'],
    ),
    QuestionModel(
      image: AssetModel.question2,
      options: ['Very healthy', 'Unhealthy', 'Somewhat healthy', 'Neutral'],
      correctAnswer: ['Very healthy', 'Neutral'],
      title: 'How would you rate your overall eating habits?',
    ),

    QuestionModel(
      image: AssetModel.question3,
      options: ['Vitamin D3', 'Magnesium', 'Vitamin B', 'Zinc'],
      correctAnswer: ['Vitamin B', 'Vitamin D3'],
      title: 'What vitamins do you take?',
    ),

    QuestionModel(
      image: AssetModel.question4,
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
  List<QuestionModel> getQuestions() => questions;
  void select(QuestionModel question, String answer) {
    question.selectedAnswer.add(answer);
  }

  void update(QuestionModel question, String answer) {
    if (question.correctAnswer.length > 1) {
      for (int i = 0; i < question.selectedAnswer.length; i++) {
        if (question.selectedAnswer[i] == answer) {
          question.selectedAnswer.removeAt(i);
        }
      }
    } else {
      if (question.selectedAnswer.length > 1) {
        question.selectedAnswer.retainWhere((element) => element == answer);
      }
    }
  }

  double calculateResult() {
    double result = 0;
    for (var element in questions) {
      if (element.correctAnswer.length == 1) {
        element.correctAnswer == element.selectedAnswer;
        result++;
      } else {
        for (var select in element.selectedAnswer) {
          if (element.correctAnswer.contains(select)) {
            result = result + 0.5;
          }
        }
      }
    }
    return result;
  }
}
