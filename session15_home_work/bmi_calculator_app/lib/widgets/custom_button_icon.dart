import 'package:flutter/material.dart';

class CustomButtonIcon extends StatelessWidget {
  late IconData iconData;
  VoidCallback? action;

  CustomButtonIcon({super.key, required this.iconData, this.action});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: IconButton(
        style: ButtonStyle(
          backgroundColor: WidgetStateProperty.all(Color(0xFF4B4E5F)),
        ),
        onPressed: action,
        icon: iconData == Icons.minimize
            ? Transform.translate(
                offset: Offset(0, -12),
                child: Icon(
                  iconData,
                  color: Colors.white,
                  size: 35,
                  weight: 27,
                ),
              )
            : Icon(iconData, color: Colors.white, size: 35, weight: 27),
      ),
    );
  }
}
