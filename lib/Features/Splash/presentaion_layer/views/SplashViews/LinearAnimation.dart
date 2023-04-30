import 'package:flutter/material.dart';

class CustomLinearAnimation extends StatelessWidget {
  const CustomLinearAnimation(
      {super.key, required this.animation, required this.widget});
  final Widget? widget;
  final Animation<Offset> animation;

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: animation,
      builder: (BuildContext context, _) {
        return SlideTransition(position: animation, child: widget);
      },
    );
  }
}
