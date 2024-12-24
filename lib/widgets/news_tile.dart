import 'package:flutter/material.dart';
import 'package:news_app_th/models/article_model.dart';

// cached Network Image

class NewsTile extends StatelessWidget {
  const NewsTile({
    super.key,
    required this.articleModel,
  });

  final ArticleModel articleModel;

  @override
  Widget build(BuildContext context) {
    return articleModel.image != null
        ? Column(
          // return Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            ClipRRect(
                borderRadius: BorderRadius.circular(
                  6.0,
                ),
                // child: articleModel.image != null
                // ? Image.network(
                child: Image.network(
                  articleModel.image!,
                  // 'assets/technology.jpeg',
                  height: 200.0,
                  width: double.infinity,
                  fit: BoxFit.cover,
                  // ),
                )
                // : SizedBox(),
                /* child: Image.asset(
          'assets/technology.jpeg',
          height: 200.0,
          width: double.infinity,
          fit: BoxFit.cover,
        ), */
                ),
            SizedBox(
              height: 12.0,
            ),
            Text(
              articleModel.title,
              // 'Large Title Should be places Larege',
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(
                color: Colors.black87,
                fontSize: 20.0,
                fontWeight: FontWeight.w500,
              ),
            ),
            SizedBox(
              height: 8.0,
            ),
            Text(
              articleModel.subTitle ?? '',
              // 'Large Title Should be places Larege Large Title Should be places Larege',
              maxLines: 2,
              // overflow: TextOverflow.ellipsis,
              style: TextStyle(
                color: Colors.grey,
                fontSize: 14.0,
              ),
            ),
          ],
        )
        : SizedBox();
    // );
  }
}
