import 'package:book_store/Core/utilits/Constants/Styles.dart';
import 'package:book_store/Core/utilits/Constants/backgroundColor.dart';
import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';

class Rating_Widget extends StatelessWidget {
  Rating_Widget({
    super.key,
    required this.size,
    required this.mainAxisAlignment,
  });

  final Size size;
  MainAxisAlignment mainAxisAlignment;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Row(mainAxisAlignment: mainAxisAlignment, children: [
        const Icon(
          IconlyBold.star,
          color: kRatinColor,
          size: 20,
        ),
        SizedBox(
          width: size.width * 0.02,
        ),
        const Text(
          "4.8",
          style: Styles.textStyle16,
        ),
        SizedBox(
          width: size.width * 0.02,
        ),
        Text(
          "(2390)",
          style: Styles.textStyle14.copyWith(color: Colors.grey),
        )
      ]),
    );
  }
}
