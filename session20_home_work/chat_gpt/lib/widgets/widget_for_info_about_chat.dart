import 'package:flutter/material.dart';

class WidgetForInfoAboutChat extends StatelessWidget {
  final String info;
  const WidgetForInfoAboutChat({super.key, required this.info});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(30)),
          color: Color(0xFFF4F4F4),
        ),
        child: Center(child: Text(info)),
      ),
    );
  }
}
