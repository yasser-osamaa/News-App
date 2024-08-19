import 'package:dio/dio.dart';
import 'package:news_app/models/article_model.dart';

class NewsServices {
  NewsServices({required this.dio});
  final Dio dio;
  final String baseUrl = 'https://newsapi.org/v2';
  final String apiKey = '80c42b59f30048c2b76d561591532594';
  Future<List<ArticleModel>> getNews({required String type}) async {
    try {
      Response response =
          await dio.get('$baseUrl/everything?q=$type&apiKey=$apiKey');
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
    } on DioException catch (e) {
      throw Exception(
          e.response?.data['message'] ?? "oops there was an error, try later");
    } catch (e) {
      throw Exception('oops there was an error, try later');
    }
  }
}
