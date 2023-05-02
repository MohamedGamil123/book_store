import 'package:book_store/Core/utilits/Constants/Styles.dart';
import 'package:book_store/Features/BookDetails/Presentaion_Layer/View/ContainerWithCenterText.dart';
import 'package:flutter/material.dart';

class PriceAndPreviewWidget extends StatelessWidget {
  const PriceAndPreviewWidget({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Row(children: [
      ContainerWithCenterText(
        size: size,
        color: Colors.white,
        isWhiteContainer: true,
        widget: Text(
          "19.99" r"$",
          style: Styles.textStyle18.copyWith(color: Colors.black),
        ),
      ),
      ContainerWithCenterText(
        size: size,
        color: Colors.orange,
        isWhiteContainer: false,
        widget: const Text(
          "Free Preview",
          style: Styles.textStyle18,
        ),
      ),
    ]);
  }
}
