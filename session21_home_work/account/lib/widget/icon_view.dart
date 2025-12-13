import 'package:flutter/material.dart';

class IconView extends StatelessWidget {
  final IconData iconData;
  const IconView({super.key, required this.iconData});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      height: 100,
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(0.2),
        shape: BoxShape.circle,
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            blurRadius: 20,
            offset: const Offset(0, 10),
          ),
        ],
      ),
      child: Icon(iconData, size: 50, color: Colors.white),
    );
  }
}
