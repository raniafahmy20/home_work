import 'package:flutter/material.dart';

class CustomAnswerRadioWidget extends StatelessWidget {
  String radioValue;
  String radioText;
  List<Color> colors;
  ValueChanged<String?>? onChange;
  String groupValue;

  bool isSelect;

  CustomAnswerRadioWidget({
    super.key,
    required this.isSelect,

    required this.groupValue,
    required this.onChange,
    required this.radioText,
    required this.radioValue,
    required this.colors,
  });
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(colors: colors),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 18, horizontal: 20),
        child: Row(
          children: [
            GestureDetector(
              onTap: () => onChange!.call(radioValue),
              child: isSelect == true
                  ? Icon(Icons.check_circle, color: Colors.black)
                  : Icon(Icons.circle_outlined),
            ),
            SizedBox(width: 30),
            Text(
              radioText,
              style: TextStyle(
                fontFamily: 'Gilroy',
                fontSize: 16,
                color: Color(0xFF2B0063),
                fontWeight: FontWeight.w500,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
