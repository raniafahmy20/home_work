import 'package:flutter/material.dart';
import 'package:quiz_app/models/question_model.dart';
import 'package:quiz_app/widgets/custom_anser_widget.dart';

class QuestionWidgetCheck extends StatelessWidget {
  QuestionModel questionModel;
  QuizApp quizApp;
  QuestionWidgetCheck({
    super.key,
    required this.questionModel,
    required this.quizApp,
  });

  @override
  Widget build(BuildContext context) {
    return Column(spacing: 12, children: getCheckAnswer(questionModel));
  }

  List<Widget> getCheckAnswer(QuestionModel ques) {
    List<Widget> widgets = [];
    for (var element in ques.options) {
      widgets.add(
        CustomAnserWidget(
          text: element,
          isCheck: false,
          quizApp: quizApp,
          questionModel: questionModel,
        ),
      );
    }
    return widgets;
  }
}
