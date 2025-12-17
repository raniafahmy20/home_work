class QuestionModel {
  String title;
  String anser;

  QuestionModel({required this.title, required this.anser});
}

class Message {
  final String title;
  final bool isUser;
  bool isLoading;
  Message({required this.title, required this.isUser, this.isLoading = false});
}
