import 'package:flutter/material.dart';
import 'package:newsapp/models/category_model.dart';
import 'package:newsapp/views/category_view.dart';
class CategoryCard extends StatelessWidget {
  const CategoryCard({super.key, required this.category});
final CategoryModel category;
  @override
  Widget build(BuildContext context) => GestureDetector(
    onTap: () {
     Navigator.of(context).push(MaterialPageRoute(builder: (context) => CategoryView(category: category.categoryName),));
    },
    child: Container(
      margin: EdgeInsets.only(right: 16),
          height: 85,
          width: 150,
          decoration: BoxDecoration(
              color: Colors.amber,
              borderRadius: BorderRadius.circular(16),
              image: DecorationImage(
                  fit: BoxFit.fill,
                  image: AssetImage(
                    '${category.imageAssetUrl}',
                  ))),
          child:  Center(
            child: Text("${category.categoryName}",
                style: TextStyle(
                  color: Colors.white,
                )),
          ),
        ),
  );
}
