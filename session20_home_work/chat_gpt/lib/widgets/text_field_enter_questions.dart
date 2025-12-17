import 'package:chat_gpt/cubits/chat_cubit.dart';
import 'package:chat_gpt/cubits/chat_states.dart';
import 'package:chat_gpt/preparing/image_moddel.dart';
import 'package:chat_gpt/preparing/text_style_model.dart';
import 'package:chat_gpt/services/chat_service.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class TextFieldEnterQuestions extends StatefulWidget {
  final ChatServices chatServices;
  const TextFieldEnterQuestions({super.key, required this.chatServices});

  @override
  State<TextFieldEnterQuestions> createState() =>
      _TextFieldEnterQuestionsState();
}

class _TextFieldEnterQuestionsState extends State<TextFieldEnterQuestions> {
  String questionTitle = '';
  final TextEditingController textController = TextEditingController();

  @override
  void dispose() {
    textController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(16),
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(40),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.08), //
            blurRadius: 25,
            spreadRadius: 1,
            offset: const Offset(0, 8),
          ),
        ],
      ),
      child: Row(
        children: [
          Expanded(
            child: TextField(
              controller: textController,
              decoration: InputDecoration(
                labelText: 'Hello chatGPT,how are you today?',
                labelStyle: TextStyleModel.bold(
                  color: Colors.blue,
                  fontSize: 13,
                ),
                hintText: 'write your message',
                helperStyle: TextStyleModel.bold(
                  color: Color(0xFFA1A1A1),
                  fontSize: 13,
                ),
                border: InputBorder.none,
              ),
              onChanged: (value) {
                questionTitle = value;
              },
            ),
          ),

          const SizedBox(width: 10),

          Container(
            padding: const EdgeInsets.all(15),
            decoration: BoxDecoration(
              image: DecorationImage(image: AssetImage(ImageModdel.microphone)),
            ),
          ),

          BlocBuilder<ChatCubit, ChatStates>(
            builder: (context, state) {
              return AbsorbPointer(
                absorbing: state is LoadingChatAnswerState,
                child: GestureDetector(
                  onTap: () async {
                    textController.clear();
                    setState(() {});
                    var questionModel = BlocProvider.of<ChatCubit>(context);
                    await questionModel.getChat(
                      chatServices: widget.chatServices,
                      questionTitle: questionTitle,
                    );
                  },
                  child: Container(
                    padding: const EdgeInsets.all(15),
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(ImageModdel.sendImage),
                      ),
                    ),
                  ),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
