import 'package:chat_gpt/cubits/chat_states.dart';
import 'package:chat_gpt/models/question_model.dart';
import 'package:chat_gpt/services/chat_service.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ChatCubit extends Cubit<ChatStates> {
  ChatCubit() : super(InitialChatState());
  static ChatCubit get(BuildContext context) =>
      BlocProvider.of<ChatCubit>(context);
  List<Message> messagesList = [];
 // Stream<Message> get dataStream => Stream.fromIterable(messagesList);

  Future<void> getChat({
    required ChatServices chatServices,
    required String questionTitle,
  }) async {
    messagesList.add(Message(title: questionTitle, isUser: true));
    emit(UpdateChatListState(messages: messagesList));
    messagesList.add(
      Message(title: 'loading...', isUser: false, isLoading: true),
    );
    emit(UpdateChatListState(messages: messagesList));
    emit(LoadingChatAnswerState());
    try {
      QuestionModel questionModel = await chatServices.sendQuestion(
        questionTitle,
      );
      messagesList.removeLast();
      messagesList.add(Message(title: questionModel.anser, isUser: false));
      emit(UpdateChatListState(messages: messagesList));
    } catch (e) {
      messagesList.removeLast();
      emit(FaulierChatState(errorMessage: e.toString()));
    }
  }
}
