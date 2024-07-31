import 'package:flutter/material.dart';

class CustomNews extends StatelessWidget {
  const CustomNews({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.all(Radius.circular(20)),
          child: Image(
            height: 250,
            width: double.infinity,
            fit: BoxFit.cover,
            image: NetworkImage(
                'https://media.istockphoto.com/id/1369150014/vector/breaking-news-with-world-map-background-vector.jpg?s=612x612&w=0&k=20&c=9pR2-nDBhb7cOvvZU_VdgkMmPJXrBQ4rB1AkTXxRIKM='),
          ),
        ),
        Text(
          'we have new news asdasdsad asd asdas dasdasdasdasdasdasdasdhere sadsadasda asdasdasdasdasdad sa das dasd ',
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
          style: TextStyle(
              color: Colors.black, fontSize: 20, fontWeight: FontWeight.w500),
        ),
        SizedBox(
          height: 10,
        ),
        Text(
          'small line sdadasdasd asd asdasdas ',
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w300,
            color: Colors.grey,
          ),
        )
      ],
    );
  }
}
