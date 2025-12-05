import 'package:flutter/material.dart';
import 'package:news_app/widgets/news_future_builder.dart';

class CategoryViews extends StatelessWidget {
  final String category;
  const CategoryViews({super.key, required this.category});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 30),
        child: CustomScrollView(
          slivers: [NewsFutureBuilder(category: category)],
        ),
      ),
    );
  }
}
