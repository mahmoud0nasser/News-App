/* import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:news_app_th/models/article_model.dart';

import '../services/news_services.dart';
import 'news_tile.dart';

class NewsListView extends StatefulWidget {
  const NewsListView({
    super.key,
  });

  @override
  State<NewsListView> createState() => _NewsListViewState();
}

class _NewsListViewState extends State<NewsListView> {
  List<ArticleModel> articles = [];

  bool isLoading = true;

  @override
  void initState() {
    super.initState();

    getGeneralNews();
  }

  Future<void> getGeneralNews() async {
    articles = await NewsService(Dio()).getNews();
    isLoading = false;
    setState(() {});
  }
  // indicator

  @override
  Widget build(BuildContext context) {
    //! SliverList
    return isLoading
        ? SliverToBoxAdapter(
            child: Center(
              child: CircularProgressIndicator(
                color: Colors.orange,
              ),
            ),
          )
        : SliverList(
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

    //! ListView
    /* return ListView.builder(
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      // physics: BouncingScrollPhysics(),
      itemCount: 10,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.only(
            bottom: 22.0,
          ),
          child: NewsTile(),
        );
      },
    ); */
  }
}
 */