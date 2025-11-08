import 'package:flutter/material.dart';
import 'package:quiz_app/models/question_model.dart';

class CustomAnserWidget extends StatefulWidget {
  bool isCheck;
  String text;
  QuestionModel questionModel;
  QuizApp quizApp;
  CustomAnserWidget({
    super.key,
    required this.text,
    required this.isCheck,
    required this.questionModel,
    required this.quizApp,
  });

  @override
  State<CustomAnserWidget> createState() => _CustomAnserWidgetState();
}

class _CustomAnserWidgetState extends State<CustomAnserWidget> {
  bool start = false;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: widget.isCheck == true
              ? [Color(0xFFB8B2FF), Color(0xFFC6C2F8)]
              : [Colors.white, Colors.white],
        ),
        borderRadius: BorderRadius.circular(20),
      ),
      child: CheckboxListTile(
        title: Text(
          widget.text,
          style: TextStyle(
            fontFamily: 'Gilroy',
            fontSize: 16,
            color: Color(0xFF2B0063),
            fontWeight: FontWeight.w500,
          ),
        ),
        controlAffinity: ListTileControlAffinity.leading,
        contentPadding: const EdgeInsets.symmetric(horizontal: 8.0),
        checkboxShape: const CircleBorder(),
        value: widget.isCheck,
        onChanged: (value) {
          widget.isCheck = value!;
          setState(() {
            widget.quizApp.selectOption(widget.questionModel, widget.text);
            if (value == false) {
              widget.quizApp.update(widget.questionModel, widget.text);
            }

            for (var element in widget.questionModel.selsectedAnswers!) {
              print('all:$element');
            }
          });
        },

        shape: CircleBorder(side: BorderSide(width: 9)),
      ),
    );
  }
}
