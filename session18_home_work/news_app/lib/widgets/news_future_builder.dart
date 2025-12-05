import 'package:flutter/material.dart';
import 'package:news_app/services/service.dart';
import 'package:news_app/widgets/news_list_vies.dart';

class NewsFutureBuilder extends StatefulWidget {
  final String category;
  const NewsFutureBuilder({super.key, required this.category});

  @override
  State<NewsFutureBuilder> createState() => _NewsFutureBuilderState();
}

class _NewsFutureBuilderState extends State<NewsFutureBuilder> {
  var future;
  @override
  void initState() {
    super.initState();
    future = Services().getNews(widget.category);
    // getNews();
  }

  Future<void> getNews() async {
    future = await Services().getNews(widget.category);
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: future,
      builder: (BuildContext context, AsyncSnapshot<dynamic> snapshot) {
        if (snapshot.hasData) {
          return NewsListViews(articles: snapshot.data);
        } else if (snapshot.hasError) {
          return Text('Opps error');
        } else {
          return SliverToBoxAdapter(
            child: Center(child: CircularProgressIndicator()),
          );
        }
      },
    );
  }
}
