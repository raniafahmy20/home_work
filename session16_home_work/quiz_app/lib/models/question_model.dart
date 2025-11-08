class QuestionModel {
  final String title;
  final List<String> options;
  final List<String>? selsectedAnswers = [];
  final List<String> correctAnswer;

  QuestionModel({
    required this.title,
    required this.options,
    required this.correctAnswer,
  });
}

class QuizApp {
  List<QuestionModel> questions = [];

  void selectOption(QuestionModel question, String answer) {
    question.selsectedAnswers!.add(answer);
    for (var element in question.selsectedAnswers!) {
      print(element);
    }
  }

  void update(QuestionModel question, String text) {
    print(question.correctAnswer.length);
    if (question.correctAnswer.length == 1) {
      print('${question.selsectedAnswers!.length}');
      if (question.selsectedAnswers!.length == 2) {
        question.selsectedAnswers!.removeWhere((var item) => item != text);
      }
    } else {
      if (question.selsectedAnswers!.contains(text)) {
        question.selsectedAnswers!.removeWhere((var item) => item == text);
      }
    }
  }

  QuestionModel questionView(int numberOfQuestion) {
    return questions[numberOfQuestion];
  }

  String calculateCorrectAnswer() {
    String degree = '';
    double mark = 0;
    for (var element in questions) {
      if (element.correctAnswer.length == 1) {
        if (element.correctAnswer == element.selsectedAnswers) {
          mark++;
        }
      } else {
        for (var selectedAnswer in element.selsectedAnswers!) {
          if (element.correctAnswer.contains(selectedAnswer)) {
            mark++;
          } else {
            mark = mark - 0.5;
          }
        }
      }
      print(mark);
    }

    if (mark > 1) {
      degree = 'very good';
    } else {
      degree = 'bad';
    }
    return degree;
  }
}
