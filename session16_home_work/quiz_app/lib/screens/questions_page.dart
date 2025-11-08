import 'package:flutter/material.dart';
import 'package:quiz_app/models/methods.dart';
import 'package:quiz_app/models/question_model.dart';
import 'package:quiz_app/screens/result_quiz_page.dart';
import 'package:quiz_app/widgets/custom_next_back_page.dart';
import 'package:quiz_app/widgets/question_widget.dart';

class QuestionsPage extends StatefulWidget {
  final QuizApp quizApp;
  const QuestionsPage({super.key, required this.quizApp});

  @override
  State<QuestionsPage> createState() => _QuestionsPageState();
}

class _QuestionsPageState extends State<QuestionsPage> {
  PageController pageController = PageController();
  int currentPage = 0;

  @override
  void initState() {
    super.initState();

    widget.quizApp.questions = getQuestions();
  }

  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.bottomLeft,
            end: Alignment.topRight,
            colors: [Color(0xFF060B26), Color(0xFF1A1F37)],
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 24),
          child: Column(
            children: [
              Expanded(
                child: PageView.builder(
                  controller: pageController,
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: widget.quizApp.questions.length,
                  onPageChanged: (index) {
                    setState(() {
                      currentPage = index;
                    });
                  },
                  itemBuilder: (context, index) {
                    return QuestionWidget(
                      quizApp: widget.quizApp,
                      questionModel: widget.quizApp.questionView(index),
                      numberOfQuestion: index + 1,
                    );
                  },
                ),
              ),
              CustomNextBackPage(
                backArrow: () {
                  if (currentPage > 0) {
                    pageController.previousPage(
                      duration: const Duration(milliseconds: 10),
                      curve: Curves.easeInOut,
                    );
                  } else {
                    Navigator.pop(context);
                  }
                },
                nextArrow: () {
                  if (currentPage < widget.quizApp.questions.length - 1) {
                    pageController.nextPage(
                      duration: const Duration(milliseconds: 10),
                      curve: Curves.easeInOut,
                    );
                  } else {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) =>
                            ResultQuizPage(quizApp: widget.quizApp),
                      ),
                    );
                  }
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
