import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:newsapp/models/article_model.dart';

class NewsTile extends StatelessWidget {
   NewsTile({super.key, required this.articleModel});
final ArticleModel articleModel;
 String defaultImagePath="https://www.publicdomainpictures.net/pictures/280000/velka/not-found-image-15383864787lu.jpg";
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(6),
          child: Image.network(
              articleModel.imageUrl??defaultImagePath,
              height: 200,
              width: double.infinity,
               fit: BoxFit.cover),
        ),
        const SizedBox(height: 12),
         Text(
          "${articleModel.title}",
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w500,
            color: Colors.black87,
          ),
        ),
        const SizedBox(height: 8),
         Text(
             articleModel.subtitle ?? "",
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(color: Colors.grey, fontSize: 14)),
      ],
    );
  }
}
