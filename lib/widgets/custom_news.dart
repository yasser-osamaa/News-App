import 'package:flutter/material.dart';
import 'package:news_app/models/article_model.dart';

class CustomNews extends StatelessWidget {
  const CustomNews({super.key, required this.articles});
  final ArticleModel articles;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ClipRRect(
          borderRadius: const BorderRadius.all(Radius.circular(20)),
          child: Image(
            height: 250,
            width: double.infinity,
            fit: BoxFit.cover,
            image: NetworkImage(articles.image ??
                'https://media.istockphoto.com/id/1369150014/vector/breaking-news-with-world-map-background-vector.jpg?s=612x612&w=0&k=20&c=9pR2-nDBhb7cOvvZU_VdgkMmPJXrBQ4rB1AkTXxRIKM='),
          ),
        ),
        Text(
          articles.title,
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
          style: const TextStyle(
              color: Colors.black, fontSize: 20, fontWeight: FontWeight.w500),
        ),
        const SizedBox(
          height: 10,
        ),
        Text(
          articles.subTitle ?? '',
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
          style: const TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w300,
            color: Colors.grey,
          ),
        )
      ],
    );
  }
}
