import 'package:flutter/material.dart';

class ContainerWithCenterText extends StatelessWidget {
  ContainerWithCenterText(
      {super.key,
      required this.size,
      required this.color,
      required this.isWhiteContainer,
      required this.widget});
  bool isWhiteContainer;
  final Size size;
  Color color;
  Widget widget;
  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: Container(
            alignment: Alignment.center,
            height: size.height * 0.06,
            decoration: BoxDecoration(
                color: color,
                borderRadius: isWhiteContainer
                    ? const BorderRadius.only(
                        topLeft: Radius.circular(15),
                        bottomLeft: Radius.circular(15))
                    : const BorderRadius.only(
                        topRight: Radius.circular(15),
                        bottomRight: Radius.circular(15))),
            child: widget));
  }
}
