import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:news_app/models/article_model.dart';
import 'package:news_app/services/news_services.dart';
import 'package:news_app/widgets/news_list_view.dart';

class NewsListViewBuileder extends StatefulWidget {
  const NewsListViewBuileder({
    super.key,
  });

  @override
  State<NewsListViewBuileder> createState() => _NewsListViewBuilederState();
}

class _NewsListViewBuilederState extends State<NewsListViewBuileder> {
  bool isLoading = true;
  List<ArticleModel> articles = [];
  @override
  void initState() {
    super.initState();
    getGenralNews();
  }

  Future<void> getGenralNews() async {
    articles = await NewsServices(dio: Dio()).getNews();
    isLoading = false;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return isLoading
        ? const SliverToBoxAdapter(
            child: SizedBox(
              height: 450,
              child: Center(
                child: CircularProgressIndicator(),
              ),
            ),
          )
        : articles.isNotEmpty
            ? NewsListView(
                articles: articles,
              )
            : const SliverToBoxAdapter(
                child: SizedBox(
                  height: 450,
                  child: Center(
                    child: Text('oops error here Try Again'),
                  ),
                ),
              );
  }
}
