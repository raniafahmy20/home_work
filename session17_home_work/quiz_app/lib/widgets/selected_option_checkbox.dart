import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:quiz_app/thems/asset.dart';
import 'package:quiz_app/thems/color.dart';
import 'package:quiz_app/thems/decoration.dart';
import 'package:quiz_app/thems/text_style.dart';

class SelectedOptionCheckbox extends StatelessWidget {
  final String option;
  const SelectedOptionCheckbox({super.key, required this.option});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 2, left: 2, top: 5, bottom: 8),
      child: Container(
        width: double.infinity,
        height: 70,
        decoration: DecorationModel.secondryDecoratuoin(),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 25),
          child: Row(
            children: [
              CircleAvatar(
                radius: 14,
                backgroundColor: ColorModel.mainViolet,
                child: SvgPicture.asset(AssetModel.check),
              ),

              SizedBox(width: 20),
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
