import 'package:flutter/material.dart';
import 'package:quiz_app/models/question_model.dart';
import 'package:quiz_app/widgets/custom_answer_radio_widget.dart';

class QuestionWidgetRadio extends StatefulWidget {
  QuestionModel questionModel;
  int numberOfQuestion;
  QuestionWidgetRadio({
    super.key,
    required this.questionModel,
    required this.numberOfQuestion,
  });

  @override
  State<QuestionWidgetRadio> createState() => _QuestionWidgetRadioState();
}

class _QuestionWidgetRadioState extends State<QuestionWidgetRadio> {
  String answer1 = 'answer1';

  String answer2 = 'answer2';

  String answer3 = 'answer3';

  String answer4 = 'answer4';

  String? value;

  @override
  Widget build(BuildContext context) {
    return RadioGroup(
      groupValue: value,
      onChanged: (value) {
        this.value = value!;
      },
      child: Column(
        spacing: 7,
        children: [
          CustomAnswerRadioWidget(
            onChange: (val) {
              value = val!;
              setState(() {});
            },
            color: value == answer1 ? Color(0xFFC2BDFA) : Color(0xFFFFFFFF),
            radioText: widget.questionModel.firstAnswer,
            radioValue: answer1,
          ),
          CustomAnswerRadioWidget(
            onChange: (val) {
              value = val!;
              setState(() {});
            },
            radioText: widget.questionModel.secondAnswer,
            radioValue: answer2,
            color: value == answer2 ? Color(0xFFC2BDFA) : Color(0xFFFFFFFF),
          ),
          CustomAnswerRadioWidget(
            onChange: (val) {
              value = val!;
              setState(() {});
            },
            radioText: widget.questionModel.thirdAnswer,
            radioValue: answer3,
            color: value == answer3 ? Color(0xFFC2BDFA) : Color(0xFFFFFFFF),
          ),
          CustomAnswerRadioWidget(
            onChange: (val) {
              value = val!;
              setState(() {});
            },
            color: value == answer4 ? Color(0xFFC2BDFA) : Color(0xFFFFFFFF),
            radioText: widget.questionModel.forthAnswer,
            radioValue: answer4,
          ),
        ],
      ),
    );
  }
}
