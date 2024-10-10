import 'package:flutter/material.dart';
import 'package:newsapp/widgets/news_list_view-builder.dart';
class CategoryView extends StatelessWidget {
   CategoryView({super.key, required this.category});
final String category;
  @override
  Widget build(BuildContext context) {
    return   Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: CustomScrollView(
          slivers: [
             NewsListViewBuilder(category:category),
          ],
        ),
      ),
    );
  }
}
