import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:news_app/widgets/custom_news.dart';

class NewsListView extends StatelessWidget {
  const NewsListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate(
        childCount: 10,
        (context, index) {
          return const Padding(
            padding: EdgeInsets.only(bottom: 16),
            child: CustomNews(),
          );
        },
      ),
    );
  }
}
