class ArticleModel{
  final String? imageUrl;
  final String title;
  final String? subtitle;


  ArticleModel({required this.title, required this.subtitle, required this.imageUrl});
  factory ArticleModel.fromJson(json){
return ArticleModel(  title: json["title"],
    subtitle: json['description'],
    imageUrl: json["urlToImage"]);
  }
}