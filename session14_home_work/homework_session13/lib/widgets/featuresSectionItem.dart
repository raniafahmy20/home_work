import 'package:flutter/material.dart';

class FeaturesSectionItem extends StatelessWidget {
  late String title;
  late String subTitle;
  late Widget icon;
  late Color backgroundColorIcon;

  FeaturesSectionItem({
    super.key,
    required this.title,
    required this.subTitle,
    required this.icon,
    required this.backgroundColorIcon,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 8,
      child: ListTile(
        title: Text(
          title,
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 12),
        ),
        subtitle: Text(
          subTitle,
          style: TextStyle(color: Color(0xFF9F9F9F), fontSize: 9),
        ),
        leading: Container(child: icon, color: backgroundColorIcon),
        trailing: Icon(Icons.navigate_next, color: Color(0xFF9F9F9F)),
      ),
    );
  }
}
