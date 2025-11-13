import 'package:flutter/material.dart';
import 'package:quiz_app/models/question.dart';
import 'package:quiz_app/models/quiz_app.dart';

import 'package:quiz_app/widgets/selected_option_radio.dart';
import 'package:quiz_app/widgets/un_selected_option.dart';

class OptionItemRadio extends StatefulWidget {
  final QuizApp quizApp;
  final QuestionModel questionModel;

  const OptionItemRadio({
    super.key,
    required this.quizApp,
    required this.questionModel,
  });

  @override
  State<OptionItemRadio> createState() => _OptionItemRadioState();
}

class _OptionItemRadioState extends State<OptionItemRadio> {
  String selected = '';
  @override
  Widget build(BuildContext context) {
    return Column(
      children: widget.questionModel.options.map((e) {
        return GestureDetector(
          onTap: () {
            selected = e;
            widget.quizApp.select(widget.questionModel, e);
            widget.quizApp.update(widget.questionModel, e);
            setState(() {});
          },
          child: selected != e
              ? UnSelectedOption(option: e)
              : SelectedOptionRadio(option: e),
        );
      }).toList(),
    );
  }
}
