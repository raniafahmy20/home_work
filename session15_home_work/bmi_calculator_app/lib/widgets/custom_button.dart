import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  late String buttonName;
  late Widget page;

  CustomButton({super.key, required this.buttonName, required this.page});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) => page));
      },
      child: Container(
        width: 500,
        height: 70,
        color: Color(0xFFED0D54),
        child: Center(
          child: Text(
            buttonName,
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 19,
            ),
          ),
        ),
      ),
    );
  }
}
