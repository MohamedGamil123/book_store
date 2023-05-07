import 'package:flutter/material.dart';

class LoadinWidget extends StatelessWidget {
  const LoadinWidget({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: AspectRatio(
        aspectRatio: 3 / 5,
        child: Container(
            decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(15)),
                boxShadow: [
                  BoxShadow(
                      color: Colors.grey,
                      blurRadius: 10,
                      offset: Offset(2, 2),
                      spreadRadius: -3)
                ],
                color: Colors.grey),
            child: const SizedBox()),
      ),
    );
  }
}
