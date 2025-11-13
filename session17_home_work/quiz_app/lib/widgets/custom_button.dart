import 'package:flutter/material.dart';
import 'package:quiz_app/thems/color.dart';
import 'package:quiz_app/thems/text_style.dart';
import 'package:quiz_app/screens/question_page.dart';

class CustomButton extends StatelessWidget {
  final String buttonName;
  final Widget page;
  const CustomButton({super.key, required this.buttonName, required this.page});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) {
              return page;
            },
          ),
        );
      },
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: 60,

        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(17),
          color: Colors.white,
        ),
        child: Center(
          child: Text(
            buttonName,
            style: TextStyleModel.medium18H2(ColorModel.mainViolet),
          ),
        ),
      ),
    );
  }
}
