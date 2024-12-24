import 'package:flutter/material.dart';
import 'package:news_app_th/models/category_model.dart';
import 'package:news_app_th/views/category_view.dart';

class CategoryCard extends StatelessWidget {
  const CategoryCard({
    super.key,
    required this.category,
    // required this.CategoryName,
    // required this.image,
  });

  // final String CategoryName;
  // final String image;

  final CategoryModel category;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) => CategoryView(
              category: category.categoryName,
            ),
          ),
        );
      },
      child: Padding(
        padding: const EdgeInsets.only(
          right: 16.0,
        ),
        child: Container(
          height: 100.0,
          width: 160.0,
          decoration: BoxDecoration(
            image: DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage(
                category.image,
                // image,
                // 'assets/business.png',
              ),
            ),
            borderRadius: BorderRadius.circular(
              12.0,
            ),
          ),
          child: Center(
            child: Text(
              category.categoryName,
              // CategoryName,
              // 'Sports',
              style: TextStyle(
                color: Colors.white,
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
