import 'package:flutter/material.dart';
import 'package:news_app/models/card_item.dart';
import 'package:news_app/widgets/custom_card.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});
  final List<CardItem> cards = const [
    CardItem(
      img: 'assets/images/sports.avif',
      title: 'Sports',
    ),
    CardItem(
      img: 'assets/images/technology.jpeg',
      title: 'technology',
    ),
    CardItem(
      img: 'assets/images/science.avif',
      title: 'science',
    ),
    CardItem(
      img: 'assets/images/health.avif',
      title: 'health',
    ),
    CardItem(
      img: 'assets/images/general.avif',
      title: 'general',
    ),
    CardItem(
      img: 'assets/images/entertaiment.avif',
      title: 'entertaiment',
    ),
    CardItem(
      img: 'assets/images/business.avif',
      title: 'business',
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        centerTitle: true,
        title: const Row(
          //mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'News',
              style:
                  TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
            ),
            Text(
              'Cloud',
              style:
                  TextStyle(color: Colors.orange, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
      body: Column(
        children: [
          SizedBox(
            height: 130,
            // first solution to make loop on list of items and make it widgets
            // child: ListView.builder(
            //   scrollDirection: Axis.horizontal,
            //   shrinkWrap: true,
            //   itemCount: cards.length,
            //   itemBuilder: (context,index) {
            //     return CustomCard(item: cards[index]);
            //   },
            //
            // ),
            // second solution to make loop on list of items and make it widgets
            //used for small, static lists
            child: ListView(
              scrollDirection: Axis.horizontal,
              shrinkWrap: true,
              children: cards.map((item) => CustomCard(item: item)).toList(),
            ),
          ),
        ],
      ),
    );
  }
}
