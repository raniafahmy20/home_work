import 'package:flutter/material.dart';
import 'package:quiz_app/models/question_model.dart';

class CustomAnserWidget extends StatefulWidget {
  bool isCheck;
  String text;
  QuestionModel questionModel;
  CustomAnserWidget({
    super.key,
    required this.text,
    required this.isCheck,
    required this.questionModel,
  });

  @override
  State<CustomAnserWidget> createState() => _CustomAnserWidgetState();
}

class _CustomAnserWidgetState extends State<CustomAnserWidget> {
  @override
  Widget build(BuildContext context) {
    return Card(
      color: widget.isCheck == true ? Color(0xFFC2BDFA) : Colors.white,
      child: ListTile(
        leading: Checkbox(
          //checkColor: Color(0xFFC2BDFA),
          shape: CircleBorder(side: BorderSide(width: 9)),

          value: widget.isCheck,
          onChanged: (value) {
            widget.isCheck = value!;
            setState(() {
              widget.questionModel.answerOfAllQuestion!.add(widget.text);
            });
          },
        ),
        title: Text(widget.text),
      ),
    );
  }
}
