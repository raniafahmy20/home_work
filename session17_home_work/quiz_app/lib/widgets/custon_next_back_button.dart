import 'package:flutter/material.dart';

import 'package:quiz_app/models/quiz_app.dart';
import 'package:quiz_app/screens/result_page.dart';

import 'package:quiz_app/widgets/custom_back_button.dart';
import 'package:quiz_app/widgets/custom_next_button.dart';

class CustomNextBackButton extends StatelessWidget {
  int currentPage;
  PageController controller;
  QuizApp quizApp;
  CustomNextBackButton({
    super.key,
    required this.quizApp,
    required this.controller,
    required this.currentPage,
  });

  @override
  Widget build(BuildContext context) {
    print(MediaQuery.of(context).size);
    return Row(
      children: [
        CustomBackButton(
          back: () {
            if (currentPage > 0) {
              controller.previousPage(
                duration: Duration(seconds: 2),
                curve: Curves.linear,
              );
            } else {
              Navigator.pop(context);
            }
          },
        ),
        SizedBox(width: 88),
        CustomNextButton(
          next: () {
            if (currentPage < quizApp.questions.length - 1) {
              controller.nextPage(
                duration: Duration(seconds: 2),
                curve: Curves.linear,
              );
            } else {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return ResultPage(quizApp: quizApp);
                  },
                ),
              );
            }
          },
        ),
      ],
    );
  }

  void next() {}
}
