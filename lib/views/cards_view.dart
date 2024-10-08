import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
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
          style: TextStyle(fontWeight: FontWeight.w300, fontSize: 28.sp),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 10.w),
        child: CustomScrollView(
          physics: const BouncingScrollPhysics(),
          slivers: [
            SliverToBoxAdapter(
              child: SizedBox(
                height: 10.h,
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
