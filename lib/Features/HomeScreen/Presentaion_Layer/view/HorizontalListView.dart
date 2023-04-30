import 'package:flutter/material.dart';

class HorizontalListView extends StatelessWidget {
  HorizontalListView({
    super.key,
    required this.size,
    required this.widget,
    required this.isHomeScreen,
  });
  bool isHomeScreen;
  final Size size;
  Widget widget;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: isHomeScreen ? size.height * 0.3 : size.height * 0.18,
      child: ListView.builder(
        physics: const BouncingScrollPhysics(
            decelerationRate: ScrollDecelerationRate.fast),
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        itemCount: 10,
        itemBuilder: (BuildContext context, int index) {
          return widget;
        },
      ),
    );
  }
}
