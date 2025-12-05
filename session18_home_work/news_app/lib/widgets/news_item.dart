import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:news_app/models/article_model.dart';
import 'package:news_app/views/news_view.dart';

class NewsItem extends StatelessWidget {
  final ArticleModel articleModel;
  const NewsItem({super.key, required this.articleModel});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) {
              return NewsView(url: articleModel.url);
            },
          ),
        );
      },
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(6),
            child: CachedNetworkImage(
              imageUrl: articleModel.image != null
                  ? fo(articleModel.image!)
                  : '',
              placeholder: (context, url) => CircularProgressIndicator(),
              errorWidget: (context, url, error) =>
                  Image.asset('assets/error-404-page.jpg'),
            ),
          ),
          Text(articleModel.title),
          Text(
            articleModel.subtitle ?? '',
            style: TextStyle(color: Colors.grey),
          ),
        ],
      ),
    );
  }

  String fo(String url) {
    if (url != null) {
      if (url.contains('https:')) {
        return url;
      } else {
        return 'https:' + url;
      }
    }
  }
}
