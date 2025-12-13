import 'package:chat_gpt/cubits/chat_cubit.dart';
import 'package:chat_gpt/models/question_model.dart';
import 'package:chat_gpt/preparing/image_moddel.dart';
import 'package:chat_gpt/services/chat_service.dart';
import 'package:chat_gpt/widgets/app_bar_chat.dart';
import 'package:chat_gpt/widgets/content_of_chat.dart';
import 'package:chat_gpt/widgets/text_field_enter_questions.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ChatView extends StatelessWidget {
  final ChatServices chatServices = ChatServices(dio: Dio());
  ChatApp chatApp = ChatApp();
  ChatView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ChatCubit(),
      child: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            icon: Icon(Icons.arrow_back),
          ),
          title: ChatLogo(),
          actions: [
            Image.asset(ImageModdel.volumeImage, scale: 4),
            SizedBox(width: 10),
            Image.asset(ImageModdel.exportImage, scale: 3),
          ],
        ),
        body: Padding(
          padding: const EdgeInsets.only(
            top: 24,
            bottom: 10,
            left: 10,
            right: 10,
          ),
          child: Column(
            children: [
              Expanded(
                child: ContentOfChat(
                  chatApp: chatApp,
                  chatServices: chatServices,
                ),
              ),
              TextFieldEnterQuestions(chatServices: chatServices),
            ],
          ),
        ),
      ),
    );
  }
}
