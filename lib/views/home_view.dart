import 'package:flutter/material.dart';
import 'package:newsapp/widgets/categories_list_view.dart';
import 'package:newsapp/widgets/category_card.dart';
import 'package:newsapp/widgets/news_list_view-builder.dart';
import 'package:newsapp/widgets/news_list_view.dart';
import 'package:newsapp/widgets/news_tile.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        centerTitle: true,
        elevation: 0,
        title: const Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text('New',
                style: TextStyle(
                    fontWeight: FontWeight.bold, color: Colors.black)),
            Text('Cloud',
                style: TextStyle(
                    fontWeight: FontWeight.bold, color: Colors.orange)),
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child:  CustomScrollView(slivers: [
          SliverToBoxAdapter(child: CategoriesListView()),
          SliverToBoxAdapter(child: SizedBox( height: 22,)),
          NewsListViewBuilder(category: 'general',),
        ]),
      ),



//الطريقه المستخدمه بالأعلى أفضل من الطريقه اللي تحت لأنها أعلى منها في البرفورمينس بسبب انها مبتبنيش كل الأيتمز كلهم مره واحده لأ بيكونوا lazy items واللي بيتعرض بس هو اللي بيتبني
      // Padding(
      //   padding: const EdgeInsets.symmetric(horizontal: 16),
      //   child:
      //
      //
      //   ListView(scrollDirection: Axis.vertical,physics: BouncingScrollPhysics(),
      //   children: [
      //     CategoriesListView(),
      //     SizedBox(height: 25,),
      //     NewsListView(),
      //
      //   ]
      //   ),
      // ),
    );
  }
}
