import 'package:dio/dio.dart';

class NewsServices {
  NewsServices({required this.dio});
  final Dio dio;
  getNews() async {
    Response response = await dio.get(
        'https://newsapi.org/v2/top-headlines?apiKey=80c42b59f30048c2b76d561591532594&category=general&country=eg');
  }
}
