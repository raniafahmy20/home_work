import 'package:chat_gpt/models/information_model.dart';
import 'package:chat_gpt/preparing/image_moddel.dart';
import 'package:chat_gpt/widgets/widget_for_info_about_chat.dart';
import 'package:flutter/material.dart';

class InfoOfApp extends StatelessWidget {
  const InfoOfApp({super.key});

  final List<InformationModel> information = const [
    InformationModel(
      image: ImageModdel.explainImage,
      infoList: [
        'Explain Quantum physics',
        'What are wormholes explain like i am 5',
      ],
      title: 'Explaine',
    ),
    InformationModel(
      image: ImageModdel.editImage,
      infoList: [
        'Write a tweet about global warming',
        'Write a poem about flower and love',
        'Write a rap song lyrics about',
      ],
      title: 'Write & Edit',
    ),
    InformationModel(
      image: ImageModdel.translateImage,
      infoList: [
        'How do you say “how are you” in korean?',
        'Write a poem about flower and love',
      ],
      title: 'Translate',
    ),
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
