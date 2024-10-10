import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:newsapp/models/article_model.dart';
import 'package:newsapp/services/news_service.dart';
import 'package:newsapp/widgets/news_list_view.dart';
import 'package:newsapp/widgets/news_tile.dart';

class NewsListViewBuilder extends StatefulWidget {
   NewsListViewBuilder({Key? key, required this.category}) : super(key: key);
final String category;
  @override
  State<NewsListViewBuilder> createState() => _NewsListViewBuilderState();
}

class _NewsListViewBuilderState extends State<NewsListViewBuilder> {
  var future;
  @override
  void initState() {
    future =NewsService(Dio(), ).getTopHeadlines(category:widget.category);

    super.initState();
  }
  // bool isLoading=true;
  // List<ArticleModel>articles=[];
  // Future<List<ArticleModel>> getnews()async {
  //   articles= await NewsService(Dio()).getGeneralNews();
  //   isLoading=false;
  //   setState(() {
  //
  //   });
  //
  //   print("++++++++++++$articles++++++++++++");
  //   return articles;
  // }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<ArticleModel>>(future: future, builder: (context, snapshot) { if(snapshot.hasData){
      return     NewsListView(articles:snapshot.data! ,);
    }else if(snapshot.hasError){
      return const SliverToBoxAdapter(child: Center(child: Text("Oops there was an error , try later",style: TextStyle(color: Colors.black87,fontSize: 25,),)));
    }
    else{
      return const SliverToBoxAdapter(child: Center(child: CircularProgressIndicator()));
    }
});

    
    // return   isLoading ? const : articles.isNotEmpty ?
    // NewsListView(articles: articles,): const
 
 
 
  }
}