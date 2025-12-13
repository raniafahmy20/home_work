import 'package:chat_gpt/widgets/widget_for_info_about_chat.dart';
import 'package:flutter/material.dart';

class InfoOfApp extends StatelessWidget {
  const InfoOfApp({super.key});

  final List<String> information = const [
    'Explain Quantum physics',
    'What are wormholes explain like i am 5',
    'Write a tweet about global warming',
    'Write a poem about flower and love',
    'Write a rap song lyrics about',
    'How do you say “how are you” in korean?',
    'Write a poem about flower and love',
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: information.length,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.symmetric(vertical: 20),
          child: WidgetForInfoAboutChat(info: information[index]),
        );
      },
    );
  }
}
