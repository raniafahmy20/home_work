import 'package:flutter/material.dart';
import 'package:quiz_app/models/quiz_app.dart';
import 'package:quiz_app/thems/asset.dart';
import 'package:quiz_app/thems/decoration.dart';
import 'package:quiz_app/widgets/custon_next_back_button.dart';
import 'package:quiz_app/widgets/question_Item.dart';

class QuestionPage extends StatefulWidget {
  const QuestionPage({super.key});

  @override
  State<QuestionPage> createState() => _QuestionPageState();
}

class _QuestionPageState extends State<QuestionPage> {
  late final QuizApp quizApp = QuizApp();
  int currentPage = 0;
  PageController controller = PageController();

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: DecorationModel.mainDecoratuoin(),
        child: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(AssetModel.questionPageHome),
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.only(
              top: 30,
              left: 5,
              right: 5,
              bottom: 5,
            ),
            child: Column(
              children: [
                Expanded(
                  child: PageView.builder(
                    controller: controller,
                    physics: NeverScrollableScrollPhysics(),
                    itemCount: quizApp.questions.length,
                    onPageChanged: (value) {
                      setState(() {
                        currentPage = value;
                      });
                    },
                    itemBuilder: (context, index) {
                      return QuestionItem(
                        questionModel: quizApp.questions[index],
                        numberOfQuestion: index + 1,
                        quizApp: quizApp,
                      );
                    },
                  ),
                ),
                CustomNextBackButton(
                  quizApp: quizApp,
                  controller: controller,
                  currentPage: currentPage,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
