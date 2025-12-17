import 'package:account/thems/box_decoration_model.dart';
import 'package:flutter/material.dart';

class IconView extends StatelessWidget {
  final IconData iconData;
  const IconView({super.key, required this.iconData});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      height: 100,
      decoration: BoxDecorationModel.decorationIconView(),
      child: Icon(iconData, size: 50, color: Colors.white),
    );
  }
}
