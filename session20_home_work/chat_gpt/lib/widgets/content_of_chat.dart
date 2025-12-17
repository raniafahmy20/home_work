import 'package:chat_gpt/cubits/chat_cubit.dart';
import 'package:chat_gpt/cubits/chat_states.dart';
import 'package:chat_gpt/services/chat_service.dart';
import 'package:chat_gpt/widgets/answer_loading.dart';
import 'package:chat_gpt/widgets/answer_widget_from_chat.dart';
import 'package:chat_gpt/widgets/info_of_chat_do.dart';
import 'package:chat_gpt/widgets/question_from_user.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ContentOfChat extends StatefulWidget {
  final ChatServices chatServices;
  const ContentOfChat({super.key, required this.chatServices});

  @override
  State<ContentOfChat> createState() => _ContentOfChatState();
}

class _ContentOfChatState extends State<ContentOfChat> {
  final GlobalKey<AnimatedListState> _listKey = GlobalKey<AnimatedListState>();
  final ScrollController _scrollController = ScrollController();

  void _scrollToEnd() {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (_scrollController.hasClients) {
        _scrollController.animateTo(
          _scrollController.position.maxScrollExtent,
          duration: const Duration(milliseconds: 300),
          curve: Curves.easeOut,
        );
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<ChatCubit, ChatStates>(
      listener: (context, state) {
        if (state is UpdateChatListState) {
          _listKey.currentState?.insertItem(state.messages.length - 1);
          _scrollToEnd();
        }

        if (state is FaulierChatState) {
          ScaffoldMessenger.of(
            context,
          ).showSnackBar(SnackBar(content: Text(state.errorMessage)));
        }
      },
      builder: (context, state) {
        if (state is InitialChatState) {
          return InfoOfApp();
        }
        final messages = ChatCubit.get(context).messagesList;
        return ListView.builder(
          key: _listKey,
          controller: _scrollController,
          itemCount: messages.length,
          itemBuilder: (context, index) {
            if (index >= messages.length) return const SizedBox.shrink();
            final message = messages[index];

            Widget child;
            if (message.isLoading) {
              child = AnswerLoadingWidget();
            } else if (message.isUser) {
              child = QuestionWidgetFronUser(question: message.title);
            } else {
              child = AnswerWidgetFromChat(answer: message.title);
            }

            return child;
          },
        );

        /*AnimatedList(
          key: _listKey,
          controller: _scrollController,
          initialItemCount: messages.length,
          itemBuilder: (context, index, animation) {
            if (index >= messages.length) return const SizedBox.shrink();
            final message = messages[index];

            Widget child;
            if (message.isLoading) {
              child = AnswerLoadingWidget();
            } else if (message.isUser) {
              child = QuestionWidgetFronUser(question: message.title);
            } else {
              child = AnswerWidgetFromChat(answer: message.title);
            }

            return SizeTransition(sizeFactor: animation, child: child);
          },
        );*/
      },
    );
  }
}
