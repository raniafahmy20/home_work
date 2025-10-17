import 'package:flutter/material.dart';

class ButtonCustom extends StatelessWidget {
  late String actionName;
  late Color colorButton;
  late double width;
  late double height;
  ButtonCustom({
    super.key,
    required this.actionName,
    required this.colorButton,
    required this.height,
    required this.width,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {},
      style: ElevatedButton.styleFrom(
        backgroundColor: colorButton,
        fixedSize: Size(width, height),
      ),
      child: Text(
        actionName,
        style: TextStyle(color: Colors.white, fontSize: 17),
      ),
    );
  }
}
