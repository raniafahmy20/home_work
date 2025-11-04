class QuestionModel {
  final String title;
  final String firstAnswer;
  final String secondAnswer;
  final String thirdAnswer;
  final String forthAnswer;
  List<String>? answerOfAllQuestion = [];
  QuestionModel({
    required this.firstAnswer,
    required this.forthAnswer,
    required this.secondAnswer,
    required this.title,
    required this.thirdAnswer,
  });
}
