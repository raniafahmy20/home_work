import 'package:flutter/material.dart';
import 'package:quiz_app/thems/color.dart';
import 'package:quiz_app/thems/text_style.dart';

class UnSelectedOption extends StatelessWidget {
  final String option;
  const UnSelectedOption({super.key, required this.option});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsetsGeometry.only(left: 2, right: 2, top: 5, bottom: 8),
      child: Container(
        width: double.infinity,
        height: 70,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Colors.white,
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 25),
          child: Row(
            children: [
              CircleAvatar(
                radius: 14,
                backgroundColor: ColorModel.mainViolet,
                child: CircleAvatar(radius: 13, backgroundColor: Colors.white),
              ),

              const SizedBox(width: 20),
              Text(
                option,
                style: TextStyleModel.medium16(ColorModel.mainViolet),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
