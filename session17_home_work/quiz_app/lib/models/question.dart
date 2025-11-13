class QuestionModel {
  final String title;
  final List<String> options;
  final List<String> correctAnswer;
  final List<String> selectedAnswer = [];
  final String image;
  QuestionModel({
    required this.title,
    required this.correctAnswer,
    required this.options,
    required this.image,
  });
}
