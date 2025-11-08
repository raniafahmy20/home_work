import 'package:flutter/material.dart';
import 'package:quiz_app/models/question_model.dart';
import 'package:quiz_app/widgets/custom_answer_radio_widget.dart';

class QuestionWidgetRadio extends StatefulWidget {
  QuestionModel questionModel;
  int numberOfQuestion;
  QuizApp quizApp;

  QuestionWidgetRadio({
    super.key,
    required this.quizApp,
    required this.questionModel,
    required this.numberOfQuestion,
  });

  @override
  State<QuestionWidgetRadio> createState() => _QuestionWidgetRadioState();
}

class _QuestionWidgetRadioState extends State<QuestionWidgetRadio> {
  List<String> valuesOfOptions = ['answer1', 'answer2', 'answer3', 'answer4'];
  String value = '';

  @override
  Widget build(BuildContext context) {
    return RadioGroup(
      groupValue: value,
      onChanged: (val) {
        setState(() {
          value = val!;
        });
      },
      child: Column(spacing: 7, children: getAnswer(valuesOfOptions, value)),
    );
  }

  List<Widget> getAnswer(List<String> values, String currentValue) {
    List<Widget> answers = [];

    for (int i = 0; i < widget.questionModel.options.length; i++) {
      answers.add(
        CustomAnswerRadioWidget(
          isSelect: currentValue == values[i],
          onChange: (val) {
            setState(() {
              value = val!; // تحديث قيمة الـ state
              widget.quizApp.selectOption(
                widget.questionModel,
                widget.questionModel.options[i],
              );
              widget.quizApp.update(
                widget.questionModel,
                widget.questionModel.options[i],
              );
              for (var element in widget.questionModel.selsectedAnswers!) {
                print('ggggggggg');
                print('all:$element');
              }
            });
          },
          colors: currentValue == values[i]
              ? [const Color(0xFFB8B2FF), const Color(0xFFC6C2F8)]
              : [Colors.white, Colors.white],
          radioText: widget.questionModel.options[i],
          radioValue: values[i],
          groupValue: value,
        ),
      );
    }

    return answers;
  }
}
