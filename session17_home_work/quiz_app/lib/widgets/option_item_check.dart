import 'package:flutter/material.dart';
import 'package:quiz_app/models/question.dart';
import 'package:quiz_app/models/quiz_app.dart';
import 'package:quiz_app/widgets/selected_option_checkbox.dart';
import 'package:quiz_app/widgets/un_selected_option.dart';

class OptionItemCheck extends StatefulWidget {
  QuizApp quizApp;
  QuestionModel questionModel;

  OptionItemCheck({
    super.key,
    required this.quizApp,
    required this.questionModel,
  });

  @override
  State<OptionItemCheck> createState() => _OptionItemCheckState();
}

class _OptionItemCheckState extends State<OptionItemCheck> {
  bool isCheck = false;
  List<String> isChecked = [];
  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 2,
      children: widget.questionModel.options.map((e) {
        return GestureDetector(
          onTap: () {
            if (isChecked.contains(e)) {
              isChecked.removeWhere((elem) => elem == e);
              widget.quizApp.update(widget.questionModel, e);
            } else {
              isChecked.add(e);
              widget.quizApp.select(widget.questionModel, e);
            }
            setState(() {});
          },
          child: isChecked.contains(e)
              ? SelectedOptionCheckbox(option: e)
              : UnSelectedOption(option: e),
        );
      }).toList(),
    );
  }
}
