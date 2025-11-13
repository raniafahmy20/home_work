import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:quiz_app/thems/color.dart';
import 'package:quiz_app/thems/text_style.dart';

class CardQuestionNumber extends StatelessWidget {
  int questionNumber;
  String questionImage;
  CardQuestionNumber({
    super.key,
    required this.questionImage,
    required this.questionNumber,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      color: ColorModel.secondryViolet,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadiusGeometry.circular(40),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            SvgPicture.asset(questionImage, height: 26),
            SizedBox(width: 10),
            Text(
              'Question ${questionNumber}',
              style: TextStyleModel.regular12H4(Colors.white),
            ),
          ],
        ),
      ),
    );
  }
}
