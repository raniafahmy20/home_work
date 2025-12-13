import 'package:chat_gpt/preparing/image_moddel.dart';
import 'package:flutter/material.dart';

class AnswerWidgetFromChat extends StatelessWidget {
  final String answer;
  const AnswerWidgetFromChat({super.key, required this.answer});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            width: 250,
            decoration: BoxDecoration(
              color: Color(0xFFEEEEEE),
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(40),
                bottomRight: Radius.circular(40),
                topLeft: Radius.circular(40),
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.only(top: 8, bottom: 8, left: 12),
              child: Text(
                answer,
                maxLines: 50,
                style: TextStyle(color: Colors.black),
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(-135, -8),
            child: Image.asset(ImageModdel.chatImage, scale: 7),
          ),
        ],
      ),
    );
  }
}
