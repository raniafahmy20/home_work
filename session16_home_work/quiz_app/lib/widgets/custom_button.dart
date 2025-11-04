import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String text;
  final Widget page;
  const CustomButton({super.key, required this.page, required this.text});
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
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Colors.white,
        ),
        height: 60,
        width: 350,
        padding: EdgeInsets.symmetric(vertical: 13, horizontal: 26),
        child: Text(
          text,
          textAlign: TextAlign.center,
          style: TextStyle(color: Color(0xFF39106D)),
        ),
      ),
    );
  }
}
