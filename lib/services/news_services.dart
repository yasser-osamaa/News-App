import 'package:dio/dio.dart';
import 'package:news_app/models/article_model.dart';

class NewsServices {
  NewsServices({required this.dio});
  final Dio dio;
  Future<List<ArticleModel>> getNews({required String type}) async {
    try {
      Response response = await dio.get(
          'https://newsapi.org/v2/everything?q=$type&apiKey=80c42b59f30048c2b76d561591532594');
      //////
      Map<String, dynamic> jsonData = response.data;
      List<dynamic> articles = jsonData['articles'];
      //////
      List<ArticleModel> articleList = [];
      for (var article in articles) {
        ArticleModel articalModel = ArticleModel.fromJson(article);
        articleList.add(articalModel);
      }
      return articleList;
    } catch (e) {
      return [];
    }
  }
}
