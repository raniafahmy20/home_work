import 'package:flutter/material.dart';

class QuestionWidgetFronUser extends StatelessWidget {
  final String question;
  const QuestionWidgetFronUser({super.key, required this.question});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Container(
            decoration: BoxDecoration(
              color: Colors.blue,
              borderRadius: BorderRadius.only(
                bottomRight: Radius.circular(40),
                topLeft: Radius.circular(40),
                bottomLeft: Radius.circular(40),
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.only(
                left: 17,
                top: 10,
                bottom: 10,
                right: 15,
              ),
              child: Text(
                question,
                textAlign: TextAlign.right,
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
