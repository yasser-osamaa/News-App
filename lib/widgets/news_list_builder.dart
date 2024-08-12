import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:news_app/models/article_model.dart';
import 'package:news_app/services/news_services.dart';
import 'package:news_app/widgets/news_list_view.dart';

class NewsListViewBuileder extends StatefulWidget {
  const NewsListViewBuileder({super.key, required this.category});
  final String category;
  @override
  State<NewsListViewBuileder> createState() => _NewsListViewBuilederState();
}

class _NewsListViewBuilederState extends State<NewsListViewBuileder> {
  // var future ; --> هي هي ال تحت بس عشان عايز فيوتشر تاخد القيمه ال هتستخدمها كدا كدا
  late Future<List<ArticleModel>> future;
  @override
  void initState() {
    super.initState();
    future = NewsServices(dio: Dio()).getNews(type: widget.category);
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<ArticleModel>>(
      future: future,
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          return NewsListView(
            articles: snapshot.data!,
          );
        } else if (snapshot.hasError) {
          return const SliverToBoxAdapter(
            child: SizedBox(
              height: 450,
              child: Center(
                child: Text('oops error here Try Again'),
              ),
            ),
          );
        } else {
          return const SliverToBoxAdapter(
            child: SizedBox(
              height: 450,
              child: Center(
                child: CircularProgressIndicator(),
              ),
            ),
          );
        }
      },
    );
  }
}
