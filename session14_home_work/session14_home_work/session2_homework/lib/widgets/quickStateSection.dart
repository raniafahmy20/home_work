import 'package:flutter/material.dart';
import 'package:session2_homework/widgets/quickStateSectionItem.dart';

class QuickStateSection extends StatelessWidget {
  const QuickStateSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        spacing: 5,
        children: [
          Text(
            'Quick State',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          Row(
            spacing: 30,
            children: [
              QuickStateSectionItem(
                icon: Icon(Icons.people, color: Color(0xFF673BB2)),
                describtion: 'Users',
                number: '1,234',
              ),
              QuickStateSectionItem(
                icon: Icon(Icons.star, color: Color(0xFFFF9603)),
                describtion: 'Rating',
                number: '4.8',
              ),
              QuickStateSectionItem(
                icon: Container(
                  width: 25,
                  height: 25,
                  child: Image.asset('images/trend.png'),
                ),
                describtion: 'Success',
                number: '98%',
              ),
            ],
          ),
        ],
      ),
    );
  }
}
