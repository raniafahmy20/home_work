import 'package:flutter/material.dart';

import 'package:quiz_app/screens/question_page.dart';
import 'package:quiz_app/thems/asset.dart';
import 'package:quiz_app/thems/decoration.dart';
import 'package:quiz_app/thems/text_style.dart';
import 'package:quiz_app/widgets/custom_button.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: DecorationModel.mainDecoratuoin(),
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          decoration: BoxDecoration(
            image: DecorationImage(image: AssetImage(AssetModel.gradientPng)),
          ),
          child: Padding(
            padding: EdgeInsetsGeometry.only(
              top: 50,
              left: 20,
              right: 20,
              bottom: 20,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Good morning,',
                  style: TextStyleModel.regular12H4(Colors.white),
                ),
                Text(
                  'New Topic is waiting',
                  style: TextStyleModel.medium24H1(Colors.white),
                ),
                Spacer(),
                Image.asset(AssetModel.homePagePng),
                Spacer(),
                CustomButton(buttonName: 'Start Quiz', page: QuestionPage()),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
