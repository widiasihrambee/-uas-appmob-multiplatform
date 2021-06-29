import 'package:appuas/model/source_model.dart';

class Article {
  final String author;
  final String title;
  final String imageURL;
  final String subtitle;

  Article({this.author, this.title, this.imageURL, this.subtitle});

  factory Article.fromJSON(Map<String, dynamic> json) {
    return Article(
      author: json["author"],
      title: json['title'],
      imageURL: json['image'],
      subtitle: json['subtitle'],
    );
  }
}
