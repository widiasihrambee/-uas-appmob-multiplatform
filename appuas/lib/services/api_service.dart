import 'dart:convert';
import 'package:http/http.dart';

import 'package:appuas/model/article_model.dart';

class ApiService {
  final endPointUrl = "https://jaroji.web.id/api/news.php";

  Future<List<Article>> getArticle() async {
    Response res = await get(endPointUrl);
    if (res.statusCode == 200) {
      Map<String, dynamic> json = jsonDecode(res.body);
      List<dynamic> body = json['berita'];
      List<Article> article =
          body.map((dynamic item) => Article.fromJSON(item)).toList();

      return article;
    } else {
      throw Exception("${res.statusCode} Can't get the News");
    }
  }
}
