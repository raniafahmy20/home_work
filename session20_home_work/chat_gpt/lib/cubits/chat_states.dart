import 'package:chat_gpt/models/question_model.dart';

class ChatStates {}

class InitialChatState extends ChatStates {}

class LoadingChatAnswerState extends ChatStates {}

class UpdateChatListState extends ChatStates {
  List<Message> messages;
  UpdateChatListState({required this.messages});
}

class SuccChatSendQuestionState extends ChatStates {
  String questionTitle;
  SuccChatSendQuestionState({required this.questionTitle});
}

class FaulierChatState extends ChatStates {
  String errorMessage;
  FaulierChatState({required this.errorMessage});
}
