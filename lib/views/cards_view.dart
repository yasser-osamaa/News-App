import 'package:flutter/material.dart';
import 'package:news_app/widgets/news_list_builder.dart';

class CardsView extends StatelessWidget {
  const CardsView({super.key, required this.category});
  final String category;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange,
        centerTitle: true,
        title: Text(
          category,
          style: const TextStyle(fontWeight: FontWeight.w300, fontSize: 28),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: CustomScrollView(
          slivers: [
            const SliverToBoxAdapter(
              child: SizedBox(
                height: 10,
              ),
            ),
            NewsListViewBuileder(
              category: category,
            ),
          ],
        ),
      ),
    );
  }
}
