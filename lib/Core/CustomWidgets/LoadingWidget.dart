import 'package:book_store/Core/CustomWidgets/CustomShimmer.dart';
import 'package:flutter/material.dart';

class LoadinWidget extends StatelessWidget {
   LoadinWidget({
    super.key,
    required this.size,
    required this.height,
    required this.width,
    required this.shape,
  });
  double height;
  double width;
  ShapeBorder shape;
  final Size size;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: CustomShimmer.circular(
          height:height,
          width: width,
          shape:
              shape),
    );
  }
}
