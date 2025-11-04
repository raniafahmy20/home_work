import 'package:flutter/material.dart';

class CustomAnswerRadioWidget extends StatelessWidget {
  String radioValue;
  String radioText;
  Color color;
  ValueChanged<String?>? onChange;

  CustomAnswerRadioWidget({
    super.key,
    required this.onChange,
    required this.radioText,
    required this.radioValue,
    required this.color,
  });
  @override
  Widget build(BuildContext context) {
    return Card(
      color: color,
      child: RadioListTile(
        value: radioValue,
        title: Text(radioText),
        onChanged: onChange,
      ),
    );
  }
}
