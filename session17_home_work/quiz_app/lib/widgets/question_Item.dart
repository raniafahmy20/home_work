import 'package:flutter/material.dart';
import 'package:quiz_app/models/question.dart';
import 'package:quiz_app/models/quiz_app.dart';
import 'package:quiz_app/thems/text_style.dart';
import 'package:quiz_app/widgets/card_question_number.dart';
import 'package:quiz_app/widgets/option_items.dart';

class QuestionItem extends StatefulWidget {
  QuestionModel questionModel;
  int numberOfQuestion;
  QuizApp quizApp;
  QuestionItem({
    super.key,
    required this.questionModel,
    required this.quizApp,
    required this.numberOfQuestion,
  });

  @override
  State<QuestionItem> createState() => _QuestionItemState();
}

class _QuestionItemState extends State<QuestionItem>
    with AutomaticKeepAliveClientMixin {
  @override
  Widget build(BuildContext context) {
    super.build(context);
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 5),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        spacing: 8,
        children: [
          CardQuestionNumber(
            questionImage: widget.questionModel.image,
            questionNumber: widget.numberOfQuestion,
          ),
          Text(
            widget.questionModel.title,
            style: TextStyleModel.medium24H1(Colors.white),
          ),
          OptionItems(
            selsected: widget.questionModel.selectedAnswer,
            quizApp: widget.quizApp,
            numberOfQuestion: widget.numberOfQuestion,
            questionModel: widget.questionModel,
          ),
        ],
      ),
    );
  }

  @override
  // TODO: implement wantKeepAlive
  bool get wantKeepAlive => true;
}
