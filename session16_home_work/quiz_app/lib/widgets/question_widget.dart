import 'package:flutter/material.dart';
import 'package:quiz_app/models/question_model.dart';
import 'package:quiz_app/widgets/custom_anser_widget.dart';
import 'package:quiz_app/widgets/question_widget_check.dart';
import 'package:quiz_app/widgets/question_widget_radio.dart';

class QuestionWidget extends StatelessWidget {
  QuestionModel questionModel;
  int numberOfQuestion;
  QuestionWidget({
    super.key,
    required this.questionModel,
    required this.numberOfQuestion,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      spacing: 15,

      children: [
        Padding(
          padding: const EdgeInsets.only(top: 10),
          child: Card(
            color: Color(0xFF8E84FF),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadiusGeometry.circular(35),
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 8),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Image(image: AssetImage('assets/v.png'), fit: BoxFit.cover),
                  Text(
                    'Question $numberOfQuestion',
                    style: TextStyle(color: Colors.white),
                  ),
                ],
              ),
            ),
          ),
        ),
        Text(
          questionModel.title,
          style: TextStyle(fontSize: 24, color: Colors.white),
        ),
        numberOfQuestion == 1
            ? QuestionWidgetRadio(
                questionModel: questionModel,
                numberOfQuestion: numberOfQuestion,
              )
            : QuestionWidgetCheck(questionModel: questionModel),
      ],
    );
  }
}
