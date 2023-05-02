import 'package:book_store/Features/BookDetails/Presentaion_Layer/View/Book_Details_Screen.dart';
import 'package:book_store/Features/HomeScreen/Presentaion_Layer/view/BestSellerItem.dart';
import 'package:flutter/material.dart';

class VerticalListView extends StatelessWidget {
  const VerticalListView({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 7,
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemBuilder: (BuildContext context, int index) {
        return BestSellerItem(
          size: size,
          onTap: () {
            Navigator.of(context).pushNamed(Book_Details.book_Details);
          },
        );
      },
    );
  }
}
