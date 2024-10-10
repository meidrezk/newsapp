import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:newsapp/models/article_model.dart';
import 'package:newsapp/services/news_service.dart';
import 'package:newsapp/widgets/news_tile.dart';

class NewsListView extends StatelessWidget {
   const NewsListView({Key? key, required this.articles}) : super(key: key);
final List<ArticleModel>articles;
 @override


  @override
  Widget build(BuildContext context) {
    return    SliverList(
      delegate: SliverChildBuilderDelegate(
            (context, index) =>

                Padding(
          padding: const EdgeInsets.only(bottom: 22),
          child: NewsTile(articleModel: articles[index]),
        ),
        childCount: 10,
      ),
    );
  }
}