import 'package:dio/dio.dart';
import 'package:news_app/models/article_model.dart';

class Services {
  Future<List<ArticleModel>> getNews(String category) async {
    final dio = Dio();
    final response = await dio.get(
      'https://newsapi.org/v2/top-headlines?country=us&apiKey=60b4c6804f2e476abefb23dd7059ca5a&category=$category',
    );
    List<ArticleModel> articlesList = [];
    try {
      Map<String, dynamic> jsonData = response.data;

      List<dynamic> articles = jsonData["articles"];

      for (var article in articles) {
        ArticleModel articleModel = ArticleModel.fromJson(article);
        articlesList.add(articleModel);
      }
    } on DioException catch (e) {
      print(e);
    } catch (e) {
      print('eeeeeeeeeeror try again');
    }
    return articlesList;
  }
}
