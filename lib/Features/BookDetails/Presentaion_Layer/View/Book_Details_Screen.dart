import 'package:book_store/Features/BookDetails/Presentaion_Layer/View/BookDetaileImage.dart';
import 'package:book_store/Features/BookDetails/Presentaion_Layer/View/BookDetaileText.dart';
import 'package:book_store/Features/BookDetails/Presentaion_Layer/View/Book_Details_AppBAr.dart';
import 'package:book_store/Features/BookDetails/Presentaion_Layer/View/PriceAndPreviewWidget.dart';
import 'package:book_store/Features/BookDetails/Presentaion_Layer/View/SimilarBooksWidget.dart';
import 'package:flutter/material.dart';

class Book_Details extends StatelessWidget {
  static const String book_Details = "Book_Details";
  const Book_Details({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: CustomScrollView(
        shrinkWrap: true,
        slivers: [
          SliverFillRemaining(
            child: SafeArea(
                child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const Book_Details_AppBAr(),
                BookDetaileImage(
                  size: size,
                ),
                SizedBox(
                  height: size.height * .04,
                ),
                BookDetaileText(
                  size: size,
                ),
                SizedBox(
                  height: size.height * .04,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: size.width * 0.05,
                  ),
                  child: PriceAndPreviewWidget(
                    size: size,
                  ),
                ),
                SizedBox(
                  height: size.height * .07,
                ),
                Expanded(
                    child: SimilarBooksWidget(
                  size: size,
                ))
              ],
            )),
          )
        ],
      ),
    );
  }
}
