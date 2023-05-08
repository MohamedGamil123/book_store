import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class CustomShimmer extends StatelessWidget {
  double height;
  double width;
  ShapeBorder shape;
  CustomShimmer.rectangular({super.key, this.height = 10, this.width = 20})
      : shape = const RoundedRectangleBorder();
  CustomShimmer.circular(
      {super.key,
      this.height = 10,
      this.width = 20,
      this.shape = const CircleBorder()});

  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
      baseColor: Colors.grey.shade900,
      highlightColor: Colors.grey.shade700,
      child: Container(
        height: height,
        width: width,
        decoration: ShapeDecoration(color: Colors.white, shape: shape),
      ),
    );
  }
}
