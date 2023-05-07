import 'package:book_store/Core/utilits/Constants/Styles.dart';
import 'package:book_store/Features/HomeScreen/Presentaion_Layer/view/BookWidget.dart';
import 'package:flutter/material.dart';

class SimilarBooksWidget extends StatelessWidget {
  const SimilarBooksWidget({
    super.key,
    required this.size,
  });

  final Size size;

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
            child: ListView.builder(
              physics: const BouncingScrollPhysics(
                  decelerationRate: ScrollDecelerationRate.fast),
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              itemCount: 10,
              itemBuilder: (BuildContext context, index) {
                return BookWidget(
                  imageUrl:
                      "https://dcist.com/wp-content/uploads/sites/3/2022/12/IMG_7380-1500x1125.jpg",
                  size: size,
                );
              },
            ),
          ),
        )
      ],
    );
  }
}
