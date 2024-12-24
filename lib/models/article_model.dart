class ArticleModel {
  final String? image;
  final String title;
  final String? subTitle;
  final String? url;
  // final Source source;

  ArticleModel({
    required this.image,
    required this.title,
    required this.subTitle,
    this.url,
    // required this.source,
  });
}

/* class Source {
  final String id;
  final String name;

  Source({
    required this.id,
    required this.name,
  });
} */
