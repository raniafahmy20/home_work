class ArticleModel {
  final String title;
  final String? image;
  final String? subtitle;
  final String url;
  const ArticleModel({
    required this.title,
    this.subtitle,
    this.image,

    required this.url,
  });
  factory ArticleModel.fromJson(json) {
    return ArticleModel(
      title: json["title"],
      subtitle: json["description"],
      image: json["urlToImage"],
      url: json["url"],
    );
  }
}
