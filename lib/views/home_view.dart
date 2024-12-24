import 'package:flutter/material.dart';
import '../widgets/categories_list_view.dart';
import '../widgets/news_list_view_builder.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        elevation: 0.0,
        backgroundColor: Colors.transparent,
        title: Row(
          // mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              'News',
              style: TextStyle(
                color: Colors.black,
                fontSize: 30.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              'Cloud',
              style: TextStyle(
                color: Colors.orange,
                fontSize: 30.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 16.0,
        ),
        child: CustomScrollView(
          physics: BouncingScrollPhysics(),
          slivers: [
            SliverToBoxAdapter(
              child: CategoriesListView(),
            ),
            SliverToBoxAdapter(
              child: SizedBox(
                height: 32.0,
              ),
            ),
            NewsListViewBuilder(
              category: 'general',
            ),
            /* SliverList(
              delegate: SliverChildBuilderDelegate(
                (context, index) {
                  return NewsTile();
                },
                childCount: 10,
              ),
            ), */
            /* SliverToBoxAdapter(
              child: NewsListView(),
            ), */
          ],
        ),
        /* child: Column(
          children: [
            CategoriesListView(),
            SizedBox(
              height: 32.0,
            ),
            Expanded(
              child: NewsListView(),
            ),
          ],
        ), */
      ),

      //! Me Create
      /* body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(
              left: 15.0,
            ),
            child: Stack(
              alignment: Alignment.center,
              children: [
                Container(
                  width: 180.0,
                  height: 120.0,
                  clipBehavior: Clip.antiAlias,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(
                      15.0,
                    ),
                  ),
                  child: Image.asset(
                    'assets/technology.jpeg',
                    fit: BoxFit.cover,
                  ),
                ),
                Text(
                  'Business',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 30.0,
                  ),
                ),
              ],
            ),
          ),
        ],
      ), */
    );
  }
}
