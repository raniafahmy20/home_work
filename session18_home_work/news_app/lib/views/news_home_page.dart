import 'package:flutter/material.dart';
import 'package:news_app/widgets/app_bar.dart';
import 'package:news_app/widgets/categories_list_view.dart';
import 'package:news_app/widgets/news_future_builder.dart';

class NewsHomePage extends StatelessWidget {
  const NewsHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 40, right: 15, left: 15),
        child: CustomScrollView(
          physics: BouncingScrollPhysics(),
          slivers: [
            AppBarItem(),
            SliverToBoxAdapter(child: CategoriesListView()),
            SliverToBoxAdapter(child: SizedBox(height: 20)),
            NewsFutureBuilder(category: 'general'),
          ],
        ),
      ),
    );
  }
}
