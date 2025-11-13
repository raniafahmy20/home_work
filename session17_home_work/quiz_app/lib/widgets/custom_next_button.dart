import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:quiz_app/thems/asset.dart';
import 'package:quiz_app/thems/color.dart';
import 'package:quiz_app/thems/text_style.dart';

class CustomNextButton extends StatelessWidget {
  VoidCallback next;
  CustomNextButton({super.key, required this.next});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: next,
      child: Container(
        decoration: BoxDecoration(
          color: ColorModel.secondryViolet,
          borderRadius: BorderRadius.all(Radius.circular(15)),
        ),
        width: 124,
        height: 59,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: Row(
            children: [
              Text('Next', style: TextStyleModel.medium16(Colors.white)),
              Spacer(),
              SvgPicture.asset(AssetModel.next, height: 22),
            ],
          ),
        ),
      ),
    );
  }
}
