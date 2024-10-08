import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
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
        padding: EdgeInsets.only(right: 12.w),
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            image: DecorationImage(
              fit: BoxFit.fill,
              image: AssetImage(item.img),
            ),
          ),
          height: 130.h,
          width: 170.w,
          child: Center(
            child: Text(
              item.title,
              style: TextStyle(
                color: Colors.white,
                fontSize: 20.sp,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
