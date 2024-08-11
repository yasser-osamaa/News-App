import 'package:flutter/material.dart';
import 'package:news_app/models/card_item.dart';
import 'package:news_app/widgets/custom_card.dart';

class CardsListView extends StatelessWidget {
  const CardsListView({
    super.key,
  });

  final List<CardItem> cards = const [
    CardItem(
      img: 'assets/images/sports.avif',
      title: 'Sports',
    ),
    CardItem(
      img: 'assets/images/technology.jpeg',
      title: 'Technology',
    ),
    CardItem(
      img: 'assets/images/science.avif',
      title: 'Science',
    ),
    CardItem(
      img: 'assets/images/health.avif',
      title: 'Health',
    ),
    CardItem(
      img: 'assets/images/entertaiment.avif',
      title: 'Entertaiment',
    ),
    CardItem(
      img: 'assets/images/business.avif',
      title: 'Business',
    ),
    CardItem(
      img: 'assets/images/general.avif',
      title: 'General',
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 110,
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
    );
  }
}
