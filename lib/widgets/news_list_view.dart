import 'package:flutter/material.dart';
import 'package:news_app_th/models/article_model.dart';

import 'news_tile.dart';

class NewsListView extends StatelessWidget {
  final List<ArticleModel> articles;
  // List<ArticleModel> articles = [];

  NewsListView({
    super.key,
    required this.articles,
  });

  @override
  Widget build(BuildContext context) {
    return SliverList(
      // return SliverList(
      delegate: SliverChildBuilderDelegate(
        (context, index) {
          return Padding(
            padding: const EdgeInsets.only(
              bottom: 22.0,
            ),
            child: NewsTile(
              articleModel: articles[index],
            ),
          );
        },
        // childCount: 10,
        childCount: articles.length,
      ),
    );
  }
}

/* class NewsListView extends StatefulWidget {
  const NewsListView({
    super.key,
  });

  @override
  State<NewsListView> createState() => _NewsListViewState();
}

class _NewsListViewState extends State<NewsListView> {
  List<ArticleModel> articles = [];

  // bool isLoading = true;

  /* @override
  void initState() {
    super.initState();

    getGeneralNews();
  } */

  /* Future<void> getGeneralNews() async {
    articles = await NewsService(Dio()).getNews();
    // isLoading = false;
    setState(() {});
  } */
  // indicator

  @override
  Widget build(BuildContext context) {
    //! SliverList
    return SliverList(
      // return SliverList(
      delegate: SliverChildBuilderDelegate(
        (context, index) {
          return Padding(
            padding: const EdgeInsets.only(
              bottom: 22.0,
            ),
            child: NewsTile(
              articleModel: articles[index],
            ),
          );
        },
        // childCount: 10,
        childCount: articles.length,
      ),
    );
  }
}
 */