import 'package:book_store/Core/utilits/Constants/Styles.dart';
import 'package:book_store/Core/utilits/Constants/AppColors.dart';
import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';

class Rating_Widget extends StatelessWidget {
  Rating_Widget({
    super.key,
    required this.size,
    required this.mainAxisAlignment, this.averageRating, this.ratingsCount,
  });

  final Size size;
  final double? averageRating;
  final int? ratingsCount;
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
         Text(
         averageRating==null?"(4.0)":averageRating.toString(),
          style: Styles.textStyle14,
        ),
        SizedBox(
          width: size.width * 0.02,
        ),
        Text(
         ratingsCount==null?"3.2k":ratingsCount.toString(),
          style: Styles.textStyle14.copyWith(color: Colors.grey),
        )
      ]),
    );
  }
}
