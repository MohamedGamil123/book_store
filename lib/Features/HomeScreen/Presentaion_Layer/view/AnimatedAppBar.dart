import 'package:book_store/Features/HomeScreen/Presentaion_Layer/view/HomeAppBar.dart';
import 'package:flutter/material.dart';

class AnimatedAppBar extends StatelessWidget {
  const AnimatedAppBar({
    super.key,
    required this.appBarHeight,
  });

  final double appBarHeight;

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      curve: Curves.linear,
        height: appBarHeight,
        duration: const Duration(milliseconds: 150),
        child: const HomeAppBar());
  }
}
