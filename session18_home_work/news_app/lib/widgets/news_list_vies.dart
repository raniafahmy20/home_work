import 'package:flutter/material.dart';
import 'package:news_app/models/article_model.dart';

import 'package:news_app/widgets/news_item.dart';

class NewsListViews extends StatelessWidget {
  final List<ArticleModel> articles;
  const NewsListViews({super.key, required this.articles});
  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate(
        (context, index) => Padding(
          padding: const EdgeInsets.only(bottom: 20),
          child: NewsItem(articleModel: articles[index]),
        ),
        childCount: articles.length,
      ),
    );
  }
}
