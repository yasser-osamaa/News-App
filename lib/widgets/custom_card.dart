import 'package:flutter/material.dart';
import 'package:news_app/models/card_item.dart';
import 'package:news_app/views/cards_view.dart';

class CustomCard extends StatelessWidget {
  const CustomCard({super.key, required this.item});
  final CardItem item;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) {
              return CardsView(
                category: item.title,
              );
            },
          ),
        );
      },
      child: Padding(
        padding: const EdgeInsets.only(right: 12),
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            image: DecorationImage(
              fit: BoxFit.fill,
              image: AssetImage(item.img),
            ),
          ),
          height: 130,
          width: 170,
          child: Center(
            child: Text(
              item.title,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 20,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
