import 'package:flutter/material.dart';

class CustomNextBackPage extends StatelessWidget {
  VoidCallback nextArrow;
  VoidCallback backArrow;

  CustomNextBackPage({
    super.key,
    required this.backArrow,
    required this.nextArrow,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        GestureDetector(
          onTap: backArrow,

          child: Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8),
              side: BorderSide(color: Color(0xFF8E84FF)),
              // درجة دوران الجوانب
            ),
            color: Color(0xFF2A2740),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 8),
              child: Row(
                children: [
                  Icon(Icons.arrow_back_ios_new, color: Colors.white, size: 15),
                  SizedBox(width: 18),
                  Text(
                    'Back',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      fontFamily: 'Gilroy',
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        Spacer(),
        GestureDetector(
          onTap: nextArrow,
          child: Card(
            color: Color(0xFF8E84FF),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 8),
              child: Row(
                children: [
                  Text(
                    'Next',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      fontFamily: 'Gilroy',
                    ),
                  ),
                  SizedBox(width: 18),
                  Icon(
                    Icons.arrow_forward_ios_outlined,
                    color: Colors.white,
                    size: 15,
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
