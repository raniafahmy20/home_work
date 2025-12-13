import 'package:chat_gpt/preparing/text_style_model.dart';
import 'package:chat_gpt/views/chat_view.dart';
import 'package:flutter/material.dart';

class ContinueButton extends StatelessWidget {
  const ContinueButton({super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) {
              return ChatView();
            },
          ),
        );
      },
      style: ButtonStyle(
        backgroundColor: WidgetStatePropertyAll(Colors.blue),
        fixedSize: WidgetStatePropertyAll(Size(double.infinity, 60)),
      ),

      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Spacer(flex: 5),
          Text(
            'Continue',
            style: TextStyleModel.bold(fontSize: 19, color: Colors.white),
          ),
          Spacer(flex: 4),
          Icon(Icons.arrow_forward, color: Colors.white, size: 25),
        ],
      ),
    );
  }
}
