import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:quiz_app/thems/asset.dart';
import 'package:quiz_app/thems/color.dart';

class CustomBackButton extends StatelessWidget {
  VoidCallback back;

  CustomBackButton({super.key, required this.back});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: back,
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(color: ColorModel.mainViolet, width: 2),
          gradient: LinearGradient(
            colors: [
              Color(0xFF060B26).withOpacity(0.6),
              Color(0xFF1A1F37).withOpacity(0.6),
            ],
          ),
          borderRadius: BorderRadius.all(Radius.circular(15)),
        ),
        width: 124,
        height: 59,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: Row(
            children: [
              SvgPicture.asset(AssetModel.back, height: 22),
              SizedBox(width: 11),
              Text('Back', style: TextStyle(color: Colors.white)),
            ],
          ),
        ),
      ),
    );
  }
}
