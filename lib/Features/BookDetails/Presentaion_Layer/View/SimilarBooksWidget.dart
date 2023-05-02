import 'package:book_store/Core/utilits/Constants/Styles.dart';
import 'package:book_store/Features/BookDetails/Presentaion_Layer/View/Book_Details_Screen.dart';
import 'package:book_store/Features/HomeScreen/Presentaion_Layer/view/BookWidget.dart';
import 'package:book_store/Features/HomeScreen/Presentaion_Layer/view/HorizontalListView.dart';
import 'package:flutter/material.dart';

class SimilarBooksWidget extends StatelessWidget {
  const SimilarBooksWidget({
    super.key,
    required this.size,
    required this.book_Details,
  });

  final Size size;
  final String book_Details;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: size.width * 0.05,
              ),
              child: const Text(
                "You can also like",
                style: Styles.textStyle16,
              ),
            ),
          ],
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 10),
            child: HorizontalListView(
                isHomeScreen: false,
                size: size,
                widget: InkWell(
                  onTap: () {
                    Navigator.of(context).pushNamed(Book_Details.book_Details);
                  },
                  child: BookWidget(
                    size: size,
                  ),
                )),
          ),
        )
      ],
    );
  }
}
