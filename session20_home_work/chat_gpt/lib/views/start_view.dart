import 'package:chat_gpt/preparing/image_moddel.dart';
import 'package:chat_gpt/preparing/text_style_model.dart';
import 'package:chat_gpt/widgets/continue_button.dart';
import 'package:flutter/material.dart';

class StartView extends StatelessWidget {
  const StartView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsetsGeometry.only(
          top: 60,
          right: 15,
          left: 15,
          bottom: 15,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text(
              'You Ai Assistant',
              style: TextStyleModel.bold(fontSize: 23, color: Colors.blue),
            ),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.only(left: 25, right: 10),
              child: Text(
                'Using this software,you can ask you questions and receive articles using artificial intelligence assistant',
                style: TextStyleModel.medium(
                  color: Color(0xFF757575),
                  fontSize: 15,
                ),
              ),
            ),
            Spacer(flex: 1),
            Image.asset(ImageModdel.startImage),
            Spacer(flex: 2),
            ContinueButton(),
          ],
        ),
      ),
    );
  }
}
