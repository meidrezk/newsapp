import 'package:flutter/material.dart';
import 'package:newsapp/models/category_model.dart';
import 'package:newsapp/widgets/category_card.dart';

class CategoriesListView extends StatelessWidget {
  const CategoriesListView({
    super.key,
  });

  final List<CategoryModel> categories = const [
    CategoryModel(
        imageAssetUrl: "assets/business.webp", categoryName: "Business"),
    CategoryModel(
        imageAssetUrl: "assets/entertaiment.avif",

        categoryName: "Entertaiment"),
    CategoryModel(imageAssetUrl: "assets/health.avif", categoryName: "Health"),
    CategoryModel(
        imageAssetUrl: "assets/science.avif", categoryName: "Science"),
    CategoryModel(
        imageAssetUrl: "assets/technology.jpeg", categoryName: "Technology"),
    CategoryModel(imageAssetUrl: "assets/sport.webp", categoryName: "Sport"),
    CategoryModel(imageAssetUrl: "assets/general.png", categoryName: "General"),
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 85,
      child: ListView.builder(
        itemBuilder: (context, index) => CategoryCard(
          category: categories[index],
        ),
        scrollDirection: Axis.horizontal,
        itemCount: categories.length,
      ),
    );
  }
}
