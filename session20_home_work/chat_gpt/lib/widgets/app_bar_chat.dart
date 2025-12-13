import 'package:chat_gpt/preparing/image_moddel.dart';
import 'package:chat_gpt/preparing/text_style_model.dart';
import 'package:flutter/material.dart';

class ChatLogo extends StatelessWidget {
  const ChatLogo({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Image.asset(ImageModdel.chatImage, scale: 4),
        Spacer(flex: 1),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'ChatGPT',
              style: TextStyleModel.bold(fontSize: 20, color: Colors.blue),
            ),
            Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                CircleAvatar(backgroundColor: Colors.green, radius: 3),
                SizedBox(width: 5),
                Text(
                  'Online',
                  style: TextStyleModel.medium(
                    fontSize: 17,
                    color: Colors.green,
                  ),
                ),
              ],
            ),
          ],
        ),
        Spacer(flex: 2),
      ],
    );
  }
}


















/*import 'package:chat_gpt/preparing/image_moddel.dart';
import 'package:chat_gpt/preparing/text_style_model.dart';
import 'package:flutter/material.dart';

class AppBarChat extends StatelessWidget {
  const AppBarChat({super.key});
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Row(
        children: [
          IconButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            icon: Icon(Icons.arrow_back),
          ),
          Spacer(flex: 1),
          Image.asset(ImageModdel.chatImage, scale: 4),
          Spacer(flex: 1),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'ChatGPT',
                style: TextStyleModel.bold(fontSize: 20, color: Colors.blue),
              ),
              Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  CircleAvatar(backgroundColor: Colors.green, radius: 3),
                  SizedBox(width: 5),
                  Text(
                    'Online',
                    style: TextStyleModel.medium(
                      fontSize: 17,
                      color: Colors.green,
                    ),
                  ),
                ],
              ),
            ],
          ),
          Spacer(flex: 5),
          Image.asset(ImageModdel.volumeImage, scale: 4),
          SizedBox(width: 10),
          Image.asset(ImageModdel.exportImage, scale: 3),
        ],
      ),
    );
  }
}
*/