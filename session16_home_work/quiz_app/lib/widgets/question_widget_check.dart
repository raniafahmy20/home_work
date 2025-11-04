import 'package:flutter/material.dart';
import 'package:quiz_app/models/question_model.dart';
import 'package:quiz_app/widgets/custom_anser_widget.dart';

class QuestionWidgetCheck extends StatelessWidget {
  QuestionModel questionModel;
  QuestionWidgetCheck({super.key, required this.questionModel});

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 12,
      children: [
        CustomAnserWidget(
          text: questionModel.firstAnswer,
          isCheck: false,
          questionModel: questionModel,
        ),
        CustomAnserWidget(
          text: questionModel.secondAnswer,
          isCheck: false,
          questionModel: questionModel,
        ),
        CustomAnserWidget(
          text: questionModel.thirdAnswer,
          isCheck: false,
          questionModel: questionModel,
        ),
        CustomAnserWidget(
          text: questionModel.forthAnswer,
          isCheck: false,
          questionModel: questionModel,
        ),
      ],
    );
  }
}
