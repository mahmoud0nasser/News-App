import 'package:dio/dio.dart';
import 'package:news_app_th/models/article_model.dart';

class NewsService {
  final Dio dio;

  NewsService(
    this.dio,
  );

  Future<List<ArticleModel>> getNews({
    required String category,
  }) async {
    /* return await Future.delayed(
      Duration(
        seconds: 3,
      ),
      () async {
        var response = await dio.get(
            // 'https://newsapi.org/v2/top-headlines?apiKey=5b29ba5a579247039238a9305c3b1ae5&country=eg&category=general');
            'https://newsapi.org/v2/top-headlines?country=us&apiKey=5b29ba5a579247039238a9305c3b1ae5&category=general');

        Map<String, dynamic> jsonData = response.data;

        // List<Map<String, dynamic>> articles = jsonData['articles'] as List<Map<String, dynamic>>;
        List<dynamic> articles = jsonData['articles'];

        List<ArticleModel> articlesList = [];

        for (var article in articles) {
          ArticleModel articleModel = ArticleModel(
            /* source: Source(
          id: article['source']['id'],
          name: article['source']['name'],
        ), */
            image: article['urlToImage'],
            title: article['title'],
            subTitle: article['description'],
          );

          articlesList.add(articleModel);
        }

        return articlesList;
      },
    ); */

    // Response response = await dio.get(
    try {
      var response = await dio.get(
          // 'https://newsapi.org/v2/top-headlines?apiKey=5b29ba5a579247039238a9305c3b1ae5&country=eg&category=general');
          'https://newsapi.org/v2/top-headlines?country=us&apiKey=5b29ba5a579247039238a9305c3b1ae5&category=$category');

      Map<String, dynamic> jsonData = response.data;

      // List<Map<String, dynamic>> articles = jsonData['articles'] as List<Map<String, dynamic>>;
      List<dynamic> articles = jsonData['articles'];

      List<ArticleModel> articlesList = [];

      for (var article in articles) {
        ArticleModel articleModel = ArticleModel(
          /* source: Source(
        id: article['source']['id'],
        name: article['source']['name'],
      ), */
          image: article['urlToImage'],
          title: article['title'],
          subTitle: article['description'],
          url: article['url'],
        );

        articlesList.add(articleModel);
      }

      return articlesList;
    } catch (e) {
      return [];
    }

    // print(articlesList);

    /* for(var article in articles) {
      // print(article);
      print(article['author']);
    } */

    // print(jsonData);
    // print(jsonData['articles'][0]['title']);
  }
}
