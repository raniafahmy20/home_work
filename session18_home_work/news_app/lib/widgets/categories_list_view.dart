import 'package:flutter/material.dart';
import 'package:news_app/models/category_model.dart';
import 'package:news_app/widgets/category_item.dart';

class CategoriesListView extends StatelessWidget {
  const CategoriesListView({super.key});
  final List<CategoryModel> catogryList = const [
    CategoryModel(image: 'assets/science.avif', title: 'science'),
    CategoryModel(image: 'assets/sports-tools.jpg', title: 'sports'),
    CategoryModel(image: 'assets/entertaiment.avif', title: 'entertainment'),
    CategoryModel(image: 'assets/health.avif', title: 'health'),
    CategoryModel(image: 'assets/technology.jpeg', title: 'technology'),
    CategoryModel(image: 'assets/general.jpg', title: 'general'),
    CategoryModel(image: 'assets/science.avif', title: 'business'),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 120,
      width: double.infinity,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) =>
            CategoryItem(categoryModel: catogryList[index]),
        itemCount: catogryList.length,
        separatorBuilder: (context, index) => SizedBox(width: 20),
      ),
    );
  }
}
