import 'package:flutter/material.dart';
import 'package:news_app_th/models/category_model.dart';

import 'category_card.dart';

class CategoriesListView extends StatelessWidget {
  const CategoriesListView({
    super.key,
  });

  final List<CategoryModel> categories = const [
    CategoryModel(
      categoryName: 'Business',
      image: 'assets/business.png',
    ),
    CategoryModel(
      categoryName: 'Entertainment',
      image: 'assets/entertaiment.png',
    ),
    CategoryModel(
      categoryName: 'Science',
      image: 'assets/science.png',
    ),
    CategoryModel(
      categoryName: 'Sports',
      image: 'assets/sports.png',
    ),
    CategoryModel(
      categoryName: 'Technology',
      image: 'assets/technology.jpeg',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: categories.length,
        itemBuilder: (context, index) {
          return CategoryCard(
            category: categories[index],
            // CategoryName: categories[index].categoryName,
            // image: categories[index].image,
          );
        },
      ),
    );
  }
}
