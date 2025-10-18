import 'package:flutter/material.dart';
import 'package:session2_homework/widgets/featuresSectionItem.dart';

class FeaturesSection extends StatelessWidget {
  const FeaturesSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Features',
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),
        FeaturesSectionItem(
          title: 'Fast Performance',
          subTitle: 'Lightning fast app Performance',
          icon: Container(
            width: 30,
            height: 30,
            child: Image.asset('images/dashboard.png'),
          ),
          backgroundColorIcon: Color(0xFFEFEBF7),
        ),
        FeaturesSectionItem(
          title: 'Secure',
          subTitle: 'Your data is safe with us',
          icon: Icon(Icons.security_outlined, color: Color(0xFF2695EE)),
          backgroundColorIcon: Color(0xFFE8F5FE),
        ),
        FeaturesSectionItem(
          title: 'Beautiful UI',
          subTitle: 'Modern and clean design',
          icon: Container(
            height: 30,
            width: 30,
            child: Image.asset('images/palletes.png'),
          ),
          backgroundColorIcon: Color(0xFFFFF3E7),
        ),
      ],
    );
  }
}
